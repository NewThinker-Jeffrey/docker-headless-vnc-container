
脚本说明
- 通过 ```./build_ubuntu_xfce.sh``` 和 ```通过 ```./build_ubuntu_icewm.sh```这两个脚本可分别构建出xfce和icewm风格桌面的vnc-server。
- 通过 ```./test_ubuntu_xfce.sh``` 和 ```通过 ```./test_ubuntu_icewm.sh``` 可分别启动相应的container示例，并通过 tigervnc 或web浏览器访问他们的桌面。


> 注意：编译该Docker镜像时需要下载 tigervnc-1.10.0.x86_64.tar.gz，为防止其下载链接失效，将该文件放在了本目录下备用。

当前状态：

- icewm 桌面总是提示crash；
- xfce 通过tigervnc 可连接，但网页不可连接

