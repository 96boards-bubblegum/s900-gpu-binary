############################################################################ ###
#@Copyright     Copyright (c) Imagination Technologies Ltd. All Rights Reserved
#@License       MIT
# The contents of this file are subject to the MIT license as set out below.
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.
#### ###########################################################################

# Auto-generated for owl_linux from rogueddk_1.5@3604260
#

	# Install the standard scripts
	#
	install_file rc.pvr ${RC_DESTDIR}/rc.pvr "boot script" 0755 0:0
	install_file udev.pvr ${UDEV_DESTDIR}/99-pvr-services.rules "udev rules" 0644 0:0

	# Install the standard libraries
	#
	install_file libGLESv1_CM.so ${SHLIB_DESTDIR}/libGLESv1_CM.so.1.5.3604260 "shared library" 0644 0:0
	link_library ${SHLIB_DESTDIR}/libGLESv1_CM.so.1.5.3604260


	install_file libusc.so ${SHLIB_DESTDIR}/libusc.so.1.5.3604260 "shared library" 0644 0:0
	link_library ${SHLIB_DESTDIR}/libusc.so.1.5.3604260

	install_file libGLESv2.so ${SHLIB_DESTDIR}/libGLESv2.so.1.5.3604260 "shared library" 0644 0:0
	link_library ${SHLIB_DESTDIR}/libGLESv2.so.1.5.3604260

	install_file libglslcompiler.so ${SHLIB_DESTDIR}/libglslcompiler.so.1.5.3604260 "shared library" 0644 0:0
	link_library ${SHLIB_DESTDIR}/libglslcompiler.so.1.5.3604260

	install_file libPVROCL.so ${SHLIB_DESTDIR}/libPVROCL.so.1.5.3604260 "shared library" 0644 0:0
	link_library ${SHLIB_DESTDIR}/libPVROCL.so.1.5.3604260
	install_file liboclcompiler.so ${SHLIB_DESTDIR}/liboclcompiler.so.1.5.3604260 "shared library" 0644 0:0
	link_library ${SHLIB_DESTDIR}/liboclcompiler.so.1.5.3604260
	install_file libufwriter.so ${SHLIB_DESTDIR}/libufwriter.so.1.5.3604260 "shared library" 0644 0:0
	link_library ${SHLIB_DESTDIR}/libufwriter.so.1.5.3604260


	install_file libIMGegl.so ${SHLIB_DESTDIR}/libIMGegl.so.1.5.3604260 "shared library" 0644 0:0
	link_library ${SHLIB_DESTDIR}/libIMGegl.so.1.5.3604260

	install_file libsrv_um.so ${SHLIB_DESTDIR}/libsrv_um.so.1.5.3604260 "shared library" 0644 0:0
	link_library ${SHLIB_DESTDIR}/libsrv_um.so.1.5.3604260
	install_file libsrv_init.so ${SHLIB_DESTDIR}/libsrv_init.so.1.5.3604260 "shared library" 0644 0:0
	link_library ${SHLIB_DESTDIR}/libsrv_init.so.1.5.3604260
	install_file libPVRScopeServices.so ${SHLIB_DESTDIR}/libPVRScopeServices.so.1.5.3604260 "shared library" 0644 0:0
	link_library ${SHLIB_DESTDIR}/libPVRScopeServices.so.1.5.3604260

	install_file libpvrbm.so ${SHLIB_DESTDIR}/libpvrbm.so.1.5.3604260 "shared library" 0644 0:0
	link_library ${SHLIB_DESTDIR}/libpvrbm.so.1.5.3604260

	install_file libGL.so ${SHLIB_DESTDIR}/libGL.so.1.5.3604260 "shared library" 0644 0:0
	link_library ${SHLIB_DESTDIR}/libGL.so.1.5.3604260
	install_file libPVROGL_MESA.so ${SHLIB_DESTDIR}/libPVROGL_MESA.so.1.5.3604260 "shared library" 0644 0:0
	link_library ${SHLIB_DESTDIR}/libPVROGL_MESA.so.1.5.3604260
	install_file libglslcompiler.so ${SHLIB_DESTDIR}/libglslcompiler.so.1.5.3604260 "shared library" 0644 0:0
	link_library ${SHLIB_DESTDIR}/libglslcompiler.so.1.5.3604260





	# Install OpenCL ICD config file
	set_icdconf  ${SHLIB_DESTDIR}/libPVROCL.so ${OPENCL_ICD_CONF}/IMG.icd

# Make a symlink from libPVROCL.so to libOpenCL.so if libOpenCL.so doesn't exist.
# If it exists it may be that a user/platform vendor has installed the ICD there
# or set up their own symlink for some reason.
	# Create a symlink from library libPVROCL.so to library libOpenCL.so if libOpenCL.so doesn't exist
	symlink_library_if_not_present  ${SHLIB_DESTDIR} libPVROCL.so libOpenCL.so

	install_file libpvrfbc.so ${SHLIB_DESTDIR}/libpvrfbc.so.1.5.3604260 "shared library" 0644 0:0
	link_library ${SHLIB_DESTDIR}/libpvrfbc.so.1.5.3604260



	# Install the standard executables
	#

	install_file pvrsrvctl ${BIN_DESTDIR}/pvrsrvctl "binary" 0755 0:0
	install_file pvrtld ${BIN_DESTDIR}/pvrtld "binary" 0755 0:0
	install_file pvrdebug ${BIN_DESTDIR}/pvrdebug "binary" 0755 0:0
	install_file hwperfbin2jsont ${BIN_DESTDIR}/hwperfbin2jsont "binary" 0755 0:0
	install_file pvrhwperf ${BIN_DESTDIR}/pvrhwperf "binary" 0755 0:0
	install_file testchipflash ${BIN_DESTDIR}/testchipflash "binary" 0755 0:0
	install_file pvrlogdump ${BIN_DESTDIR}/pvrlogdump "binary" 0755 0:0





	# Install the standard unittests
	#

	install_file rgx_blit_test ${BIN_DESTDIR}/rgx_blit_test "binary" 0755 0:0
	install_file rgx_blitsize_test ${BIN_DESTDIR}/rgx_blitsize_test "binary" 0755 0:0
	install_file rgx_twiddling_test ${BIN_DESTDIR}/rgx_twiddling_test "binary" 0755 0:0
	install_file rgx_tqplayer_test ${BIN_DESTDIR}/rgx_tqplayer_test "binary" 0755 0:0
	install_file rgx_ispscandir_test ${BIN_DESTDIR}/rgx_ispscandir_test "binary" 0755 0:0
	install_file rgx_rotation_test ${BIN_DESTDIR}/rgx_rotation_test "binary" 0755 0:0
	install_file rgx_smppos_test ${BIN_DESTDIR}/rgx_smppos_test "binary" 0755 0:0
	install_file rgx_tqfmts_test ${BIN_DESTDIR}/rgx_tqfmts_test "binary" 0755 0:0
	install_file rgx_tqds_test ${BIN_DESTDIR}/rgx_tqds_test "binary" 0755 0:0
	install_file rgx_yuvcsc_test ${BIN_DESTDIR}/rgx_yuvcsc_test "binary" 0755 0:0
	install_file rgx_triangle_test ${BIN_DESTDIR}/rgx_triangle_test "binary" 0755 0:0
	install_file rgx_compute_test ${BIN_DESTDIR}/rgx_compute_test "binary" 0755 0:0
	install_file rgx_ray_test ${BIN_DESTDIR}/rgx_ray_test "binary" 0755 0:0
	install_file tiling_test ${BIN_DESTDIR}/tiling_test "binary" 0755 0:0
	install_file rogue2d_unittest ${BIN_DESTDIR}/rogue2d_unittest "binary" 0755 0:0
	install_file rogue2d_fbctest ${BIN_DESTDIR}/rogue2d_fbctest "binary" 0755 0:0
	install_file dev_mem_allocperf_test ${BIN_DESTDIR}/dev_mem_allocperf_test "binary" 0755 0:0
	install_file dev_mem_mgt_test ${BIN_DESTDIR}/dev_mem_mgt_test "binary" 0755 0:0
	install_file dev_mem_distr_test ${BIN_DESTDIR}/dev_mem_distr_test "binary" 0755 0:0
	install_file framebuffer_test ${BIN_DESTDIR}/framebuffer_test "binary" 0755 0:0
	install_file screencap ${BIN_DESTDIR}/screencap "binary" 0755 0:0

	install_file axi_ace_coherent_test ${BIN_DESTDIR}/axi_ace_coherent_test "binary" 0755 0:0
	install_file apphint_test ${BIN_DESTDIR}/apphint_test "binary" 0755 0:0
	install_file breakpoint_test ${BIN_DESTDIR}/breakpoint_test "binary" 0755 0:0
	install_file cache_test ${BIN_DESTDIR}/cache_test "binary" 0755 0:0
	install_file dev_mem_thread_test ${BIN_DESTDIR}/dev_mem_thread_test "binary" 0755 0:0
	install_file dev_watchdog_test ${BIN_DESTDIR}/dev_watchdog_test "binary" 0755 0:0
	install_file ion_test ${BIN_DESTDIR}/ion_test "binary" 0755 0:0
	install_file memory_test ${BIN_DESTDIR}/memory_test "binary" 0755 0:0
	install_file pvrtutils ${BIN_DESTDIR}/pvrtutils "binary" 0755 0:0
	install_file regconfig_test ${BIN_DESTDIR}/regconfig_test "binary" 0755 0:0
	install_file rgx_hwperf_test ${BIN_DESTDIR}/rgx_hwperf_test "binary" 0755 0:0
	install_file rgx_powmon_test ${BIN_DESTDIR}/rgx_powmon_test "binary" 0755 0:0
	install_file ri_test ${BIN_DESTDIR}/ri_test "binary" 0755 0:0
	install_file secbuf_test ${BIN_DESTDIR}/secbuf_test "binary" 0755 0:0
	install_file services_apiperf_test ${BIN_DESTDIR}/services_apiperf_test "binary" 0755 0:0
	install_file services_mutex_test ${BIN_DESTDIR}/services_mutex_test "binary" 0755 0:0
	install_file services_ra_test ${BIN_DESTDIR}/services_ra_test "binary" 0755 0:0
	install_file services_test ${BIN_DESTDIR}/services_test "binary" 0755 0:0
	install_file sparse_alloc_test ${BIN_DESTDIR}/sparse_alloc_test "binary" 0755 0:0
	install_file sync_test ${BIN_DESTDIR}/sync_test "binary" 0755 0:0
	install_file tlclient_test ${BIN_DESTDIR}/tlclient_test "binary" 0755 0:0
	install_file tlintern_test ${BIN_DESTDIR}/tlintern_test "binary" 0755 0:0
	install_file tlstream_test ${BIN_DESTDIR}/tlstream_test "binary" 0755 0:0




  
    	install_file gles1test1 ${BIN_DESTDIR}/gles1test1 "binary" 0755 0:0
    
    	install_file gles2test1 ${BIN_DESTDIR}/gles2test1 "binary" 0755 0:0
    	install_file gles3test1 ${BIN_DESTDIR}/gles3test1 "binary" 0755 0:0
    
    	install_file gltest1 ${BIN_DESTDIR}/gltest1 "binary" 0755 0:0
    	install_file gltest2 ${BIN_DESTDIR}/gltest2 "binary" 0755 0:0
    	install_file gltest3 ${BIN_DESTDIR}/gltest3 "binary" 0755 0:0
    
    	install_file ocl_unit_test ${BIN_DESTDIR}/ocl_unit_test "binary" 0755 0:0
        	install_file eglinfo ${BIN_DESTDIR}/eglinfo "binary" 0755 0:0



  	install_file xeglinfo ${BIN_DESTDIR}/xeglinfo "binary" 0755 0:0
  	install_file xmultitest ${BIN_DESTDIR}/xmultitest "binary" 0755 0:0
  
    	install_file xgles1test1 ${BIN_DESTDIR}/xgles1test1 "binary" 0755 0:0
    	install_file xmultiegltest ${BIN_DESTDIR}/xmultiegltest "binary" 0755 0:0
    
    	install_file xgles2test1 ${BIN_DESTDIR}/xgles2test1 "binary" 0755 0:0
    	install_file xgles3test1 ${BIN_DESTDIR}/xgles3test1 "binary" 0755 0:0
    	install_file xgles2image ${BIN_DESTDIR}/xgles2image "binary" 0755 0:0
    	install_file xmultiegltest_es2 ${BIN_DESTDIR}/xmultiegltest_es2 "binary" 0755 0:0
    
    	install_file xgltest1 ${BIN_DESTDIR}/xgltest1 "binary" 0755 0:0
    	install_file xgltest2 ${BIN_DESTDIR}/xgltest2 "binary" 0755 0:0
    
    	install_file ocl_unit_test ${BIN_DESTDIR}/ocl_unit_test "binary" 0755 0:0
    

install_lws()
{
   
##NON_SHIPPING_TESTS

 	[ -d usr ] &&
		install_tree usr /usr "Linux window system executables and libraries"
 
 install_file libpvr_dri_support.so ${SHLIB_DESTDIR}/libpvr_dri_support.so "PVR DRI module support library" 0755 0:0

 	[ -f pvr_drv.so ] &&
	     	install_file pvr_drv.so ${DDX_DESTDIR}/pvr_drv.so "X.Org PVR DDX video module" 0755 0:0
 	[ -f xorg.conf ] &&
	        install_file xorg.conf ${CONF_DESTDIR}/xorg.conf "X.Org configuration file" 0644 0:0
 
  }
install_lws
