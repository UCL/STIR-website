# Microsoft Developer Studio Project File - Name="ecat" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Static Library" 0x0104

CFG=ecat - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "ecat.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "ecat.mak" CFG="ecat - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "ecat - Win32 Release" (based on "Win32 (x86) Static Library")
!MESSAGE "ecat - Win32 Debug" (based on "Win32 (x86) Static Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "ecat - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "Release"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_MBCS" /D "_LIB" /YX /FD /c
# ADD CPP /nologo /GX /O2 /D "WIN32" /D "NDEBUG" /D "_MBCS" /D "_LIB" /D "HAVE_LLN_MATRIX" /YX /FD /c
# ADD BASE RSC /l 0x809 /d "NDEBUG"
# ADD RSC /l 0x809 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo

!ELSEIF  "$(CFG)" == "ecat - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug"
# PROP Intermediate_Dir "Debug"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_MBCS" /D "_LIB" /YX /FD /GZ /c
# ADD CPP /nologo /Gm /GR /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_MBCS" /D "_LIB" /D "HAVE_LLN_MATRIX" /YX /FD /GZ /c
# ADD BASE RSC /l 0x809 /d "_DEBUG"
# ADD RSC /l 0x809 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo

!ENDIF 

# Begin Target

# Name "ecat - Win32 Release"
# Name "ecat - Win32 Debug"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=..\analyze.c
# End Source File
# Begin Source File

SOURCE=..\convert_64.c
# End Source File
# Begin Source File

SOURCE=..\convert_70.c
# End Source File
# Begin Source File

SOURCE=..\crash.c
# End Source File
# Begin Source File

SOURCE=..\ecat_model.c
# End Source File
# Begin Source File

SOURCE=..\getopt.c
# End Source File
# Begin Source File

SOURCE=..\interfile.c
# End Source File
# Begin Source File

SOURCE=..\load_volume7.c
# End Source File
# Begin Source File

SOURCE=..\machine_indep.c
# End Source File
# Begin Source File

SOURCE=..\make3dfilter.c
# End Source File
# Begin Source File

SOURCE=..\makefilter.c
# End Source File
# Begin Source File

SOURCE=..\matpkg.c
# End Source File
# Begin Source File

SOURCE=..\matrix.c
# End Source File
# Begin Source File

SOURCE=..\matrix_64.c
# End Source File
# Begin Source File

SOURCE=..\matrix_extra.c
# End Source File
# Begin Source File

SOURCE=..\matrix_slice.c
# End Source File
# Begin Source File

SOURCE=..\num_sort.c
# End Source File
# Begin Source File

SOURCE=..\plandefs.c
# End Source File
# Begin Source File

SOURCE=..\save_volume7.c
# End Source File
# Begin Source File

SOURCE=..\scan3d_read.c
# End Source File
# Begin Source File

SOURCE=..\sino_dets.c
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE=..\analyze.h
# End Source File
# Begin Source File

SOURCE=..\ecat_model.h
# End Source File
# Begin Source File

SOURCE=..\fproj3d.h
# End Source File
# Begin Source File

SOURCE=..\interfile.h
# End Source File
# Begin Source File

SOURCE=..\isotope_info.h
# End Source File
# Begin Source File

SOURCE=..\load_volume.h
# End Source File
# Begin Source File

SOURCE=..\machine_indep.h
# End Source File
# Begin Source File

SOURCE=..\matpkg.h
# End Source File
# Begin Source File

SOURCE=..\matrix.h
# End Source File
# Begin Source File

SOURCE=..\matrix_64.h
# End Source File
# Begin Source File

SOURCE=..\matrix_xdr.h
# End Source File
# Begin Source File

SOURCE=..\num_sort.h
# End Source File
# Begin Source File

SOURCE=..\plandefs.h
# End Source File
# Begin Source File

SOURCE=..\scdef.h
# End Source File
# Begin Source File

SOURCE=..\scfun.h
# End Source File
# Begin Source File

SOURCE=..\scssl.h
# End Source File
# Begin Source File

SOURCE=..\sincos.h
# End Source File
# End Group
# End Target
# End Project
