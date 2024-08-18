# 使用官方的 Python 镜像作为基础镜像
FROM python:3.10

# 设置环境变量
ENV PYTHONDONTWRITEBYTECODE 1  # 防止 Python 写入 .pyc 文件
ENV PYTHONUNBUFFERED 1  # 防止 Python 输出被缓冲

# 安装依赖项
RUN apt-get update && apt-get install -y \
    build-essential \
    && apt-get clean

# 设置工作目录
WORKDIR /root

# 将当前目录下的所有文件复制到工作目录中

COPY . .

# 安装 Python 依赖
RUN pip install --no-cache-dir -r requirements.txt

# 安装 cpu 版本
RUN pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu121

# 运行 Django 应用时所需的命令
CMD ["python", "main.py"]
