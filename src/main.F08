program main

  ! program references
  use petsc_matrix_class,  only: petsc_matrix

  ! program options
  implicit none

  ! program variables
  type(petsc_matrix) :: pm

  ! begin execution
  pm = petsc_matrix(10,10)

end program main
