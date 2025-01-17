# 🛡️ Kali Linux Tools Development Environment

[![NixOS](https://img.shields.io/badge/NixOS-5277C3?style=for-the-badge&logo=nixos&logoColor=white)](https://nixos.org)
[![Nix Flakes](https://img.shields.io/badge/Nix-Flakes-blue.svg?style=for-the-badge&logo=nixos&logoColor=white)](https://nixos.wiki/wiki/Flakes)
[![Security Tools](https://img.shields.io/badge/Security-Tools-red.svg?style=for-the-badge&logo=security&logoColor=white)](https://github.com/vasujain275/kali-tools-nix)
[![License](https://img.shields.io/badge/license-MIT-green.svg?style=for-the-badge)](LICENSE)

A comprehensive Nix development environment providing popular security and penetration testing tools from Kali Linux. Access powerful security tools instantly with reproducible environments using Nix flakes.

## 📋 Prerequisites

### Installing Nix Package Manager

#### macOS
```bash
sh <(curl -L https://nixos.org/nix/install)
```
[Detailed macOS Installation Guide](https://nixos.org/manual/nix/stable/installation/installing-binary.html#macos-installation)

#### Ubuntu/Debian
```bash
sh <(curl -L https://nixos.org/nix/install) --daemon
```
[Detailed Linux Installation Guide](https://nixos.org/manual/nix/stable/installation/installing-binary.html#linux-installation)

#### Enable Flakes
Add to `~/.config/nix/nix.conf` (create if doesn't exist):
```bash
experimental-features = nix-command flakes
```

## 🚀 Quick Start

```bash
# Clone the repository
git clone https://github.com/vasujain275/kali-tools-nix.git
cd kali-tools-nix

# Enter the development environment
nix develop
```

## 🛠️ Included Tools

### Network Analysis
- [![Wireshark](https://img.shields.io/badge/Wireshark-1679A7?style=flat-square&logo=wireshark&logoColor=white)](https://www.wireshark.org/) Network protocol analyzer
- [![Nmap](https://img.shields.io/badge/Nmap-2E3842?style=flat-square)](https://nmap.org/) Network scanning
- [![TCPDump](https://img.shields.io/badge/TCPDump-000000?style=flat-square)](https://www.tcpdump.org/) Packet analyzer
- [![NetCat](https://img.shields.io/badge/NetCat-4A90E2?style=flat-square)](https://netcat.sourceforge.net/) Networking utility

### Web Security
- [![SQLMap](https://img.shields.io/badge/SQLMap-CC2927?style=flat-square)](https://sqlmap.org/) SQL injection
- [![Nikto](https://img.shields.io/badge/Nikto-FF6B6B?style=flat-square)](https://cirt.net/Nikto2) Web server scanner
- [![Dirb](https://img.shields.io/badge/Dirb-40E0D0?style=flat-square)](https://dirb.sourceforge.net/) Web content scanner

### Wireless
- [![Aircrack-ng](https://img.shields.io/badge/Aircrack--ng-00C7B7?style=flat-square)](https://www.aircrack-ng.org/) Wireless security
- [![Kismet](https://img.shields.io/badge/Kismet-FFA500?style=flat-square)](https://www.kismetwireless.net/) Wireless network detector

### Forensics
- [![Foremost](https://img.shields.io/badge/Foremost-777BB4?style=flat-square)](http://foremost.sourceforge.net/) Data recovery
- [![TestDisk](https://img.shields.io/badge/TestDisk-67B246?style=flat-square)](https://www.cgsecurity.org/wiki/TestDisk) Data recovery
- [![Sleuthkit](https://img.shields.io/badge/Sleuthkit-2496ED?style=flat-square)](https://www.sleuthkit.org/) Digital forensics

### Password & Crypto
- [![John](https://img.shields.io/badge/John%20The%20Ripper-FF0000?style=flat-square)](https://www.openwall.com/john/) Password cracker
- [![Hashcat](https://img.shields.io/badge/Hashcat-FF69B4?style=flat-square)](https://hashcat.net/hashcat/) Password recovery
- [![Hydra](https://img.shields.io/badge/Hydra-4B0082?style=flat-square)](https://github.com/vanhauser-thc/thc-hydra) Login cracker

## 🔄 Usage Examples

### Network Scanning
```bash
# Quick network scan
nmap-quick 192.168.1.0/24

# Start Wireshark
wireshark
```

### Password Cracking
```bash
# Hash cracking with John
john hash.txt

# GPU-accelerated cracking with Hashcat
hashcat -m 0 hash.txt wordlist.txt
```

## 🎨 Customization

Modify the `flake.nix` file to add or remove tools based on your needs:

```nix
buildInputs = with pkgs; [
  # Add your desired tools here
  your-custom-tool
];
```

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## ⚠️ Disclaimer

These tools are provided for educational and professional security testing purposes only. Users are responsible for ensuring they comply with all applicable laws and regulations in their jurisdiction.

## 🌟 Star History

[![Star History Chart](https://api.star-history.com/svg?repos=vasujain275/kali-tools-nix&type=Date)](https://star-history.com/#vasujain275/kali-tools-nix&Date)

---
<div align="center">

Made with ❤️ using [Nix](https://nixos.org) by [Vasu Jain](https://github.com/vasujain275)

[![GitHub followers](https://img.shields.io/github/followers/vasujain275?style=social)](https://github.com/vasujain275)
[![Twitter Follow](https://img.shields.io/twitter/follow/vasujain275?style=social)](https://twitter.com/vasujain275)
</div>
