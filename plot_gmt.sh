#! /bin/sh
format="png"
name_id="./plot_gmt"
##gmt makecpt -C/home/riccardo/documenti/appennino/cpts/GMT_gray.cpt -Ic -T0/5000 > temp_cpt.cpt
gmt begin $name_id $format

	#setting few gmt parameters
#	gmt set MAP_FRAME_TYPE plain
#	gmt set PROJ_LENGTH_UNIT c
	
	gmt grdvector @depth.txt -Bxa2+l"Easting (m)" -Bya1pf3+l"Northing (m)" -BWS +t"Bathymetry"
        
	#plotting the map
	#gmt basemap -R5/20/36/48 -JM15c -Ba2f1 -BWSen #+t"Velocity Field"
	#gmt coast -Scornflowerblue
	#gmt grdimage @earth_relief_01m -Ctemp_cpt.cpt #-Ei
	#gmt coast -Sgrey
	#gmt coast -Sgrey
	#gmt coast -Sgrey
	#gmt coast -W -N1/0.3p,,-- \
	#-Lg6.5/38+c0/0+w100 -Sgrey
	#plotting the stations; the format is long lat VE VN SE SN
	#gmt plot ../velocities_2D_ita_c_nd.dat -Sc0.1c -W -Gred
	#gmt plot -Sv0.2c+e+z0.05c
	#plotting the vector field. @ is for transparency
	#gmt velo ../velocities_2D_ita_c_nd.dat -Se0.15c/0.95 \
	#-A+a30+e+gred -Elightgray@50 -W0.5p,black
	#legend position is in cm w.r.t. BL corner of the image
	#gmt legend -Dn0.03/0.16+w5i+jBL+l1.2<<EOF
#S 0c v 0.75c blue 0.5p 0.6c 5mm/yr
#EOF

gmt end show
#wslview $name_id.$format
