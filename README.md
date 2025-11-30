# Crypto AlgoTrading Framework

加密算法交易项目已经成功现代化重构，完成了以下关键更新：

  🚀 现代化特性

  - 🔨 Python 构建系统: 从 setup.py 迁移到现代的 pyproject.toml，使用 PEP 621 标准
  - 📦 依赖管理: 使用 uv 替代传统的 pip + virtualenv，提供更快的依赖解析和安装
  - 🧹 代码质量: 集成 ruff 进行代码检查、格式化和导入排序
  - 🎯 类型检查: 配置 mypy 进行静态类型分析
  - 🧪 自动化测试: 使用 pytest 和现代化测试配置
  - 🔧 开发工作流: 添加了 Makefile 和 GitHub Actions CI/CD

  📋 更新详情

  Python 版本支持:
  - 支持 Python 3.12 和 3.13 (由于 numpy 兼容性，暂不支持 3.14)

  关键依赖更新:
  - numpy: 1.22 → 2.3.5
  - pandas: 1.2 → 2.3.3
  - matplotlib: 3.3.4 → 3.10.7
  - requests: 2.25.1 → 2.32.5
  - python-binance: 0.7.1 → 1.0.32

  代码质量改进:
  - 移除 Python 2 兼容性代码
  - 修正了可变默认参数问题
  - 修复了重复函数定义
  - 现代化了导入结构
  - 统一了代码格式

  新增开发工具:
  - UV 包管理器配置
  - Ruff 代码检查器
  - Black 代码格式化
  - MyPy 类型检查
  - Pre-commit hooks
  - GitHub Actions CI/CD
  - 现代化 Makefile

  项目现在具备了现代化的 Python 开发工作流，可以通过简单的命令运行测试、检查代码质量和构建包！
  

[![Codacy Badge](https://app.codacy.com/project/badge/Grade/dce868084d344fafa498bf3ff7bf2d81)](https://www.codacy.com/gh/ivopetiz/algotrading/dashboard?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=ivopetiz/algotrading&amp;utm_campaign=Badge_Grade)
[![Codacy Security Scan](https://github.com/ivopetiz/algotrading/actions/workflows/codacy.yml/badge.svg)](https://github.com/ivopetiz/algotrading/actions/workflows/codacy.yml)
[![Build Status](https://travis-ci.com/ivopetiz/algotrading.svg?branch=master)](https://travis-ci.com/ivopetiz/algotrading)
[![Coverage Status](https://coveralls.io/repos/github/ivopetiz/algotrading/badge.svg?branch=master)](https://coveralls.io/github/ivopetiz/algotrading?branch=master)

## 加密算法交易框架 (Python版)

这是一个用于构建和运行加密货币交易机器人、回测策略、辅助交易、定义简单止损和跟踪止损等功能的算法交易框架。该框架可直接从加密货币交易所 API、数据库或 CSV 文件获取数据，适用于数据驱动和事件驱动系统。目前专为加密货币市场开发，使用 Python 编写。

### 主要特性

- **现代化 Python 项目结构** - 采用 pyproject.toml 标准和 PEP 621 规范
- **快速依赖管理** - 使用 uv 替代传统 pip，提供极速依赖解析
- **高质量代码** - 集成 ruff (linting)、black (格式化)、mypy (类型检查)
- **持续集成** - GitHub Actions 自动化测试和代码质量检查
- **灵活部署** - 支持实时交易、逐笔回测、历史回测三种模式

---

## 查看 [快速入门指南](quickstart_guide.md) 立即开始

---

[A Medium story dedicated to this project](https://ivopetiz.medium.com/my-algorithmic-trading-project-f5d2eb2dbb5a)

---

## 目录索引

* [运行模式](#运行模式)
  * [实时交易](#实时交易)
  * [逐笔回测](#逐笔回测)
  * [历史回测](#历史回测)

* [入门指南](#入门指南)
  * [环境要求](#环境要求)

  * [数据收集](#数据收集)
    * [数据库](#数据库)
    * [脚本](#脚本)

* [入场函数](#入场函数)
  * [SMA交叉策略](#sma交叉策略)

* [出场函数](#出场函数)
  * [SMA交叉策略](#sma交叉策略-1)

* [数据可视化](#数据可视化)

* [日志记录](#日志记录)

* [使用示例](#使用示例)
  * [实时监控成交量翻倍](#实时监控成交量翻倍)
  * [BTC-DGB对SMA策略回测](#btc-dgb对sma策略回测)

* [性能优化](#性能优化)

* [开发计划](#开发计划)

* [附加信息](#附加信息)

---

## 运行模式

框架提供三种运行模式：

* **实时交易** - 使用真实数据在实时环境中交易，支持真实资金或模拟模式
* **逐笔回测** - 在实时时间框架中测试策略，用户可以观察入场和出场点
* **历史回测** - 使用历史数据回测策略并展示结果

### 实时交易

在实时模式下，交易机器人使用来自交易所 API 的实时数据运行。无需预存数据或数据库即可工作。此模式下，机器人可以使用真实资金交易、模拟交易或提醒用户何时买卖，基于用户定义的入场和出场策略。也可以模拟用户策略并实时展示结果。

### 逐笔回测

逐笔回测模式允许用户在可见的时间框架内检查策略，更好地观察入场和出场点，或检测策略缺陷以及发现新的入场出场点。使用 CSV 文件或数据库中的数据。

### 历史回测

允许用户使用预存数据回测策略。还可以绘制交易数据，显示已实施策略的入场和出场点。

## 入门指南

### 环境要求

要完全运行算法交易框架，需要安装一些包和 Python 库，如 IPython、Pandas、Matplotlib、Numpy、Python-Influxdb 和 Python-tk。
在 Linux 系统上可以通过以下方式安装：

**推荐方式:**
```bash
# 使用 uv 安装依赖 (推荐)
uv sync

# 或带开发依赖
uv sync --extra dev
```

**传统方式:**
```bash
# 使用 pip 安装依赖
pip install -r requirements.txt
```

### 开发工作流

使用现代化开发工具：
```bash
# 代码检查
uv run ruff check cryptoalgotrading/

# 代码格式化
uv run black cryptoalgotrading/

# 类型检查
uv run mypy cryptoalgotrading/

# 运行测试
uv run pytest test/

# 一键检查所有
make all
```

### 数据收集

第一步是收集数据。要获取市场数据，需要运行数据库来管理和存储所有数据，或将数据保存到 CSV 文件中。
有两种选择：

* 安装和配置数据库
* 运行脚本收集数据并保存到 CSV 文件

#### 数据库

交易机器人已准备好与 InfluxDB 配合使用，但也可以通过一些小改动与其他数据库一起工作。

要安装、配置和使用 InfluxDB 数据库，您可以克隆此仓库：
https://github.com/ivopetiz/crypto-database

#### 脚本

如果您不想安装和管理任何数据库，只想将数据获取到 CSV 文件中，可以使用此 Gist 中的脚本：
https://gist.github.com/ivopetiz/051eb8dcef769e655254df21a093831a

*使用数据库是最佳选择，因为您可以使用数据库工具（如 Chronograf）分析和绘制数据，并且在需要时始终可以提取数据到 CSV。*

## 入场函数

入场函数聚合所有进入特定市场的策略。一旦数据满足进入特定市场的所有要求，就会执行操作。
用户可以在同一调用中使用一个或多个函数，来满足要求并进入市场。
如果可用数据代表用户的入场点，函数应返回 *True*。如果不是，则返回 *False*。
<entry.py> 应聚合所有用户的入场函数。

### 示例

#### SMA交叉策略

如果第一个 SMA 上穿第二个 SMA，函数 <cross_smas> 将返回 *True*。如果没有则返回 *False*。

```python
def cross_smas(data, smas=[5, 10]):
    '''
    Checks if it's an entry point based on crossed smas.
    '''
    if data.Last.rolling(smas[0]).mean().iloc[-1] > \
       data.Last.rolling(smas[1]).mean().iloc[-1] and \
       data.Last.rolling(smas[0]).mean().iloc[-2] < \
       data.Last.rolling(smas[1]).mean().iloc[-2]:
        return True

    return False
```

## 出场函数

出场函数包含所有负责出场策略的函数。当用户在市场内，且数据满足出场标准时，机器人将退出市场。
出场函数可以与其他出场函数一起使用，以涵盖更多情况，如入场函数中所用。
还实现了止损和跟踪止损功能，在意外价格下跌的情况下退出市场。如果可用数据代表用户的出场点，函数应返回 *True*。如果不是，返回应为 *False*。
<exit.py> 应聚合所有用户的出场函数。

示例
---

#### SMA交叉策略

如果第一个 SMA 下穿第二个 SMA，函数 <cross_smas> 将返回 *True*。如果没有则返回 *False*。

```python
def cross_smas(data, smas=[10, 20]):
    '''
    Checks if it's an exit point based on crossed smas.
    '''
    if data.Last.rolling(smas[0]).mean().iloc[-1] < \
       data.Last.rolling(smas[1]).mean().iloc[-1] and \
       data.Last.rolling(smas[0]).mean().iloc[-2] > \
       data.Last.rolling(smas[1]).mean().iloc[-2]:
        return True

    return False
```

## 数据可视化

可以使用 Python 的 Matplotlib 库在函数调用时使用 *plot=True* 选项来绘制入场和出场点以及市场数据。

## 日志记录

可以记录入场和出场点以评估策略，展示特定市场和总体的盈亏 (P&L)。

## 使用示例

以下是一些如何使用此框架的示例。

### 实时监控成交量翻倍

当市场成交量翻倍时获得警报：

```python
from cryptoalgotrading.cryptoalgotrading import realtime
import pandas as pd

def alert_volume_x2(data):
    if data.volume.iloc[-1] > data.volume.iloc[-2]*2:
        return True
    return False

realtime([], alert_volume_x2, interval='10m')
```

*alert_volume_x2* 检查实际市场成交量值并与上一时间框架的成交量值进行比较，当实际市场成交量大于上一时间框架成交量值的2倍时提醒用户。可以在 IPython 或 Jupyter Notebook 中实时添加函数。

### BTC-DGB对SMA策略回测

在特定市场回测简单移动平均交叉策略并绘制入场点：

```python
from cryptoalgotrading.cryptoalgotrading import backtest
import cryptoalgotrading.entry as entry

backtest(["BTC-XRP"], entry.cross_smas, smas=[15,40], interval='10m', from_file=True, plot=True)
```

基于 BTC_XRP 对的市场数据，上述代码可以产生如下输出：

![在BTC-XRP对数据上测试策略](figs/fig2_xrp.png)

该图包含三个图表。顶部图表显示特定时期的 BTC-XRP 数据，带有布林带和3条 SMA 线。绿点表示定义策略的入场点。中间是成交量数据图表，底部表示随时间变化的卖单数量。所有这些字段和图表都可以在 *plot* 函数中配置。

还可以通过向回测函数添加出场函数或函数来添加出场点。
可以输入多个入场和出场函数进行回测，以定义不同的入场和出场位置。

这两个函数在 entry.py 和 exit.py 中作为示例提供。

在 finance.py 中有一些可能有助于实现策略的函数。

## 性能优化

此加密货币算法交易框架可与 PyPy 一起使用，但由于使用了 Pandas 和 Numpy 库，效果可能不是最佳。推荐使用 Python 3.12+ 以获得最佳性能。

## 开发计划

* [x] Python 3 实现与现代化升级
* [x] 现代化构建系统 (pyproject.toml)
* [x] 集成代码质量工具 (ruff, black, mypy)
* [x] GitHub Actions CI/CD
* [ ] Cython 版本
* [ ] 纯 Python For PyPy (无 Pandas 和 Numpy 依赖)

## 附加信息

API 密钥仅在买卖操作时需要。对于回测、逐笔回测和实时监控实现，API 密钥可以留空。

买卖选项已被注释，仅在您了解操作内容时才能使用。

如果您有兴趣使用此机器人但尚未在 Binance 交易所开立账户，请通过我的推荐链接创建账户以支持项目：https://accounts.binance.com/en/register?ref=17181609

---

<p align="center">使用此软件的风险由您自行承担。</p>
