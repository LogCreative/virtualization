sudo -s

# vm 1
pktgen -l 0-1 -n 3 -- -P -m "[1].0"
set 0 dst ip 192.168.122.120
set 0 dst mac 52:54:00:de:b8:46
set 0 count 1000
start 0

# vm 2
./build/l2fwd -c 0x3 -n 4 -- -p 3 -q 1 --no-mac-updating