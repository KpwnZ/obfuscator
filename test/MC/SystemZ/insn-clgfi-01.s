# RUN: llvm-mc -triple s390x-linux-gnu -show-encoding %s | FileCheck %s

#CHECK: clgfi	%r0, 0                  # encoding: [0xc2,0x0e,0x00,0x00,0x00,0x00]
#CHECK: clgfi	%r0, 4294967295         # encoding: [0xc2,0x0e,0xff,0xff,0xff,0xff]
#CHECK: clgfi	%r15, 0                 # encoding: [0xc2,0xfe,0x00,0x00,0x00,0x00]

	clgfi	%r0, 0
	clgfi	%r0, (1 << 32) - 1
	clgfi	%r15, 0