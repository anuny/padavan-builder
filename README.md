# Github Actions Padavan RM2100

- Padavan源码是[hanwckf/rt-n56u](https://github.com/hanwckf/rt-n56u)。
- 编译目标为Redmi-AC2100
- 默认登陆地址[10.0.0.1](10.0.0.1),登录名admin/admin

### 防火墙ipv6配置参考
- 关闭ipv6防火墙
```
ip6tables -F
ip6tables -X
ip6tables -P INPUT ACCEPT
ip6tables -P OUTPUT ACCEPT
ip6tables -P FORWARD ACCEPT
```
- 允许ipv6防火墙特定端口转发
```
ip6tables -A FORWARD -p tcp --dport 11899 -j ACCEPT
ip6tables -A FORWARD -p udp --dport 11899 -j ACCEPT
```
- 开放ipv6防火墙特定端口80/443
```
ip6tables -A INPUT -p tcp --dport 80 -j ACCEPT
ip6tables -A OUTPUT -p tcp --sport 80 -j ACCEPT
ip6tables -A INPUT -p tcp --dport 443 -j ACCEPT
ip6tables -A OUTPUT -p tcp --sport 443 -j ACCEPT
```
按需选择，添加在`自定义设置——脚本——在防火墙规则启动后执行`
