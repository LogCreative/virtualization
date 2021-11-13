import libvirt
conn = libvirt.open("qemu:///system")
for id in conn.listDomainsID():
    domain = conn.lookupByID(id)
    print("---------------------------------")
    print("VM ID\t\t%s" % domain.UUIDString())
    print("VM Name\t\t%s" % domain.name())
    print("VM Max Memory\t%d" % domain.maxMemory())
    print("VM vCPUs\t%d" % domain.maxVcpus())
conn.close()