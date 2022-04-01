import numpy as np
import pathlib
import torch
import math



# generate random data
# even index is the real part and odd index following is the imaginary part
# with length as number of values


length = 4
a = torch.randn(1,length*2)
b = torch.randn(1,length*2)


# change the parentheses

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



a_cstr = array_to_cstr(a)
b_cstr = array_to_cstr(b)




# CALCULATIONS
# calculate addition

def addition(a,b):
    result = a + b
    return result

# calculate multiplication


def multiplication(a,b):
	result = torch.zeros(length*2)
	for i in range(length):
		result[2*i] = a[0][2*i] * b[0][2*i] - a[0][2*i + 1] * b[0][2*i + 1]
		result[2*i + 1] = a[0][2*i] * b[0][2*i + 1] + a[0][2*i + 1] * b[0][2*i]
	return result



def magnitude(a):
    result = torch.zeros(length)
    for i in range(length):
        result[i] = math.sqrt(a[0][2*i]**2 + a[0][2*i + 1]**2)
    return result


def angle(a):
    result = torch.zeros(length)
    for i in range(length):
        div = a[0][2*i + 1] / a[0][2*i]
        result[i] = math.atan(div)         #3rd quadrant will give positive angle (like 1. and 2.) but 4th will give negative angles
        if( a[0][2*i] < 0):
            result[i] += math.pi 
    return result


#print(array_to_cstr(addition(a,b)))
# print(magnitude(a))
# print("break")
# print(angle(a))
def polar(a):
    re1 = magnitude(a)
    re2 = angle(a)
    re3 = torch.zeros(2 * length)
    for i in range(length):
        re3[2*i] = re1[i]
        re3[2*i + 1] = re2[i]
    return re3

# print(a)
# print(re1)
# print(re2)
# print(polar(a))
# print(multiplication(a,b))



# write to data.h

file_path = pathlib.Path('/home/bsc22f7/scratch/snitch/sw/project/complex')
file = file_path / 'complex_data.h'

data_str = ''
data_str += '#include <stdint.h>\n\n'
data_str += '// input arrays of the form {real, imag,...}\n'
data_str += f'static double a [] = ' + array_to_cstr(a) + ';\n\n\n'
data_str += f'static double b [] = ' + array_to_cstr(b) + ';\n\n\n'
data_str += '// addition result array of the form {real, imag,...}\n'
data_str += f'static double add_array [] = ' + array_to_cstr(addition(a,b)) + ';\n\n\n'
data_str += '// multiplication result array of the form {real, imag,...}\n'
data_str += f'static double mul_array [] = ' + array_to_cstr(multiplication(a,b)) + ';\n\n\n'
data_str += '// polar result array of the form {mag, angle,...}\n'
data_str += f'static double polar_array [] = ' + array_to_cstr(polar(a)) + ';\n\n\n'
data_str += '// array size\n'
data_str += f'uint32_t size = ' + str(2 * length) + ';\n\n'


with file.open('w') as f:
    f.write(data_str)