!-----------------------BEGIN NOTICE -- DO NOT EDIT-----------------------------
! NASA GSFC Land surface Verification Toolkit (LVT) V1.0
!-------------------------END NOTICE -- DO NOT EDIT-----------------------------
!BOP
! 
! !MODULE: SMOSL2sm_obsMod
! \label(SMOSL2sm_obsMod)
!
! !INTERFACE:
module SMOSL2sm_obsMod
! 
! !USES: 
  use ESMF

  implicit none

  PRIVATE 
!
! !INPUT PARAMETERS: 
! 
! !OUTPUT PARAMETERS:
!
! !DESCRIPTION: 
!  This module handles the observation plugin for the Land Parameter
!  Retrieval Model (LPRM) AMSR-E soil moisture product
! 
! !FILES USED:
!
! !REVISION HISTORY: 
!  12 Dec 2014: Sujay Kumar, Initial Specification
! 
!EOP
! 
!-----------------------------------------------------------------------------
! !PUBLIC MEMBER FUNCTIONS:
!-----------------------------------------------------------------------------
  PUBLIC :: SMOSL2sm_obsinit
!-----------------------------------------------------------------------------
! !PUBLIC TYPES:
!-----------------------------------------------------------------------------
  PUBLIC :: SMOSL2smobs
!EOP
  type, public :: smosl2smobsdec

     character*100        :: odir
     logical             :: startmode     

  end type smosl2smobsdec

  type(smosl2smobsdec),save:: SMOSL2smobs(2)

contains
  
!BOP
! 
! !ROUTINE: SMOSL2sm_obsInit
! \label{SMOSL2sm_obsInit}
!
! !INTERFACE: 
  subroutine SMOSL2sm_obsinit(i)
! 
! !USES: 
    use ESMF
    use LVT_coreMod
    use LVT_histDataMod
    use LVT_timeMgrMod
    use LVT_logMod

    implicit none
!
! !INPUT PARAMETERS: 
    integer,   intent(IN) :: i 
! 
! !OUTPUT PARAMETERS:
!
! !DESCRIPTION: 
!  This subroutine initializes and sets up the data structures required
!  for reading LPRM AMSRE soil moisture data. 
! 
! !FILES USED:
!
! !REVISION HISTORY: 
! 
!EOP

    integer               :: npts, status
    real                  :: gridDesci(50)

    call ESMF_ConfigGetAttribute(LVT_Config, SMOSL2smobs(i)%odir, &
         label='SMOS L2 soil moisture observation directory:', rc=status)
    call LVT_verify(status, 'SMOS L2 soil moisture observation directory: not defined')


    call LVT_update_timestep(LVT_rc, 86400)
    
    SMOSL2smobs(i)%startmode = .true. 

  end subroutine SMOSL2sm_obsinit


end module SMOSL2sm_obsMod
