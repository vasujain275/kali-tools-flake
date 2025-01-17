{
  description = "Development environment with common Kali Linux security tools";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };
  outputs = {
    self,
    nixpkgs,
    flake-utils,
  }:
    flake-utils.lib.eachDefaultSystem (
      system: let
        pkgs = import nixpkgs {
          inherit system;
          config = {
            allowUnfree = true;
            permittedInsecurePackages = [
              "openssl-1.1.1u"
            ];
          };
        };
        python3 = pkgs.python3;
      in {
        devShells.default = pkgs.mkShell {
          buildInputs = with pkgs; [
            # Network Analysis Tools
            wireshark
            nmap
            tcpdump
            netcat-gnu
            socat
            net-snmp
            iftop

            # Web Security Tools
            sqlmap
            nikto
            dirb

            # Wireless Tools
            aircrack-ng
            kismet

            # Forensics Tools
            foremost
            testdisk
            sleuthkit
            ddrescue

            # Password and Crypto Tools
            john
            hashcat
            hydra

            # Information Gathering
            theharvester
            whois
            dnsutils

            # System Tools
            htop
            file
            binutils
            nettools

            # Proxy Tools
            proxychains
            tor
            torsocks

            # Development Tools
            gcc
            gdb
            python3
            python3Packages.pip
            python3Packages.requests
            python3Packages.pwntools

            # Network Tools
            wget
            curl
            openssh
            openssl

            # Shell and Terminal Utilities
            tmux
            zsh
            oh-my-zsh
            git
          ];

          shellHook = ''
            export SHELL=${pkgs.zsh}/bin/zsh

            # Set up aliases for common tools
            alias nmap-quick='nmap -T4 -F'
            alias wireshark-cli='tshark'

            # Create necessary directories if needed
            mkdir -p $HOME/.config/wireshark

            echo "Kali tools environment activated!"
            echo "Type 'help' for a list of available commands."

            # Start Zsh
            exec zsh
          '';
        };
      }
    );
}
