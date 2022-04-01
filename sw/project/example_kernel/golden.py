import random
import numpy as np
import pathlib
import torch



# generate random data
# with length as number of values

length = 5
a = torch.randn(1,length)
b = torch.randn(1,length)



# copy from data_gen.py

def array_to_cstr(a):
    out = '{'
    if isinstance(a, np.ndarray):
        a = a.flat
    if isinstance(a, torch.Tensor):
        a = a.numpy().flat
    for el in a:
        out += '{}, '.format(el)
    out = out[:-2] + '}'
    return out


a_str = array_to_cstr(a)
b_str = array_to_cstr(b)
#print(a_str)
#print(b_str)


# calculate multiplication
def multiply(a,b):
    result = a * b
    return result

res = multiply(a,b)
#print(array_to_cstr(res))





# write to data.h

file_path = pathlib.Path('/home/bsc22f7/project')
file = file_path / 'data.h'

layer_str = ''
layer_str += '#include <stdint.h>\n\n'
layer_str += '// input arrays \n'
layer_str += f'static double a [] = ' + array_to_cstr(a) + ';\n\n\n'
layer_str += f'static double b [] = ' + array_to_cstr(b) + ';\n\n\n'
layer_str += '// result array\n'
layer_str += f'static double result [] = ' + array_to_cstr(res) + ';\n\n\n'
layer_str += '// array size\n'
layer_str += f'uint32_t size = ' + str(length) + ';\n\n'


with file.open('w') as f:
    f.write(layer_str)

