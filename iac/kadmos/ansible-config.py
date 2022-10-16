from operator import ge
import os
import subprocess
from tokenize import String

def getAddress(): 
    address = subprocess.run(['terraform', 'output', 'apache-vm-address'], stdout=subprocess.PIPE)
    address = str(address.stdout)[2:-3]
    return address

def setAnsibleHosts(address: String):
    file = open('ansible/hosts', 'w')
    file.write('[apache] \n')
    file.write(address + ' ansible_ssh_user=ubuntu \n')
    file.close()
    
setAnsibleHosts(getAddress())


