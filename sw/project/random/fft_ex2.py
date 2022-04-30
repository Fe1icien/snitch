import numpy as np
import matplotlib.pyplot as plt
plt.style.use('seaborn-whitegrid')
import time
from cmath import exp, pi

def FFT(f):
    N = len(f)
    if N <= 1:
        return f
    

    even = FFT(f[0::2])
    odd =  FFT(f[1::2])
    
    temp = np.zeros(N).astype(np.complex64)

    for u in range(N//2):
        temp[u] = even[u] + exp(-2j*pi*u/N) * odd[u]
        temp[u+N//2] =even[u] - exp(-2j*pi*u/N) * odd[u]
    
    return temp

f = [0,100,200,300]
N = len(f) + 4
for u in range(N//2):
     print(u)
     print(u+N//2)























# F_fft = FFT(f)
# print(F_fft)


# x1 = np.linspace(0,300,4)
# x2 = np.linspace(0,300,10)
# x3 = np.linspace(0,300,1500)
# # print(x1)
# # print(x2)
# # w = 2 * pi /10
# w = 2 * pi
# y1 = np.sin(w*x1)
# y2 = 0.1 * np.sin(0.1*w*x3)
# y3 = np.sin(w*x3)
# y4 = y3 + y2

# F_fft = FFT(y1)
# F_fft2 = FFT(y2)
# F_fft3 = FFT(y4)
# # print(F_fft)
# #print(len(F_fft))
# #print(y)

# fig, [ax1,ax2,ax5,ax6] = plt.subplots(nrows=4, ncols=1)
# ax1.plot(x1, y1, "o", markersize=2, color='black')
# ax2.plot(x1, F_fft, "o", markersize=2, color='black')
# ax5.plot(x3, y4, "o", markersize=2, color='black')
# ax6.plot(x3, abs(F_fft3), "o", markersize=2, color='black')
# plt.show()