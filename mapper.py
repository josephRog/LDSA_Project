import hdf5_getter

h5 = hdf5_getter.open_h5_file_read("/home/adsc6129/Desktop/LDSA_Project/TRAXLZU12903D05F94.h5")
duration = hdf5_getter.get_duration(h5)
print duration
print(hdf5_getter.get_artist_name(h5))
h5.close()
