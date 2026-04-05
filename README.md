# 🛡️ Road-to-CyberSecurity-Master

**Research Orientation**：面向网络空间安全 (Cyberspace Security) 考研的攻防演练与底层协议分析。  
**Academic Philosophy**：通过受控实验（Controlled Experiment）解析现代安全防御体系的脆弱性边界。

## ⚖️ 免责声明 (Ethical Statement & Disclaimer)

1. **合规性**：本项目记录的所有实验内容严格限定于 **隔离的受控实验环境** (Isolated Lab Environment)。
2. **目的性**：仅用于学术研究、考研复试准备及防御性安全技术探讨。
3. **法律遵从**：严禁将本项目提到的技术或思路用于任何非法生产环境。作者坚决拥护《网络安全法》，并倡导 **白帽黑客 (White Hat)** 精神。

## 👨‍💻 项目科研背景 (Research Context)

本项目致力于在备考网安研究生期间，通过工程实践验证网络安全核心理论。研究重点在于分析 **命令与控制 (C2)** 架构 与 **主机防御系统 (HIPS/AV)** 之间的博弈机制。

**核心研究维度**：

- **通信隧道机制 (Tunneling)**：研究基于 TCP/HTTP(S) 协议的流量封装与 NAT 穿透算法。
- **防御模型演进 (Defense Models)**：分析 Windows 访问控制模型 (ACM)、完整性级别 (IL) 以及 UAC 绕过逻辑。
- **恶意行为指纹 (Behavioral Fingerprinting)**：利用流量分析技术捕获并提取特定 C2 框架的通信特征。

## 🔬 实验索引与研究记录 (Lab Index & Research Logs)

本项目采用模块化实验设计，每个子模块均包含：环境拓扑、原理推导、实验复现、包过滤分析。

### 1. 基础实验阶段 (Foundation Phase)

- **Test01**：多维联动架构下的防御削弱机制研究
  - **核心关键词**：AsyncRAT, Metasploit Integration, Registry Policy Manipulation.
  - **研究摘要**：探讨了利用高权限 Agent 对系统注册表 (Registry) 键值进行重写，从而实现对 Windows Defender 实时保护模块的策略性致盲。验证了“两阶段投递”在规避静态特征检测中的有效性。

### 2. 演进实验阶段 (Evolutionary Phase)

- （后续将根据研究进度，针对免杀载荷、内网横向移动等方向进行动态增补...）

## 🎓 考研学术关联 (Academic Linkage)

本项目深度对接 **803/408** 考纲，旨在通过实践固化理论认知：

### 🌐 计算机网络 (Computer Networking)

- **传输层行为分析**：通过 Wireshark 追踪 TCP 有限状态机在 C2 回连过程中的变迁。
- **应用层隐蔽通信**：研究 HTTP 头部字段混淆技术，分析应用层网关（ALG）对特定 Payload 的检测阈值。

### 💻 操作系统 (Operating Systems)

- **权限管理体系**：深入研究 Windows 令牌（Token）机制与进程安全描述符。
- **系统调用与监控**：通过 Registry Modification 实验，理解操作系统内核如何读取并加载全局安全策略。

## 🛠️ 实验平台与工具 (Research Toolkit)

- **Virtualized Infrastructure**：VMware Workstation Pro (Isolated Virtual LAN)
- **Attack Platform**：Kali Linux (Rolling Edition)
- **Analysis Tools**：Wireshark, Process Hacker, Regshot
- **C2 Frameworks**：Metasploit, AsyncRAT (For research only)

---



