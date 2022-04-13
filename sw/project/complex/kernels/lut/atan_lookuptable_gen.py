from cmath import pi
import math
import pathlib


# 0-1.5 0.01
# 1.5-5 0.1
# 5-10 0.5
# 10-30 1
# 30-.. =pi

file_path = pathlib.Path('C:\\Users\\ndozi\\bachelor\\snitch\\sw\\project\\complex\\kernels')
file = file_path / 'atan_lookuptable.h'


lut_str = ''
lut_str += '#include <stdint.h>\n\n'
lut_str += '//size = \n\n'
lut_str += 'static const double lookup[] = { \n'


i = -40
j = 1
while(i < -10):
    lut_str += str(math.atan(i)) + ', '
    if(j == 10):
        lut_str += '\n'
        j = 0
    j += 1
    i += 1
while(i < -5):
    lut_str += str(math.atan(i)) + ', '
    if(j == 10):
        lut_str += '\n'
        j = 0
    j += 1
    i += 0.5
while(i < -1.6):
    lut_str += str(math.atan(i)) + ', '
    if(j == 10):
        lut_str += '\n'
        j = 0
    j += 1
    i += 0.1
while(i < 1.5):
    lut_str += str(math.atan(i)) + ', '
    if(j == 10):
        lut_str += '\n'
        j = 0
    j += 1
    i += 0.01
while(i < 5):
    lut_str += str(math.atan(i)) + ', '
    if(j == 10):
        lut_str += '\n'
        j = 0
    j += 1
    i += 0.1
while(i < 10):
    lut_str += str(math.atan(i)) + ', '
    if(j == 10):
        lut_str += '\n'
        j = 0
    j += 1
    i += 0.5
while(i < 40):
    lut_str += str(math.atan(i)) + ', '
    if(j == 10):
        lut_str += '\n'
        j = 0
    j += 1
    i += 1
lut_str += str(pi/2) + '\n'
lut_str += '}; \n'

with file.open('w') as f:
    f.write(lut_str)
