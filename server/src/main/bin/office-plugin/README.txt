离线安装 LibreOffice/OpenOffice RPM 包使用说明

1) 将 LibreOffice/OpenOffice 的所有 rpm 包放入本目录（与 install-office.sh 同级）。
2) 执行：sh install-office.sh
3) 如需指定 office.home，请在 config/application.properties 中设置 office.home=/usr/lib64/libreoffice（或你的安装路径）。
4) 安装完成后，重新启动 kkFileView。

提示：脚本会遍历当前目录下所有 *.rpm 逐个安装，若不存在 rpm 包会直接退出。

