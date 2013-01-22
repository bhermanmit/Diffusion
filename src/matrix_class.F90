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
      procedure :: set_row_size
      procedure :: set_col_size

  end type matrix

  ! list of abstract interfaces
  abstract interface

    subroutine add_element_interface(this,row,col,val)
      import matrix
      class(matrix) :: this
      integer :: row
      integer :: col
      real(8) :: val
    end subroutine add_element_interface

  end interface

  ! procedures
  contains

!===============================================================================
! sets the row size
!===============================================================================

  subroutine set_row_size(this, row)

    ! arguments
    class(matrix) :: this
    integer :: row

    ! begin execution
    this % row_size = row

  end subroutine set_row_size

!===============================================================================
! sets the column size
!===============================================================================

  subroutine set_col_size(this, col)

    ! arguments
    class(matrix) :: this
    integer :: col

    ! begin execution
    this % col_size = col
  
  end subroutine set_col_size

end module matrix_class
