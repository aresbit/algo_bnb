# 更新日志

## 2025-11-30 - Python 现代化升级

* **用户可见的改进:**
  * 🏗️ 采用 **pyproject.toml** (PEP 621) 标准构建系统，替代过时的 setup.py
  * 📦 迁移至 **uv** 包管理器，提供比 pip 快10-100倍的依赖安装速度
  * 🎯 支持 **Python 3.12 和 3.13**，提升性能和安全性
  * 🔧 添加 **Makefile**，简化开发工作流
  * ⚡ 显著依赖项升级：numpy (1.22→2.3.5)，pandas (1.2→2.3.3)，matplotlib (3.3.4→3.10.7)

* **代码质量提升:**
  * 🧹 集成 **ruff** - 超快速代码检查和格式化
  * 🎨 集成 **black** - 一致代码格式自动化
  * 🔍 集成 **mypy** - 静态类型检查
  * ✅ 新增 **pre-commit hooks** - git 提交前自动代码检查
  * 🧪 升级至 **pytest** 8.0+，支持更全面的测试配置

* **开发工作流现代化:**
  * 🔄 新增 **GitHub Actions CI/CD** - 自动化测试、代码质量检查、构建
  * 📊 集成代码覆盖率报告和类型检查
  * 🚀 一键命令 (`make all`) 执行所有代码质量检查
  * 🔧 uv.lock 文件确保可重现的依赖构建

* **代码改进:**
  * 🧹 清理 Python 2 兼容性代码和遗留导入
  * 🐛 修复可变默认参数和重复函数定义问题
  * 📁 现代化项目结构和导入模式
  * 🔄 统一代码风格遵循 PEP 标准

* **向后兼容性:**
  * ✅ 保持 API 向后兼容
  * ✅ 现有策略代码无需修改即可运行
  * ✅ 支持传统 pip 安装方式作为备选方案

## 2020-02-22

*   Support for Python3

## 2019-10-20

*   Added Cache system to reduce time and DB accesses.

## 2019-03-16

*   Implemented Binance #3

## 2019-01-29

*   Added HDF5 Filetype support.

## 2019-01-03

*   Added Codecy badge.
*   Implemented new unit tests to more aux funcs. 

## 2018-11-24

*   Improved performance on csv reading method.
*   Added count_lines func and its test func.
*   Minor changes in log system.
*   Decorators replaced to run inside lib.

## 2018-09-25

*   Added new unittests for backtest, backtest_market, etc.

## 2018-09-24

*   New file management system to improve multiprocessing analysis.
*   Added decorator to prevent fatal faults in data analysis.
*   Added new options to define system performance.
*   Fixed concurrent writing.
*   Improved log system and info.

## 2018-09-13

*   Fixed setup.py for Travis-CI builds.

## 2018-09-12

*   Introduced unittests fr aux.py functions.
*   Added support for coveralls.io.
*   Corrected some bugs related to realtime mode.

## 2018-09-09

*   Added real buy and sell functions.
*   Implemented basic Risk Management module.
*   Added get_order func to lib_bittrex.
*   Improved performance in realtime func.
*   Removed unused imported functions.

## 2018-08-26

*   Added Trailing Stop Loss function.
*   Added Stop Loss function.
*   Started introducing framework to work with Binance Exchange.
*   Added Travis CI file for building tests.

## 2018-08-06

*   Added timeit decorator to control backtests execution time.
*   Backtest() runs based on market files.
*   Implemented backtest() with multiprocessing.

## 2018-07-28

*   Added setup.py.
*   Added OpenSellOrders and OpenBuyOrders to get_last_data().
*   Added menu to README.md.
*   Fixed error with OpenSellOrders and OpenBuyOrders in realtime().
*   Added filter realtime() by main market.
