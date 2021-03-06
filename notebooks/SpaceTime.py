import geopandas as gpd
import matplotlib.pyplot as plt


def plot_geochron(geochron_filename,bbox):
    geochron=gpd.read_file(geochron_filename.format(bbox))
    geochron_sort=geochron.sort_values(by='analysis_a')
    fig = plt.figure(figsize=[7,7])
    plt.gca().set_ylim(0, 4000)
    xscale=200
    i=0
    for ind,date in geochron_sort.iterrows():
        if('Ar-Ar' in date['analysis_t']):
            c='r'
            label='Ar-Ar'
        elif('U-Pb' in date['analysis_t']):
            c='b'
            label='U-Pb'
        elif('K-Ar' in date['analysis_t']):
            c='g'
            label='K-Ar'
        else:
            c='k'
            label='other'

        if('igneous' in date['analysis_e']):
            s='o'
        elif('metam' in date['analysis_e']):
            s='d'
        elif('xeno' in date['analysis_e']):
            s='s'
        elif('cool' in date['analysis_e']):
            s='v'
        elif('maximum age' in date['analysis_e']):
            s='1'
        elif('depositional' in date['analysis_e']):
            s='p'
        elif('minimum' in date['analysis_e']):
            s='+'
        else:
            s='.'

        line = plt.Line2D((i*xscale, i*xscale),(date['analysis_a']-date['analysis_u'], date['analysis_a']+date['analysis_u']), lw=1.0,color='#000000')
        plt.gca().add_line(line)
        plt.plot([i*xscale], [date['analysis_a']], c+s)

        i=i+1
    ax = plt.axis()
    plt.axis((ax[0],ax[1],ax[3],ax[2]))
    plt.title('Geochronology')
    plt.savefig("geochron.pdf")
    #geochron_sort.plot(column='analysis_e',figsize=(7,7),edgecolor='#000000',linewidth=0.2)
    #plt.savefig('geochron_map.pdf')  
    if(len(geochron_sort)==0):
        plt.title("No geochron data in area")
    else:
        plt.title('Geochronology')
    plt.show()  
    
def plot_geology_codes(geology_filename,bbox):
    geol=gpd.read_file(geology_filename)
    geol_sort=geol.sort_values(by='max_age_ma')
    geol_sort_unique=geol_sort.drop_duplicates(subset=['code'])

    plt.axes()
    xscale=200
    i=0
    print(len(geol_sort_unique))
    for ind,poly in geol_sort_unique.iterrows():
        if(not str(poly['min_age_ma'])=='None' and not str(poly['max_age_ma'])=='None'  ):
            ave_age=float(poly['min_age_ma'])+(float(poly['max_age_ma'])-float(poly['min_age_ma']))/2.0
            plt.plot([i*xscale], ave_age, 'ro')        
            line = plt.Line2D((i*xscale, i*xscale),(float(poly['max_age_ma']), float(poly['min_age_ma'])), lw=1.5)
            plt.gca().add_line(line)
            i=i+1
    ax = plt.axis()
    plt.axis((ax[0],ax[1],ax[3],ax[2]))
    plt.title('Strat codes')
    plt.savefig('codes.pdf')  

    plt.show()   
     
def plot_geology_parents(geology_filename,bbox):
    colors=['b','g','r','c','m','y','k','w']
    fig = plt.figure(figsize=[7, 7])        
    geol=gpd.read_file(geology_filename.format(bbox))

    geol_unique=geol.drop_duplicates(subset=['code'])

    geol_unique_code=geol_unique.set_index('code')
    parents=geol_unique['parentname'].unique()
    print('parents=',len(parents),'codes=',len(geol_unique))
    minmax_parent={}
    for parent in parents:
        min=1e10
        max=0
        for code in geol_unique['code']:
            if(geol_unique_code.loc[code]['parentname']==parent):
                if(not str(geol_unique_code.loc[code]['min_age_ma'])=='None' and not str(geol_unique_code.loc[code]['max_age_ma'])=='None'  ):
                    if(float(geol_unique_code.loc[code]['min_age_ma'])<min):
                        min=float(geol_unique_code.loc[code]['min_age_ma'])        
                    if(float(geol_unique_code.loc[code]['max_age_ma'])>max):
                        max=float(geol_unique_code.loc[code]['max_age_ma'])
        if( not '_Top' in parent):
            minmax_parent[parent.replace("_","")]=[min,max]
    #display(minmax_parent)
    minmax_parent_sort=sorted(minmax_parent.items(), key = lambda kv:(kv[1], kv[0]))

    xscale=500
    i=0
    c=0
    for parent in minmax_parent_sort:
        key=parent[0]
        rectangle = plt.Rectangle((i, minmax_parent[key][0]), xscale, minmax_parent[key][1]-minmax_parent[key][0], fc='C'+str(c),edgecolor='k',label=key)
        plt.gca().add_patch(rectangle)
        i=i+xscale
        c=c+1

    plt.axis('scaled')
    plt.legend(loc='center left', bbox_to_anchor=(1, 0.5))
    ax = plt.axis()
    plt.axis((ax[0],ax[1],ax[3],ax[2]))
    plt.gca().set_ylim(4000, 0)
    plt.savefig('parents.pdf',papertype = 'a4', orientation = 'portrait')  
    #geol.plot(column='parentname',figsize=(7,7),edgecolor='#000000',linewidth=0.2,legend=True,legend_kwds={'loc': [0,-.4]})

    #plt.savefig('parents_map.pdf',papertype = 'a4', orientation = 'portrait')  
    plt.title('Stratigraphy')

    plt.show()
    
def plot_orogenic(orogenic_filename,bbox):
    fig = plt.figure(figsize=[7,7])
    geol=gpd.read_file(orogenic_filename.format(bbox))

    geol_unique=geol.drop_duplicates(subset=['eventname'])
    minmax={}
    for ind,geol in geol_unique.iterrows():
        min=1e10
        max=0
        if(float(geol['min_age'])<min):
            min=float(geol['min_age'])        
        if(float(geol['max_age'])>max):
            max=float(geol['max_age'])
        minmax[geol['eventname']]=[min,max]
    #display(minmax_parent)
    minmax_sort=sorted(minmax.items(), key = lambda kv:(kv[1], kv[0]))

    xscale=500
    i=0
    c=0
    for parent in minmax_sort:
        key=parent[0]
        rectangle = plt.Rectangle((i, minmax[key][0]), xscale, minmax[key][1]-minmax[key][0], fc='C'+str(c),edgecolor='k',label=key)
        plt.gca().add_patch(rectangle)
        i=i+xscale
        c=c+1

    if(len(minmax_sort)>0):
        plt.axis('scaled')
        plt.legend(loc='center left', bbox_to_anchor=(1, 0.5))
        ax = plt.axis()
        plt.axis((ax[0],ax[1],ax[3],ax[2]))
        plt.gca().set_ylim(4000, 0)
        plt.savefig('orogenic.pdf',papertype = 'a4', orientation = 'portrait')  
        #geol.plot(column='parentname',figsize=(7,7),edgecolor='#000000',linewidth=0.2,legend=True,legend_kwds={'loc': [0,-.4]})
    
        #plt.savefig('parents_map.pdf',papertype = 'a4', orientation = 'portrait')  
        plt.title('Orogenic Events')
    
        plt.show()
        
def plot_faults(linear_filename,bbox):
    import fracpaq as fpq 
    import matplotlib.pylab as plt 
    import sys 
    import numpy as np 
    linear=gpd.read_file(linear_filename)
    faults=linear[linear['feature'].str.contains("Fault")]
    faults=faults.dropna(subset=['geometry'])

    f=open('fault.txt','w')
    for inf,fault in faults.iterrows():
        for coords in fault['geometry'].coords:
            ostr="{}\t{}\t".format(coords[0],coords[1])
            f.write(ostr)
        f.write('\n')
    f.close()


    fn='fault.txt'
    #   defaults 
    CM2INCHES = 0.3937 
    bGrid = False 
    bEqualArea = False 
    nBinWidth = 5  
    sColour = 'C0' 
    xSize = 15.0 * CM2INCHES 
    ySize = 15.0 * CM2INCHES   

    #   get nodes and calculate angles from nodes 
    nodelist = fpq.getNodes(fn)
    xnodelist = nodelist[0] 
    ynodelist = nodelist[1]
    segangle = fpq.getSegAngles(xnodelist, ynodelist)
    nSegs = len(segangle)

    if(nSegs>0):

        #   bin the data and find maximum per bin 
        nBins = int(round(360/nBinWidth))
        segangleDoubled = np.zeros(len(segangle))
        segangleDoubled = np.copy(segangle)
        segangleDoubled = np.concatenate([segangleDoubled, segangleDoubled+180.0])
        n, b = plt.histogram(segangleDoubled, nBins)
        nMax = max(n) 

        #   plot the segment angle distribution 
        plt.figure(figsize=(xSize, ySize))
        plt.subplot(111, projection='polar')
        coll = fpq.rose(segangle, bins=nBins, 
                        bidirectional=True, eqarea=True, 
                        color=sColour)
        plt.xticks(np.radians(range(0, 360, 45)), 
                   ['0', '45', '90', '135', '180', '215', '270', '315'])
        if(nMax>6):        
            plt.rgrids(range(0, int(round(nMax*1.1)), int(round((nMax*1.1)/5))), angle=330)
        plt.ylim(0, int(round(nMax*1.1)))
        plt.title('Segment strikes, n=%i' % nSegs)
        plt.savefig("faults_rose.pdf")
        #faults.plot(figsize=(7,7),edgecolor='#ff0000',linewidth=0.3)
        #print('Plotted %5d segments & angles' % nSegs)
        #plt.savefig('faults.pdf')  
        plt.title('Fault traces')

        plt.show()

def plot_folds(linear_filename,bbox):
    import fracpaq as fpq 
    import matplotlib.pylab as plt 
    import sys 
    import numpy as np 

    linear=gpd.read_file(linear_filename)
    folds=linear[linear['feature'].str.contains("Fold")]
    folds=folds.dropna(subset=['geometry'])

    f=open('fold.txt','w')
    for inf,fold in folds.iterrows():
        for coords in fold['geometry'].coords:
            ostr="{}\t{}\t".format(coords[0],coords[1])
            f.write(ostr)
        f.write('\n')
    f.close()

    fn='fold.txt'
    #   defaults 
    CM2INCHES = 0.3937 
    bGrid = False 
    bEqualArea = False 
    nBinWidth = 5  
    sColour = 'C0' 
    xSize = 15.0 * CM2INCHES 
    ySize = 15.0 * CM2INCHES   

    #   get nodes and calculate angles from nodes 
    nodelist = fpq.getNodes(fn)
    xnodelist = nodelist[0] 
    ynodelist = nodelist[1]
    segangle = fpq.getSegAngles(xnodelist, ynodelist)
    nSegs = len(segangle)
    if(nSegs>0):
        #   bin the data and find maximum per bin 
        nBins = int(round(360/nBinWidth))
        segangleDoubled = np.zeros(len(segangle))
        segangleDoubled = np.copy(segangle)
        segangleDoubled = np.concatenate([segangleDoubled, segangleDoubled+180.0])
        n, b = plt.histogram(segangleDoubled, nBins)
        nMax = max(n) 

        #   plot the segment angle distribution 
        plt.figure(figsize=(xSize, ySize))
        plt.subplot(111, projection='polar')
        coll = fpq.rose(segangle, bins=nBins, 
                        bidirectional=True, eqarea=True, 
                        color=sColour)
        plt.xticks(np.radians(range(0, 360, 45)), 
                   ['0', '45', '90', '135', '180', '215', '270', '315'])
        if(nMax>6):        
            plt.rgrids(range(0, int(round(nMax*1.1)), int(round((nMax*1.1)/5))), angle=330)
        plt.ylim(0, int(round(nMax*1.1)))
        plt.title('Segment strikes, n=%i' % nSegs)
        plt.savefig("folds_rose.pdf")
        #folds.plot(figsize=(7,7),edgecolor='#ff0000',linewidth=0.3)
        #print('Plotted %5d segments & angles' % nSegs)
        #plt.savefig('folds.pdf')  
        plt.title('Fold axial traces')
        plt.show()


def plot_mag(mag_netcdf_path,mag_path,bbox):
    import os
    import netCDF4
    import numpy as np
    from geophys_utils import NetCDFGridUtils
    from geophys_utils import get_netcdf_edge_points, points2convex_hull
    import matplotlib.pyplot as plt
    
    netcdf_dataset = netCDF4.Dataset(mag_netcdf_path, 'r')

    max_bytes = 500000000

    #netcdf_grid_utils = NetCDFGridUtils(netcdf_dataset)
    lats = netcdf_dataset.variables['lat'][:]
    lons = netcdf_dataset.variables['lon'][:]
    latselect = np.logical_and(lats>bbox[1],lats<bbox[3])
    lonselect = np.logical_and(lons>bbox[0],lons<bbox[2])
    data = netcdf_dataset.variables['mag_tmi_rtp_anomaly'][latselect,lonselect]

    np.savetxt(mag_path, data[:,:],  delimiter=' ', newline='\n') 
    plt.imshow(data,cmap ='gist_rainbow',vmin=-1000,vmax=1000)
    plt.title('Magnetics')
    plt.show()

def plot_grav(grav_netcdf_path,grav_path,bbox):
    import os
    import netCDF4
    from netCDF4 import Dataset
    import numpy as np
    from geophys_utils import NetCDFGridUtils
    import matplotlib.pyplot as plt
    
    netcdf_dataset = netCDF4.Dataset(grav_netcdf_path, 'r')

    max_bytes = 500000000

    #netcdf_grid_utils = NetCDFGridUtils(netcdf_dataset)
    lats = netcdf_dataset.variables['lat'][:]
    lons = netcdf_dataset.variables['lon'][:]
    latselect = np.logical_and(lats>bbox[1],lats<bbox[3])
    lonselect = np.logical_and(lons>bbox[0],lons<bbox[2])
    data = netcdf_dataset.variables['grav_ir_anomaly'][latselect,lonselect]
    np.savetxt(grav_path, data[:,:],  delimiter=' ', newline='\n') 
    plt.imshow(data,cmap ='gist_rainbow')
    plt.title('Gravity')
    plt.show()

def plot_eggs(eggs_filename,bbox):
    eggs=gpd.read_file(eggs_filename.format(bbox))
    if(len(eggs)>0):
        eggs.plot(figsize=(7,7),column='location_z')
    else:
        plt.text(.2,.2,"No eggs values\n in area")
    plt.title('EGGS')
    plt.show()

def plot_density(density_filename,bbox):
    density=gpd.read_file(density_filename.format(bbox))
    if(len(density)>0):
        density.plot(figsize=(7,7),column='value')
    else:
        plt.text(.2,.2,"No density values\n in area")
    plt.tight_layout()
    plt.title('Density')
    plt.show()

def plot_mag_sus(mag_sus_filename,bbox):
    mag_sus=gpd.read_file(mag_sus_filename.format(bbox))
    if(len(mag_sus)>0):
        mag_sus.plot(figsize=(7,7),column='lithologyg')
    else:
        plt.text(.2,.2,"No mag sus values\n in area")
    plt.tight_layout()
    plt.title('Magnetic Susceptibility')
    plt.show()

def plot_mag_mag_sus(mag_netcdf_path,mag_sus_filename,bbox):
    import os
    import netCDF4
    import numpy as np
    import geopandas as gpd
    from geophys_utils import NetCDFGridUtils
    from geophys_utils import get_netcdf_edge_points, points2convex_hull
    import matplotlib.pyplot as plt
    fig, ax = plt.subplots(1, 2)
    
    netcdf_dataset = netCDF4.Dataset(mag_netcdf_path, 'r')

    max_bytes = 500000000

    #netcdf_grid_utils = NetCDFGridUtils(netcdf_dataset)
    lats = netcdf_dataset.variables['lat'][:]
    lons = netcdf_dataset.variables['lon'][:]
    latselect = np.logical_and(lats>bbox[1],lats<bbox[3])
    lonselect = np.logical_and(lons>bbox[0],lons<bbox[2])
    data = netcdf_dataset.variables['mag_tmi_rtp_anomaly'][latselect,lonselect]
    #plt.contourf(data[::-1],cmap ='gist_ncar') # flip latitudes so they go south -> north
    ax[0].imshow(data,cmap ='gist_rainbow',vmin=-1000,vmax=1000)
    
    mag_sus=gpd.read_file(mag_sus_filename.format(bbox))
    if(len(mag_sus)>0):
        mag_sus.plot(ax=ax[1],figsize=(7,7),column='lithologyg')
    else:
        plt.subplot(122)
        plt.text(.2,.2,"No mag sus values\n in area")
    plt.tight_layout()
    plt.title('Magnetics and Magnetic Susceptibility')

    plt.show()
    
def plot_grav_density(grav_netcdf_path,density_filename,bbox):
    import os
    import netCDF4
    import numpy as np
    import geopandas as gpd
    from geophys_utils import NetCDFGridUtils
    from geophys_utils import get_netcdf_edge_points, points2convex_hull
    import matplotlib.pyplot as plt
    fig, ax = plt.subplots(1, 2)
    
    netcdf_dataset = netCDF4.Dataset(grav_netcdf_path, 'r')

    max_bytes = 500000000

    #netcdf_grid_utils = NetCDFGridUtils(netcdf_dataset)
    lats = netcdf_dataset.variables['lat'][:]
    lons = netcdf_dataset.variables['lon'][:]
    latselect = np.logical_and(lats>bbox[1],lats<bbox[3])
    lonselect = np.logical_and(lons>bbox[0],lons<bbox[2])
    data = netcdf_dataset.variables['grav_ir_anomaly'][latselect,lonselect]
    ax[0].imshow(data,cmap ='gist_rainbow')
    
    density=gpd.read_file(density_filename.format(bbox))
    if(len(density)>0):
        density.plot(ax=ax[1],figsize=(7,7),column='value')
    else:
        plt.subplot(122)
        plt.text(.2,.2,"No density values\n in area")
    plt.tight_layout()
    plt.title('Gravity and Density')
    plt.show()
    
def plot_plutons(geology_filename,bbox):
    import pandas as pd
    geol=gpd.read_file(geology_filename.format(bbox))
    plutons=geol[ geol['rocktype1'].str.contains( 'igneous')]
    #display(plutons)
    plutons_unique=plutons.drop_duplicates(subset=['code'])
    #plutons["max_age_ma"] = pd.to_numeric(plutons["max_age_ma"], downcast="float")
    #plutons["min_age_ma"] = pd.to_numeric(plutons["min_age_ma"], downcast="float")
    plutons_sort_unique=plutons_unique.sort_values(by='max_age_ma')
    #display(plutons_sort_unique)
    #return

    plt.axes()
    plt.gca().set_ylim(0, 4000)
    xscale=200
    i=0
    #print(len(plutons_sort_unique))
    for ind,poly in plutons_sort_unique.iterrows():
        if(not str(poly['min_age_ma'])=='None' and not str(poly['max_age_ma'])=='None'  ):
            ave_age=float(poly['min_age_ma'])+(float(poly['max_age_ma'])-float(poly['min_age_ma']))/2.0
            #print("mafic",poly['rocktype1'])
            if("volcanic" in poly['rocktype1']):
                s='v'
            else:
                s='o'  
            if("mafic" in poly['rocktype1']):
                c='b'
            else:
                c='r'  
                
            line = plt.Line2D((i*xscale, i*xscale),(float(poly['max_age_ma']), float(poly['min_age_ma'])), lw=1.5,color='#000000')
            plt.gca().add_line(line)
            plt.plot([i*xscale], ave_age, c+s)                            
            i=i+1
    ax = plt.axis()
    plt.axis((ax[0],ax[1],ax[3],ax[2]))
    plt.title('Igneous')
    plt.savefig('Igneous.pdf')  

    plt.show() 