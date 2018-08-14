#!/bin/python

import numpy as np

g = 9.81
m = 0.1
k = 1
v = 0.2

ext0 = m * g / k
ext = ext0
xball = 0
vball = 0
aball = 0
deltaT = 0.001

with open('data.dat', 'w+') as f:
	for t in np.arange(0.00, 20.0, deltaT):
		aball = (k * ext) - (m * g)
		vball += aball*deltaT
		xball += vball*deltaT

		ext = ext0 + (v * t) - xball
		f.write("{:f}\t{:f}\t{:f}\t{:f}\t{:f}\t{:f}\r\n".format(t, xball, vball, aball, ext, (ext+xball)))