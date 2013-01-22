program main

  ! program references
  use diffusion_matrix_class,  only: diffusion_matrix
  use matrix_class,            only: matrix

  ! program options
  implicit none

  ! program variables
  class(matrix), pointer :: dm 

  ! begin execution
  allocate(dm, source = diffusion_matrix(10,10))

  select type(dm)
    type is(diffusion_matrix)
      print *,'FOUND THE TYPE'
  end select 

  print *,'Size of matrix is',dm%get_row_size(),' x',dm%get_col_size()

  if (associated(dm)) print*,'I AM ASSOCIATED'
  deallocate(dm)
  if (.not.associated(dm)) print*,'I AM NOT ASSOCIATED' 

end program main
