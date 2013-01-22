module petsc_matrix_class

  ! module references
  use matrix_class,  only: matrix

  ! module options
  implicit none
  private
  public :: petsc_matrix

  ! external references
!# include <finclude/petsc.h90>

  ! module definitions
  type, extends(matrix) :: petsc_matrix

    ! procedures
    contains
      private

      procedure :: add_element => add_petsc_element

  end type petsc_matrix

  ! interfaces
  interface petsc_matrix
    procedure constructor ! add constructor to petsc_matrix generic interface
  end interface petsc_matrix

  ! procedures
  contains

!===============================================================================
! initializes an instance of petsc_matrix
!===============================================================================

    function constructor(row_size, column_size)

      ! arguments
      integer :: column_size
      integer :: row_size
      type(petsc_matrix) :: constructor

      ! begin execution
      constructor % column_size = column_size
      constructor % row_size = row_size

    end function constructor

!===============================================================================
! adding an element to a petsc matrix
!===============================================================================

    subroutine add_petsc_element(this,row,col,val)

      ! arguments
      class(petsc_matrix) :: this
      integer :: col
      integer :: row
      real(8) :: val

      ! print that we did this
      print *, 'Added values to petsc matrix!'

    end subroutine add_petsc_element

end module petsc_matrix_class
