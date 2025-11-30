# 快速入门指南

按照此指南开始使用本仓库。

## 环境要求

- Linux 发行版（已在 Ubuntu 20.04 LTS 上测试）
- Python 3.12+（已在 Python 3.12-3.13 上测试）
- IPython3 / Jupyter Notebook
- uv（现代 Python 包管理器）- [安装指南](https://docs.astral.sh/uv/getting-started/installation/)
- Git
- 可选：make（用于简化命令）

## 步骤

### 克隆仓库

```bash
git clone git@github.com:ivopetiz/algotrading.git
```

### 进入项目目录

```bash
cd algotrading
```

### 现代化安装方式（推荐）

本框架已采用现代化的 Python 开发流程：

#### 安装依赖（开发模式）
```bash
# 同步所有依赖（包括开发依赖）
uv sync --extra dev

# 或者只安装运行时依赖
uv sync
```

#### 验证安装并运行测试
```bash
# 运行代码质量检查
uv run ruff check cryptoalgotrading/ test/

# 运行格式化检查
uv run black --check cryptoalgotrading/ test/

# 运行类型检查
uv run mypy cryptoalgotrading/

# 运行测试
uv run pytest test/ -v

# 或使用 make 命令（推荐）
make all  # 执行所有检查
```

### 传统安装方式（备选）

如果 prefer 传统方式，也可以使用 pip：

```bash
# 创建虚拟环境
python3.12 -m venv env
source env/bin/activate

# 安装依赖
pip install -r requirements.txt
```

### 获取 Binance API 密钥

  - [如果您还没有账户，可以在此创建 Binance 交易账户](https://www.binance.com/en/activity/referral/offers/claim?ref=CPA_004GZBGTP3&utm_campaign=web_share_copy)

  - [获取 Binance API 密钥](https://www.binance.com/en/my/settings/api-management)

### 将密钥添加到操作系统环境变量

    ```bash
    export BINANCE_API_KEY=<您的_api_密钥>
    export BINANCE_API_SECRET=<您的_api_密钥>
    ```

### 在实时模式下运行加密算法交易（模拟资金模式）

    ```python
    import cryptoalgotrading.entry as entries
    import cryptoalgotrading.exit as exits
    import cryptoalgotrading.cryptoalgotrading as cat

    cat.realtime('binance', 
        entries.cross_smas, 
        exits.cross_smas, 
        interval='1m', 
        refresh_interval=60)
    ```

您可以在 Jupyter notebook、IPython 或作为 Python 脚本运行上述脚本。

### 开发和测试新策略（推荐流程）

```bash
# 开发过程中持续检查代码质量
make lint        # 代码检查
make format      # 自动格式化
make type-check  # 类型检查
make test        # 运行测试

# 或者一键执行所有检查
make all
```

### 获取结果

  - 将在当前目录中创建一个名为 `indicators.log` 的文件
  - 可以使用 `tail -f indicators.log` 命令实时监控

### 下一步：
  
  - 创建您自己的入场和出场交易策略
  - 在回测模式下测试您的策略
  - 在真实资金模式下运行

### 现代化开发功能

本框架现有的现代化特性：

- ✅ **uv 包管理器** - 比 pip 快10-100倍的依赖安装
- ✅ **ruff 代码检查** - 超快速 Python linter
- ✅ **black 代码格式化** - 一致的代码风格
- ✅ **mypy 类型检查** - 静态类型分析
- ✅ **GitHub Actions CI** - 自动测试和代码质量检查
- ✅ **make 工作流** - 简化开发命令
