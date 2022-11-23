bathy <- read.table("C:/Users/annal/OneDrive/Desktop/UNIBO/NHWAVE/Iseo2.dat")

z_val <- bathy[,3]-185.15

x_ini=bathy[1,1]
x_fin=bathy[701701,1]

y_ini=bathy[1,2]
y_fin=bathy[701701,2]

Dx=20
Dy=20

row_matrix=(y_fin-y_ini)/Dy +1
column_matrix=(x_fin-x_ini)/Dx +1


# R program to create a matrix

A = matrix(

  # Taking sequence of elements
  z_val,
  
  # No of rows
  nrow = row_matrix,
  
  # No of columns
  ncol = column_matrix,		
  
  # By default matrices are in column-wise order
  # So this parameter decides how to arrange the matrix
  byrow = FALSE		
)

write.table(A, file= "C:/Users/annal/OneDrive/Desktop/UNIBO/NHWAVE/depth.txt", append = FALSE, sep = " ",
           dec = ".", row.names = FALSE, col.names = FALSE)
