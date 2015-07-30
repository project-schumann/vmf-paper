from mpl_toolkits.mplot3d import axes3d
import matplotlib.pyplot as plt
import numpy as np
from matplotlib import cm

fig = plt.figure()

ax = fig.add_subplot(111, projection='3d')

data = np.genfromtxt('data.dat')

x = data[:,0]
y = data[:,1]
z = data[:,2]

plt.xlim(0, 10)
plt.ylim(0, 10000)

plt.title('Accuracy of Reading Sparse Distributed Memory\n')

ax.set_xlabel('\nWindow Size')
ax.set_ylabel('\nCorpus Size')
ax.set_zlabel('\nAccuracy (%)')

plt.gca().invert_xaxis()

surface = ax.plot_trisurf(x, y, z, cmap=cm.gray)
#surface = ax.plot_trisurf(x, y, z, cmap=cm.Greens)

fig.colorbar(surface, ticks=range(0,100,10), shrink=0.75)


plt.savefig('sdm_gray.eps')
plt.savefig('sdm_gray.png')