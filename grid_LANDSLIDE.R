land <- read.table("C:/Users/annal/OneDrive/Desktop/UNIBO/NHWAVE/Iseo2_spessore_frana.dat")

z_val <- land[,3]

x_ini=land[1,1]
x_fin=land[701701,1]

y_ini=land[1,2]
y_fin=land[701701,2]

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

write.table(A, file= "C:/Users/annal/OneDrive/Desktop/UNIBO/NHWAVE/land_h.txt", append = FALSE, sep = " ",
            dec = ".", row.names = FALSE, col.names = FALSE)

