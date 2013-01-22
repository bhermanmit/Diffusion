module matrix_class

  ! module options
  implicit none
  private
  public :: matrix

  ! module definitions
  type, abstract :: matrix

    ! type options
    private

    ! attributes
    integer :: row_size ! the number of rows in a matrix
    integer :: col_size ! the number of columns in a matrix

    ! procedures
    contains

      procedure(add_element_interface), deferred :: add_element

  end type matrix

  ! list of abstract interfaces
  abstract interface

    subroutine add_element_interface(this,row,col,val)
      import matrix
      class(matrix) :: this
      integer :: row
      integer :: col
    end subroutine add_element_interface

  end interface

end module matrix_class
