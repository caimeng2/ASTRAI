# Create a numeric vector in the current environment
x <- 1:6

# Create vector based on the values in x.
y <- x^2

# Print the vector’s contents.
print(y)

# Create a new vector that is the sum of x and y
z <- x + y

# Return the contents of z to the current environment.
z 

# Create a new matrix that turns the vector z into a 3x2 matrix object
z_matrix <- matrix(z, nrow = 3) 
z_matrix 

# Transpose the matrix, multiply every element by 2, subtract 2 from each element in the matrix, and return the results to the terminal.
2 * t(z_matrix) - 2

# Create a new data.frame object that contains the data from a transposed z_matrix, with row names 'A' and 'B'
new_df <- data.frame(t(z_matrix), row.names = c("A", "B")) 
# Set the column names of new_df as X, Y, and Z.
names(new_df) <- c("X", "Y", "Z")

# Print the current results.
print(new_df)

# Output the Z column
new_df$Z

# The data.frame column Z can be accessed using $Z, ['Z'], or [3] syntax and the values are the same. 
new_df$Z == new_df['Z'] && new_df[3] == new_df$Z

# Print attributes information about the new_df object
attributes(new_df)

# Access and then change the row.names attribute; can also be done using rownames()
attributes(new_df)$row.names <- c("one", "two")
new_df
