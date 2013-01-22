program main

  ! program references
  use sparse_matrix_class,  only: sparse_matrix
  use matrix_class,         only: matrix

  ! program options
  implicit none

  ! program variables
  class(matrix), pointer :: pm

  ! begin execution
  allocate(pm, source = sparse_matrix(10,10))

  select type(pm)
    type is(sparse_matrix)
      print *,'FOUND THE TYPE'
  end select 

  if (associated(pm)) print*,'I AM ASSOCIATED'
  deallocate(pm)
 
end program main
