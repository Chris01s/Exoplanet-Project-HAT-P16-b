import numpy as np
import pylab as plt

#get time and flux data
data = np.loadtxt("mag_10/allflux.txt",float)
hjd = np.loadtxt("mag_10/hjd.txt")

#get target flux and mean of reference stars
f_target = data[:,0]
stdev = []
f_ref_all = np.sum(data[:,1:],axis=1)
f_norm = (f_target/f_ref_all)[1:]

#flux out of transit
f_oot = np.concatenate((f_norm[:15],f_norm[64:]))
hjd_oot = np.concatenate((hjd[:15],hjd[64:]))
#fit for the flux out of transit
pfit = np.polyfit(hjd_oot,f_oot,1)   
f_oot_fit = np.polyval(pfit,hjd)
#plot fit
plt.figure(1)
plt.plot(hjd,f_norm,'.',hjd,f_oot_fit,'--')
plt.savefig('Out_of_transit_flux.png') 

f_oot_mean = np.mean(f_oot_fit)
f_oot_stdev = np.std(f_oot_fit)

#normalise flux
f_norm /= f_oot_mean
plt.figure(2)
plt.plot(hjd,f_norm,'.')
plt.show()
plt.savefig('normalised_flux.png')


