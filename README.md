# vscode-vcpkg-template
vscode C++项目模板

## 安装vcpkg
```bash
git clone https://github.com/Microsoft/vcpkg.git
cd vcpkg
./bootstrap-vcpkg.sh
./vcpkg integrate install

# 添加环境变量
export PATH=$PATH:/path/to/vcpkg
# 或者创建软链接
sudo ln -s /path/to/vcpkg/vcpkg /usr/bin/vcpkg
export VCPKG_ROOT=/path/to/vcpkg

```

## 安装依赖
```bash
vcpkg install fmt
```

vscode 安装 `CMAKE Tools`, `C/C++`, `CMAKE` 插件，配置 CMakeLists.txt

## 编译运行

- 使用shell脚本
```bash
chmod +x ./start.sh
./start.sh
```

- 使用`cmake`插件自动配置编译

![](https://pan.lmio.xyz/pic/716ca2d72e795f1c56a0ffc036a504f2.png)