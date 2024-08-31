@echo off

:: 检查是否提供了项目名称参数
if "%1"=="" (
    echo 请提供 Hugging Face 项目名称作为参数。
    echo 用法: download.bat 项目名称
    echo 例如: download.bat XLabs-AI/flux-controlnet-hed-v3
    exit /b 1
)

:: 设置项目名称
set "PROJECT_NAME=%~1"

:: 执行 huggingface-cli download 命令
huggingface-cli download %PROJECT_NAME% --revision main --local-dir .\download\%PROJECT_NAME%

echo 下载完成: %PROJECT_NAME%
