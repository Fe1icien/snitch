import numpy as np
import matplotlib.pyplot as plt


# Fs = 100
# tstep = 1/ Fs
# f0 = 10

# N = int(Fs / f0)
# t = np.linspace(0,(N-1)*tstep,N)
# fstep = Fs / N
# f = np.linspace(0,(N-1)*fstep,N)

# w = 2*np.pi*f0
# y1 = 2*np.sin(w*t)

# dt = 1

Fs = 1
N = 4
tstep = 1/ Fs
t = np.linspace(0,(N-1)*tstep,N)
fstep = Fs / N
f = np.linspace(0,(N-1)*fstep,N)
y1 = [0,100,200,300]


y = y1

result = np.fft.fft(y)
res = np.abs(result)

# f_plot = f[0:int(N/2+1)]
# res_mag_plot = 2 * res[0:int(N/2+1)]
# res_mag_plot[0] = res_mag_plot[0] / 2

# fig, [ax1,ax2] = plt.subplots(nrows=2, ncols=1)
# ax1.plot(t, y)
# ax2.plot(f_plot, res_mag_plot)
fig, [ax1,ax2,ax3] = plt.subplots(nrows=3, ncols=1)
ax1.plot(t, y)
ax2.plot(f, result)
ax3.plot(f, res)

plt.show()
