python -m venv venv

.\venv\Scripts\Activate.ps1

# 安装 Python 依赖
pip install -r requirements.txt

# 安装 CPU 版本的 PyTorch、TorchVision 和 Torchaudio
pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu121
