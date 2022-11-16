
----------

colmap:

- 通过 ```build_ubuntu_xfce_COLMAP.sh``` 脚本可构建出支持COLMAP编译运行,且带xfce风格桌面的vnc-server。
- 通过 ```./test_ubuntu_xfce_COLMAP.sh``` 可启动相应的container示例，并通过 tigervnc 或web浏览器访问他们的桌面。
- 进入 container 后, clone 下 ceres 和 COLMAP 代码,并cmake编译、安装. 具体见 COLMAP文档: https://colmap.github.io/install.html#linux


----------

脚本说明
- 通过 ```./build_ubuntu_xfce.sh``` 和 ```通过 ```./build_ubuntu_icewm.sh```这两个脚本可分别构建出xfce和icewm风格桌面的vnc-server。
- 通过 ```./test_ubuntu_xfce.sh``` 和 ```通过 ```./test_ubuntu_icewm.sh``` 可分别启动相应的container示例，并通过 tigervnc 或web浏览器访问他们的桌面。


> 注意：编译该Docker镜像时需要下载 tigervnc-1.10.0.x86_64.tar.gz，为防止其下载链接失效，将该文件放在了本目录下备用。



当前状态：

- icewm 桌面总是提示crash；
- xfce 通过tigervnc 可连接，但网页不可连接

-----------

补充说明(新)：
1. 可以认为icewm相关的脚本都废了，用不起来；
2. ```./test_ubuntu_xfce.sh``` 脚本分成了两个
  - ```test_ubuntu_xfce__normal.sh``` 适用于22.04主机,正常case
  - ```test_ubuntu_xfce__special_fix.sh``` 适用于 21.10主机，因为系统问题做了个适配
