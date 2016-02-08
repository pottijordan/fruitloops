#!/usr/bin/expect -f
spawn ssh 172.20.241.100
expect "assword:"
send "P@ssw0rd\r"
interact
set cli scripting-mode on
configure
set deviceconfig system permitted-ip 172.20.241.0/24
set deviceconfig system service disable-telnet yes
set deviceconfig system login-banner AuthorizedAccessOnly
set network profiles zone-protection-profile Default discard-overlapping-tcp-segment-mismatch yes discard-unknown-option yes tcp-reject-non-syn yes flood tcp-syn enable yes syn-cookies maximal-rate 500
set network profiles zone-protection-profile Default flood icmp enable yes
set network profiles zone-protection-profile Default flood udp enable yes
set network profiles zone-protection-profile Default flood other-ip enable yes
set network profiles zone-protection-profile Default flood icmpv6 enable yes
set rulebase security rules CentOSin action allow from Public to Internal-DMZ source any destination 199.17.40.111 profile-setting profiles spyware strict virus default vulnerability strict
set rulebase security rules CentOSin application ssl service application-default
set rulebase security rules CentOSin application web-browsing service application-default
set rulebase security rules UbuntuDNSin action allow from Public to Internal-DMZ source any destination 199.17.40.116 profile-setting profiles spyware strict virus default vulnerability strict
set rulebase security rules UbuntuDNSin application dns service application-default
set rulebase security rules 2012WAin action allow from Public to Internal-Server source any destination 199.17.40.112 profile-setting profiles spyware strict virus default vulnerability strict
set rulebase security rules 2012WAin application ssl service application-default
set rulebase security rules 2012WAin application web-browsing service application-default
set rulebase security rules DEBIANin action allow from Public to Internal-Server source any destination 199.17.40.113 profile-setting profiles spyware strict virus default vulnerability strict
set rulebase security rules DEBIANin application web-browsing service application-default
set rulebase security rules DEBIANin application smtp service application-default
set rulebase security rules DEBIANin application pop3 service application-default
set rulebase security rules DEBIANin application ssl service application-default
set rulebase security rules DEBIANin application imap service application-default
set rulebase security rules 2008DNSin action allow from Public to Internal-Server source any destination 199.17.40.114 profile-setting profiles spyware strict virus default vulnerability strict
set rulebase security rules 2008DNSin application dns service application-default
set rulebase security rules DMZout-CentOS action allow from Internal-DMZ to Public source 172.20.240.11 destination any profile-setting profiles spyware strict virus default vulnerability strict
set rulebase security rules DMZout-CentOS application ssl service application-default
set rulebase security rules DMZout-CentOS application ftp service application-default
set rulebase security rules DMZout-CentOS application web-browsing service application-default
set rulebase security rules DMZout-Ubuntu action allow from Internal-DMZ to Public source 172.20.240.23 destination any profile-setting profiles spyware strict virus default vulnerability strict
set rulebase security rules DMZout-Ubuntu application dns service application-default
set rulebase security rules DMZout-Ubuntu application web-browsing service application-default
set rulebase security rules DMZout-Ubuntu application ssl service application-default
set rulebase security rules DMZout-Ubuntu application apt-get service application-default
set rulebase security rules SERVERout-2012WAout action allow from Internal-Server to Public source 172.20.241.9 destination any profile-setting profiles spyware strict virus default vulnerability strict
set rulebase security rules SERVERout-2012WAout application web-browsing service application-default
set rulebase security rules SERVERout-2012WAout application ssl service application-default
set rulebase security rules SERVERout-2008AD action allow from Internal-Server to Public source 172.20.241.27 destination any profile-setting profiles spyware strict virus default vulnerability strict
set rulebase security rules SERVERout-2008AD application ssl service application-default
set rulebase security rules SERVERout-2008AD application dns service application-default
set rulebase security rules SERVERout-2008AD application web-browsing service application-default
set rulebase security rules SERVERout-WinDB action allow from Internal-Server to Public source 172.20.241.97 destination any profile-setting profiles spyware strict virus default vulnerability strict
set rulebase security rules SERVERout-WinDB application web-browsing service application-default
set rulebase security rules SERVERout-WinDB application ssl service application-default
set rulebase security rules SERVERout-Debian action allow from Internal-Server to Public source 172.20.241.39 destination any profile-setting profiles spyware strict virus default vulnerability strict
set rulebase security rules SERVERout-Debian application pop3 service application-default
set rulebase security rules SERVERout-Debian application imap service application-default
set rulebase security rules SERVERout-Debian application smtp service application-default
set rulebase security rules SERVERout-Debian application ssl service application-default
set rulebase security rules SERVERout-Debian application web-browsing service application-default
set rulebase security rules SERVERdmz-WinDB action allow from Internal-Server to Public source 172.20.241.97 destination 172.20.240.11 profile-setting profiles spyware strict virus default vulnerability strict
set rulebase security rules SERVERdmz-WinDB application mysql service application-default
set rulebase security rules SERVERdmz-WinDB action allow from Internal-Server to Public source 172.20.241.97 destination 172.20.240.11 profile-setting profiles spyware strict virus default vulnerability strict
set rulebase security rules SERVERdmz-WinDB application ssl service application-default
set rulebase security rules SERVERdmz-WinDB application web-browsing service application-default
commit
