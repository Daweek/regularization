import os
import sys
args = ' '.join(map(str,sys.argv[1:]))
command = f'mpiexec -np 4 python regularization.py {args}'
print(command)
os.system(command)