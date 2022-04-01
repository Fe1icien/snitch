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
        print(div)
        result[i] = math.atan(div)         #3rd quadrant will give positive angle (like 1. and 2.) but 4th will give negative angles
        if( a[0][2*i] < 0):
            result[i] += math.pi 
    return result


print(a)

print(magnitude(a))
print("break")
print(angle(a))

#print(multiplication(a,b))
