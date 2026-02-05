The best works on wayland and x11

We don't need ubuntu tweaks

```
git clone https://github.com/rvaiya/keyd
cd keyd
make
sudo make install
```
```
sudo vi /etc/keyd/default.conf
```
```
[ids]

*

[main]
capslock = overload(hyper, esc)

[hyper]
f = C-right
d = C-d
S-f = C-S-right
g = delete
h = backspace
i = up
S-i = S-up
j = left
S-j = S-left
k = down
S-k = S-down
l = right
S-l = S-right
m = C-S-k
p = p
r = end
s = C-left
S-s = C-S-left
t = C-delete
v = C-v
c = C-c
x = C-x
z = C-z
w = home
y = C-backspace
```
