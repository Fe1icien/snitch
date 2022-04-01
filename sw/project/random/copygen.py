import numpy as np
import random
import pathlib
from hehe import *
import torch.nn as nn




file_path = pathlib.Path('/home/bsc22f7/project')

file = file_path / 'data.h'


print(file)


def conv2d(ifmap, weights, padding=1, stride=1):
    n, ci, ih, iw = ifmap.shape
    co, _, fh, fw = weights.shape

    conv2d = nn.Conv2d(ci, co, (fh, fw), padding=((fh-1)//2, (fw-1)//2))
    conv2d.weight = nn.Parameter(weights, requires_grad=False)
    conv2d.bias = nn.Parameter(torch.zeros_like(conv2d.bias, dtype=weights.dtype), requires_grad=False)
    ofmap = conv2d(ifmap)

    return ofmap




ifmap = torch.randn(1, 32, 4, 8, requires_grad=False, dtype = torch.float64)

weights = torch.randn(8, 32, 3, 3, requires_grad=False, dtype = torch.float64)

ofmap = conv2d(ifmap, weights,
                       padding=1,
                       stride=1)


ifmap = ifmap.permute(0, 2, 3, 1)
ofmap = ofmap.permute(0, 2, 3, 1)
weights = weights.permute(0, 2, 3, 1)


name = 'conv2d'
kwargs = {'ifmap': ifmap, 'weights': weights, 'ofmap': ofmap}

ifmap = kwargs['ifmap']
ofmap = kwargs['ofmap']
weights = kwargs['weights']

n, ih, iw, ci = ifmap.shape
_, oh, ow, co = ofmap.shape
_, fh, fw, _ = weights.shape

layer_str = ''
layer_str += '#include "layer.h"\n\n'
layer_str += f'conv_layer {name}_l = {{\n'
layer_str += f'\t.CO = {co},\n'
layer_str += f'\t.CI = {ci},\n'
layer_str += f'\t.IH = {ih},\n'
layer_str += f'\t.IW = {iw},\n'
layer_str += f'\t.OH = {oh},\n'
layer_str += f'\t.OW = {ow},\n'
layer_str += f'\t.FH = {fh},\n'
layer_str += f'\t.FW = {fw}\n'
layer_str += '};\n\n\n'


layer_str += f'static double {name}_result[{oh}][{ow}][{co}] __attribute__((section(".data")));\n\n'
layer_str += f'static double {name}_checksum[{oh}][{ow}] = ' + array_to_cstr(torch.sum(ofmap, dim=-1)) + ';\n\n\n'
layer_str += f'static double {name}_ifmap_dram[{ih}][{iw}][{ci}] = ' + array_to_cstr(ifmap) + ';\n\n\n'
layer_str += f'static double {name}_weights_dram[{co}][{ci}][{fh}][{fw}] = ' + array_to_cstr(weights) + ';\n\n\n'
layer_str += f'static double {name}_ofmap_dram[{oh}][{ow}][{co}] = ' + array_to_cstr(ofmap) + ';\n\n\n'



with file.open('w') as f:
	f.write(layer_str)