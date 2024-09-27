# 建立仓库(respository),使用git,提交代码
### 1. 安装`git`
安装git命令。
```bash
sudo apt-get install git
```
### 建立github或者gitee账号创建库

### github使用密钥对
#### 使用 **SSH**
你可以通过 SSH 密钥来进行身份验证，这也是 GitHub 推荐的安全认证方式。

**步骤：**
1. **生成 SSH 密钥**：
   - 在你的终端中运行以下命令（如果你还没有现有的 SSH 密钥）：
     ```bash
     ssh-keygen -t ed25519 -C "your_email@example.com"
     ```
   - 按照提示操作，生成的密钥将位于 `~/.ssh/` 目录下。

2. **将 SSH 公钥添加到 GitHub**：
   - 运行以下命令以查看公钥内容：
     ```bash
     cat ~/.ssh/id_ed25519.pub
     ```
   - 复制显示的公钥。
   - 前往 GitHub 的 [SSH and GPG keys](https://github.com/settings/keys) 页面，点击 "New SSH key"，并粘贴公钥。

3. **使用 SSH 方式克隆**：
   - 使用 SSH URL 克隆仓库：
     ```bash
     git clone git@github.com:neomakers/Research.git
     ```

### gitee建立密钥对
 过程相同，但是细微有不一样。具体可以产看链接：https://help.gitee.com/base/account/SSH%E5%85%AC%E9%92%A5%E8%AE%BE%E7%BD%AE
