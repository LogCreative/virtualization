# host
netserver -p 6000

# vm
netperf -H 192.168.152.130 -p 6000 -t TCP_STREAM -l 60