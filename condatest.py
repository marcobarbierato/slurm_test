#/usr/bin/env python

import os
import torch

if torch.cuda.is_available():
    print ('GPU is available')
    dev = "cuda:0" 
else:
    print ('GPU is *NOT* available')
    dev = "cpu" 
device = torch.device(dev) 
a = torch.zeros(4,3) 
a = a.to(device)

print(os.getcwd())

#with open('newfile.txt', 'w+', encoding='UTF-8') as f:
#    f.write(dev)
