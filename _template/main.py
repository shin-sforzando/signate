import os
from torch import nn, optim, utils, Tensor
from torchvision import transforms
from torchvision.datasets import MNIST
import pytorch_lightning as pl


encoder = nn.Sequential(nn.Linear(28 * 28, 64), nn.ReLU(), nn.Linear(64, 3))
decoder = nn.Sequential(nn.Linear(3, 64), nn.ReLU(), nn.Linear(64, 28 * 28))


class LitAutoEncoder(pl.LightningModule):
    def __init__(self, encoder, decoder):
        super().__init__()
        self.encoder = encoder
        self.decoder = decoder

    def training_step(self, batch, batch_idx):
        x, y = batch
        x = x.view(x.size(0), -1)
        z = self.encoder(x)
        x_hat = self.decoder(z)
        loss = nn.functional.mse_loss(x_hat, x)
        # Logging to TensorBoard by default
        self.log("train_loss", loss)
        return loss

    def configure_optimizers(self):
        optimizer = optim.Adam(self.parameters(), lr=1e-3)
        return optimizer


# init model
lae = LitAutoEncoder(encoder, decoder)

# setup data
dataset = MNIST(os.getcwd(), download=True, transform=transforms.ToTensor())
train_loader = utils.data.DataLoader(dataset)

# train the model
trainer = pl.Trainer(min_epochs=5, max_epochs=100, overfit_batches=1)
trainer.fit(model=lae, train_dataloaders=train_loader)

# load checkpoint
checkpoint = "./lightning_logs/version_2/checkpoints/epoch=99-step=10000.ckpt"
lae = LitAutoEncoder.load_from_checkpoint(checkpoint, encoder=encoder, decoder=decoder)

# choose your trained nn.Module
encoder = lae.encoder
encoder.eval()

# embed 4 fake images!
fake_image_batch = Tensor(4, 28 * 28)
embeddings = encoder(fake_image_batch)

print(f"{'⚡' * 20}\nPredictions (4 image embeddings):\n{embeddings}\n{'⚡' * 20}")
