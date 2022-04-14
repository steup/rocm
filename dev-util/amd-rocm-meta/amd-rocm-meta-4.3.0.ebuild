# Copyright
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Meta package for ROCm 3.8.0"
LICENSE="metapackage"

SLOT="0/$(ver_cut 1-2)"

KEYWORDS="~amd64"

IUSE="debug-tools hip opencl profiling science"

RDEPEND="
	=dev-util/rocminfo-$(ver_cut 1-2)*
	=dev-libs/rocm-smi-lib-$(ver_cut 1-2)*

	opencl? ( >=dev-libs/rocm-opencl-runtime-$(ver_cut 1-2) )
	opencl? ( =dev-util/rocm-clang-ocl-$(ver_cut 1-2)* )

	hip? ( =dev-util/hip-$(ver_cut 1-2)* )

	profiling? ( =dev-util/rocm-bandwidth-test-$(ver_cut 1-2)* )

	debug-tools? ( =dev-libs/rocm-debug-agent-$(ver_cut 1-2)* )
	debug-tools? ( =dev-util/rocprofiler-$(ver_cut 1-2)* )
	debug-tools? ( =dev-util/roctracer-$(ver_cut 1-2)* )

	hip? ( science? ( =sci-libs/hipBLAS-$(ver_cut 1-2)* ) )
	hip? ( science? ( =sci-libs/hipCUB-$(ver_cut 1-2)* ) )
	hip? ( science? ( =sci-libs/hipSPARSE-$(ver_cut 1-2)* ) )

	science? ( =sci-libs/rocPRIM-$(ver_cut 1-2)* )
	science? ( =sci-libs/rocRAND-$(ver_cut 1-2)* )
	science? ( =sci-libs/rocFFT-$(ver_cut 1-2)* )
	science? ( =sci-libs/rocSPARSE-$(ver_cut 1-2)* )
	science? ( =sci-libs/rocThrust-$(ver_cut 1-2)* )
	science? ( =sci-libs/hipCUB-$(ver_cut 1-2)* )
	science? ( =sci-libs/hipSPARSE-$(ver_cut 1-2)* )
	science? ( =sci-libs/rocBLAS-$(ver_cut 1-2)* )
	science? ( =sci-libs/rocSOLVER-$(ver_cut 1-2)* )
	science? ( =sci-libs/rocALUTION-$(ver_cut 1-2)* )
	science? ( =sci-libs/hipBLAS-$(ver_cut 1-2)* )
"






