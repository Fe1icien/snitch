import math
import pathlib

# 0-1  0.02
# 1-10  0.1
# 10-.. 1

file_path = pathlib.Path('C:\\Users\\ndozi\\bachelor\\snitch\\sw\\project\\complex\\kernels\\lut')
file = file_path / 'sqrt_lookuptable.h'


lut_str = ''
lut_str += '#include <stdint.h>\n\n'
lut_str += '//size = \n\n'
lut_str += 'static const double lookup[] = { \n'

i = 0
j = 1
k = 0


while(i < 1):
    lut_str += str(math.sqrt(i)) + ', '
    if(j == 10):
        lut_str += '\n'
        j = 0
    j += 1
    i += 0.02
    k += 1
print(k)
while(i < 10):
    lut_str += str(math.sqrt(i)) + ', '
    if(j == 10):
        lut_str += '\n'
        j = 0
    j += 1
    i += 0.1
    k += 1
print(k)
k = 0
while(i < 50):
    lut_str += str(math.sqrt(i)) + ', '
    if(j == 10):
        lut_str += '\n'
        j = 0
    j += 1
    i += 1
    k += 1

lut_str += str(math.sqrt(i))
k += 1
print(k)
lut_str += ' }; \n'

with file.open('w') as f:
    f.write(lut_str)

