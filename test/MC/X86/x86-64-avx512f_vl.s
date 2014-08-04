// RUN: llvm-mc -triple x86_64-unknown-unknown -mcpu=skx --show-encoding %s | FileCheck %s

// CHECK: vmovapd %xmm21, %xmm21
// CHECK:  encoding: [0x62,0xa1,0xfd,0x08,0x28,0xed]
          vmovapd %xmm21, %xmm21

// CHECK: vmovapd %xmm21, %xmm21 {%k3}
// CHECK:  encoding: [0x62,0xa1,0xfd,0x0b,0x28,0xed]
          vmovapd %xmm21, %xmm21 {%k3}

// CHECK: vmovapd %xmm21, %xmm21 {%k3} {z}
// CHECK:  encoding: [0x62,0xa1,0xfd,0x8b,0x28,0xed]
          vmovapd %xmm21, %xmm21 {%k3} {z}

// CHECK: vmovapd (%rcx), %xmm21
// CHECK:  encoding: [0x62,0xe1,0xfd,0x08,0x28,0x29]
          vmovapd (%rcx), %xmm21

// CHECK: vmovapd 291(%rax,%r14,8), %xmm21
// CHECK:  encoding: [0x62,0xa1,0xfd,0x08,0x28,0xac,0xf0,0x23,0x01,0x00,0x00]
          vmovapd 291(%rax,%r14,8), %xmm21

// CHECK: vmovapd 2032(%rdx), %xmm21
// CHECK:  encoding: [0x62,0xe1,0xfd,0x08,0x28,0x6a,0x7f]
          vmovapd 2032(%rdx), %xmm21

// CHECK: vmovapd 2048(%rdx), %xmm21
// CHECK:  encoding: [0x62,0xe1,0xfd,0x08,0x28,0xaa,0x00,0x08,0x00,0x00]
          vmovapd 2048(%rdx), %xmm21

// CHECK: vmovapd -2048(%rdx), %xmm21
// CHECK:  encoding: [0x62,0xe1,0xfd,0x08,0x28,0x6a,0x80]
          vmovapd -2048(%rdx), %xmm21

// CHECK: vmovapd -2064(%rdx), %xmm21
// CHECK:  encoding: [0x62,0xe1,0xfd,0x08,0x28,0xaa,0xf0,0xf7,0xff,0xff]
          vmovapd -2064(%rdx), %xmm21

// CHECK: vmovapd %ymm17, %ymm18
// CHECK:  encoding: [0x62,0xa1,0xfd,0x28,0x28,0xd1]
          vmovapd %ymm17, %ymm18

// CHECK: vmovapd %ymm17, %ymm18 {%k2}
// CHECK:  encoding: [0x62,0xa1,0xfd,0x2a,0x28,0xd1]
          vmovapd %ymm17, %ymm18 {%k2}

// CHECK: vmovapd %ymm17, %ymm18 {%k2} {z}
// CHECK:  encoding: [0x62,0xa1,0xfd,0xaa,0x28,0xd1]
          vmovapd %ymm17, %ymm18 {%k2} {z}

// CHECK: vmovapd (%rcx), %ymm18
// CHECK:  encoding: [0x62,0xe1,0xfd,0x28,0x28,0x11]
          vmovapd (%rcx), %ymm18

// CHECK: vmovapd 291(%rax,%r14,8), %ymm18
// CHECK:  encoding: [0x62,0xa1,0xfd,0x28,0x28,0x94,0xf0,0x23,0x01,0x00,0x00]
          vmovapd 291(%rax,%r14,8), %ymm18

// CHECK: vmovapd 4064(%rdx), %ymm18
// CHECK:  encoding: [0x62,0xe1,0xfd,0x28,0x28,0x52,0x7f]
          vmovapd 4064(%rdx), %ymm18

// CHECK: vmovapd 4096(%rdx), %ymm18
// CHECK:  encoding: [0x62,0xe1,0xfd,0x28,0x28,0x92,0x00,0x10,0x00,0x00]
          vmovapd 4096(%rdx), %ymm18

// CHECK: vmovapd -4096(%rdx), %ymm18
// CHECK:  encoding: [0x62,0xe1,0xfd,0x28,0x28,0x52,0x80]
          vmovapd -4096(%rdx), %ymm18

// CHECK: vmovapd -4128(%rdx), %ymm18
// CHECK:  encoding: [0x62,0xe1,0xfd,0x28,0x28,0x92,0xe0,0xef,0xff,0xff]
          vmovapd -4128(%rdx), %ymm18

// CHECK: vmovaps %xmm29, %xmm22
// CHECK:  encoding: [0x62,0x81,0x7c,0x08,0x28,0xf5]
          vmovaps %xmm29, %xmm22

// CHECK: vmovaps %xmm29, %xmm22 {%k1}
// CHECK:  encoding: [0x62,0x81,0x7c,0x09,0x28,0xf5]
          vmovaps %xmm29, %xmm22 {%k1}

// CHECK: vmovaps %xmm29, %xmm22 {%k1} {z}
// CHECK:  encoding: [0x62,0x81,0x7c,0x89,0x28,0xf5]
          vmovaps %xmm29, %xmm22 {%k1} {z}

// CHECK: vmovaps (%rcx), %xmm22
// CHECK:  encoding: [0x62,0xe1,0x7c,0x08,0x28,0x31]
          vmovaps (%rcx), %xmm22

// CHECK: vmovaps 291(%rax,%r14,8), %xmm22
// CHECK:  encoding: [0x62,0xa1,0x7c,0x08,0x28,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vmovaps 291(%rax,%r14,8), %xmm22

// CHECK: vmovaps 2032(%rdx), %xmm22
// CHECK:  encoding: [0x62,0xe1,0x7c,0x08,0x28,0x72,0x7f]
          vmovaps 2032(%rdx), %xmm22

// CHECK: vmovaps 2048(%rdx), %xmm22
// CHECK:  encoding: [0x62,0xe1,0x7c,0x08,0x28,0xb2,0x00,0x08,0x00,0x00]
          vmovaps 2048(%rdx), %xmm22

// CHECK: vmovaps -2048(%rdx), %xmm22
// CHECK:  encoding: [0x62,0xe1,0x7c,0x08,0x28,0x72,0x80]
          vmovaps -2048(%rdx), %xmm22

// CHECK: vmovaps -2064(%rdx), %xmm22
// CHECK:  encoding: [0x62,0xe1,0x7c,0x08,0x28,0xb2,0xf0,0xf7,0xff,0xff]
          vmovaps -2064(%rdx), %xmm22

// CHECK: vmovaps %ymm28, %ymm25
// CHECK:  encoding: [0x62,0x01,0x7c,0x28,0x28,0xcc]
          vmovaps %ymm28, %ymm25

// CHECK: vmovaps %ymm28, %ymm25 {%k3}
// CHECK:  encoding: [0x62,0x01,0x7c,0x2b,0x28,0xcc]
          vmovaps %ymm28, %ymm25 {%k3}

// CHECK: vmovaps %ymm28, %ymm25 {%k3} {z}
// CHECK:  encoding: [0x62,0x01,0x7c,0xab,0x28,0xcc]
          vmovaps %ymm28, %ymm25 {%k3} {z}

// CHECK: vmovaps (%rcx), %ymm25
// CHECK:  encoding: [0x62,0x61,0x7c,0x28,0x28,0x09]
          vmovaps (%rcx), %ymm25

// CHECK: vmovaps 291(%rax,%r14,8), %ymm25
// CHECK:  encoding: [0x62,0x21,0x7c,0x28,0x28,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vmovaps 291(%rax,%r14,8), %ymm25

// CHECK: vmovaps 4064(%rdx), %ymm25
// CHECK:  encoding: [0x62,0x61,0x7c,0x28,0x28,0x4a,0x7f]
          vmovaps 4064(%rdx), %ymm25

// CHECK: vmovaps 4096(%rdx), %ymm25
// CHECK:  encoding: [0x62,0x61,0x7c,0x28,0x28,0x8a,0x00,0x10,0x00,0x00]
          vmovaps 4096(%rdx), %ymm25

// CHECK: vmovaps -4096(%rdx), %ymm25
// CHECK:  encoding: [0x62,0x61,0x7c,0x28,0x28,0x4a,0x80]
          vmovaps -4096(%rdx), %ymm25

// CHECK: vmovaps -4128(%rdx), %ymm25
// CHECK:  encoding: [0x62,0x61,0x7c,0x28,0x28,0x8a,0xe0,0xef,0xff,0xff]
          vmovaps -4128(%rdx), %ymm25

// CHECK: vmovdqa32 %xmm24, %xmm21
// CHECK:  encoding: [0x62,0x81,0x7d,0x08,0x6f,0xe8]
          vmovdqa32 %xmm24, %xmm21

// CHECK: vmovdqa32 %xmm24, %xmm21 {%k6}
// CHECK:  encoding: [0x62,0x81,0x7d,0x0e,0x6f,0xe8]
          vmovdqa32 %xmm24, %xmm21 {%k6}

// CHECK: vmovdqa32 %xmm24, %xmm21 {%k6} {z}
// CHECK:  encoding: [0x62,0x81,0x7d,0x8e,0x6f,0xe8]
          vmovdqa32 %xmm24, %xmm21 {%k6} {z}

// CHECK: vmovdqa32 (%rcx), %xmm21
// CHECK:  encoding: [0x62,0xe1,0x7d,0x08,0x6f,0x29]
          vmovdqa32 (%rcx), %xmm21

// CHECK: vmovdqa32 291(%rax,%r14,8), %xmm21
// CHECK:  encoding: [0x62,0xa1,0x7d,0x08,0x6f,0xac,0xf0,0x23,0x01,0x00,0x00]
          vmovdqa32 291(%rax,%r14,8), %xmm21

// CHECK: vmovdqa32 2032(%rdx), %xmm21
// CHECK:  encoding: [0x62,0xe1,0x7d,0x08,0x6f,0x6a,0x7f]
          vmovdqa32 2032(%rdx), %xmm21

// CHECK: vmovdqa32 2048(%rdx), %xmm21
// CHECK:  encoding: [0x62,0xe1,0x7d,0x08,0x6f,0xaa,0x00,0x08,0x00,0x00]
          vmovdqa32 2048(%rdx), %xmm21

// CHECK: vmovdqa32 -2048(%rdx), %xmm21
// CHECK:  encoding: [0x62,0xe1,0x7d,0x08,0x6f,0x6a,0x80]
          vmovdqa32 -2048(%rdx), %xmm21

// CHECK: vmovdqa32 -2064(%rdx), %xmm21
// CHECK:  encoding: [0x62,0xe1,0x7d,0x08,0x6f,0xaa,0xf0,0xf7,0xff,0xff]
          vmovdqa32 -2064(%rdx), %xmm21

// CHECK: vmovdqa32 %ymm28, %ymm24
// CHECK:  encoding: [0x62,0x01,0x7d,0x28,0x6f,0xc4]
          vmovdqa32 %ymm28, %ymm24

// CHECK: vmovdqa32 %ymm28, %ymm24 {%k5}
// CHECK:  encoding: [0x62,0x01,0x7d,0x2d,0x6f,0xc4]
          vmovdqa32 %ymm28, %ymm24 {%k5}

// CHECK: vmovdqa32 %ymm28, %ymm24 {%k5} {z}
// CHECK:  encoding: [0x62,0x01,0x7d,0xad,0x6f,0xc4]
          vmovdqa32 %ymm28, %ymm24 {%k5} {z}

// CHECK: vmovdqa32 (%rcx), %ymm24
// CHECK:  encoding: [0x62,0x61,0x7d,0x28,0x6f,0x01]
          vmovdqa32 (%rcx), %ymm24

// CHECK: vmovdqa32 291(%rax,%r14,8), %ymm24
// CHECK:  encoding: [0x62,0x21,0x7d,0x28,0x6f,0x84,0xf0,0x23,0x01,0x00,0x00]
          vmovdqa32 291(%rax,%r14,8), %ymm24

// CHECK: vmovdqa32 4064(%rdx), %ymm24
// CHECK:  encoding: [0x62,0x61,0x7d,0x28,0x6f,0x42,0x7f]
          vmovdqa32 4064(%rdx), %ymm24

// CHECK: vmovdqa32 4096(%rdx), %ymm24
// CHECK:  encoding: [0x62,0x61,0x7d,0x28,0x6f,0x82,0x00,0x10,0x00,0x00]
          vmovdqa32 4096(%rdx), %ymm24

// CHECK: vmovdqa32 -4096(%rdx), %ymm24
// CHECK:  encoding: [0x62,0x61,0x7d,0x28,0x6f,0x42,0x80]
          vmovdqa32 -4096(%rdx), %ymm24

// CHECK: vmovdqa32 -4128(%rdx), %ymm24
// CHECK:  encoding: [0x62,0x61,0x7d,0x28,0x6f,0x82,0xe0,0xef,0xff,0xff]
          vmovdqa32 -4128(%rdx), %ymm24

// CHECK: vmovdqa64 %xmm24, %xmm27
// CHECK:  encoding: [0x62,0x01,0xfd,0x08,0x6f,0xd8]
          vmovdqa64 %xmm24, %xmm27

// CHECK: vmovdqa64 %xmm24, %xmm27 {%k5}
// CHECK:  encoding: [0x62,0x01,0xfd,0x0d,0x6f,0xd8]
          vmovdqa64 %xmm24, %xmm27 {%k5}

// CHECK: vmovdqa64 %xmm24, %xmm27 {%k5} {z}
// CHECK:  encoding: [0x62,0x01,0xfd,0x8d,0x6f,0xd8]
          vmovdqa64 %xmm24, %xmm27 {%k5} {z}

// CHECK: vmovdqa64 (%rcx), %xmm27
// CHECK:  encoding: [0x62,0x61,0xfd,0x08,0x6f,0x19]
          vmovdqa64 (%rcx), %xmm27

// CHECK: vmovdqa64 291(%rax,%r14,8), %xmm27
// CHECK:  encoding: [0x62,0x21,0xfd,0x08,0x6f,0x9c,0xf0,0x23,0x01,0x00,0x00]
          vmovdqa64 291(%rax,%r14,8), %xmm27

// CHECK: vmovdqa64 2032(%rdx), %xmm27
// CHECK:  encoding: [0x62,0x61,0xfd,0x08,0x6f,0x5a,0x7f]
          vmovdqa64 2032(%rdx), %xmm27

// CHECK: vmovdqa64 2048(%rdx), %xmm27
// CHECK:  encoding: [0x62,0x61,0xfd,0x08,0x6f,0x9a,0x00,0x08,0x00,0x00]
          vmovdqa64 2048(%rdx), %xmm27

// CHECK: vmovdqa64 -2048(%rdx), %xmm27
// CHECK:  encoding: [0x62,0x61,0xfd,0x08,0x6f,0x5a,0x80]
          vmovdqa64 -2048(%rdx), %xmm27

// CHECK: vmovdqa64 -2064(%rdx), %xmm27
// CHECK:  encoding: [0x62,0x61,0xfd,0x08,0x6f,0x9a,0xf0,0xf7,0xff,0xff]
          vmovdqa64 -2064(%rdx), %xmm27

// CHECK: vmovdqa64 %ymm29, %ymm30
// CHECK:  encoding: [0x62,0x01,0xfd,0x28,0x6f,0xf5]
          vmovdqa64 %ymm29, %ymm30

// CHECK: vmovdqa64 %ymm29, %ymm30 {%k3}
// CHECK:  encoding: [0x62,0x01,0xfd,0x2b,0x6f,0xf5]
          vmovdqa64 %ymm29, %ymm30 {%k3}

// CHECK: vmovdqa64 %ymm29, %ymm30 {%k3} {z}
// CHECK:  encoding: [0x62,0x01,0xfd,0xab,0x6f,0xf5]
          vmovdqa64 %ymm29, %ymm30 {%k3} {z}

// CHECK: vmovdqa64 (%rcx), %ymm30
// CHECK:  encoding: [0x62,0x61,0xfd,0x28,0x6f,0x31]
          vmovdqa64 (%rcx), %ymm30

// CHECK: vmovdqa64 291(%rax,%r14,8), %ymm30
// CHECK:  encoding: [0x62,0x21,0xfd,0x28,0x6f,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vmovdqa64 291(%rax,%r14,8), %ymm30

// CHECK: vmovdqa64 4064(%rdx), %ymm30
// CHECK:  encoding: [0x62,0x61,0xfd,0x28,0x6f,0x72,0x7f]
          vmovdqa64 4064(%rdx), %ymm30

// CHECK: vmovdqa64 4096(%rdx), %ymm30
// CHECK:  encoding: [0x62,0x61,0xfd,0x28,0x6f,0xb2,0x00,0x10,0x00,0x00]
          vmovdqa64 4096(%rdx), %ymm30

// CHECK: vmovdqa64 -4096(%rdx), %ymm30
// CHECK:  encoding: [0x62,0x61,0xfd,0x28,0x6f,0x72,0x80]
          vmovdqa64 -4096(%rdx), %ymm30

// CHECK: vmovdqa64 -4128(%rdx), %ymm30
// CHECK:  encoding: [0x62,0x61,0xfd,0x28,0x6f,0xb2,0xe0,0xef,0xff,0xff]
          vmovdqa64 -4128(%rdx), %ymm30

// CHECK: vmovdqu32 %xmm19, %xmm29
// CHECK:  encoding: [0x62,0x21,0x7e,0x08,0x6f,0xeb]
          vmovdqu32 %xmm19, %xmm29

// CHECK: vmovdqu32 %xmm19, %xmm29 {%k6}
// CHECK:  encoding: [0x62,0x21,0x7e,0x0e,0x6f,0xeb]
          vmovdqu32 %xmm19, %xmm29 {%k6}

// CHECK: vmovdqu32 %xmm19, %xmm29 {%k6} {z}
// CHECK:  encoding: [0x62,0x21,0x7e,0x8e,0x6f,0xeb]
          vmovdqu32 %xmm19, %xmm29 {%k6} {z}

// CHECK: vmovdqu32 (%rcx), %xmm29
// CHECK:  encoding: [0x62,0x61,0x7e,0x08,0x6f,0x29]
          vmovdqu32 (%rcx), %xmm29

// CHECK: vmovdqu32 291(%rax,%r14,8), %xmm29
// CHECK:  encoding: [0x62,0x21,0x7e,0x08,0x6f,0xac,0xf0,0x23,0x01,0x00,0x00]
          vmovdqu32 291(%rax,%r14,8), %xmm29

// CHECK: vmovdqu32 2032(%rdx), %xmm29
// CHECK:  encoding: [0x62,0x61,0x7e,0x08,0x6f,0x6a,0x7f]
          vmovdqu32 2032(%rdx), %xmm29

// CHECK: vmovdqu32 2048(%rdx), %xmm29
// CHECK:  encoding: [0x62,0x61,0x7e,0x08,0x6f,0xaa,0x00,0x08,0x00,0x00]
          vmovdqu32 2048(%rdx), %xmm29

// CHECK: vmovdqu32 -2048(%rdx), %xmm29
// CHECK:  encoding: [0x62,0x61,0x7e,0x08,0x6f,0x6a,0x80]
          vmovdqu32 -2048(%rdx), %xmm29

// CHECK: vmovdqu32 -2064(%rdx), %xmm29
// CHECK:  encoding: [0x62,0x61,0x7e,0x08,0x6f,0xaa,0xf0,0xf7,0xff,0xff]
          vmovdqu32 -2064(%rdx), %xmm29

// CHECK: vmovdqu32 %ymm18, %ymm17
// CHECK:  encoding: [0x62,0xa1,0x7e,0x28,0x6f,0xca]
          vmovdqu32 %ymm18, %ymm17

// CHECK: vmovdqu32 %ymm18, %ymm17 {%k3}
// CHECK:  encoding: [0x62,0xa1,0x7e,0x2b,0x6f,0xca]
          vmovdqu32 %ymm18, %ymm17 {%k3}

// CHECK: vmovdqu32 %ymm18, %ymm17 {%k3} {z}
// CHECK:  encoding: [0x62,0xa1,0x7e,0xab,0x6f,0xca]
          vmovdqu32 %ymm18, %ymm17 {%k3} {z}

// CHECK: vmovdqu32 (%rcx), %ymm17
// CHECK:  encoding: [0x62,0xe1,0x7e,0x28,0x6f,0x09]
          vmovdqu32 (%rcx), %ymm17

// CHECK: vmovdqu32 291(%rax,%r14,8), %ymm17
// CHECK:  encoding: [0x62,0xa1,0x7e,0x28,0x6f,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vmovdqu32 291(%rax,%r14,8), %ymm17

// CHECK: vmovdqu32 4064(%rdx), %ymm17
// CHECK:  encoding: [0x62,0xe1,0x7e,0x28,0x6f,0x4a,0x7f]
          vmovdqu32 4064(%rdx), %ymm17

// CHECK: vmovdqu32 4096(%rdx), %ymm17
// CHECK:  encoding: [0x62,0xe1,0x7e,0x28,0x6f,0x8a,0x00,0x10,0x00,0x00]
          vmovdqu32 4096(%rdx), %ymm17

// CHECK: vmovdqu32 -4096(%rdx), %ymm17
// CHECK:  encoding: [0x62,0xe1,0x7e,0x28,0x6f,0x4a,0x80]
          vmovdqu32 -4096(%rdx), %ymm17

// CHECK: vmovdqu32 -4128(%rdx), %ymm17
// CHECK:  encoding: [0x62,0xe1,0x7e,0x28,0x6f,0x8a,0xe0,0xef,0xff,0xff]
          vmovdqu32 -4128(%rdx), %ymm17

// CHECK: vmovdqu64 %xmm19, %xmm24
// CHECK:  encoding: [0x62,0x21,0xfe,0x08,0x6f,0xc3]
          vmovdqu64 %xmm19, %xmm24

// CHECK: vmovdqu64 %xmm19, %xmm24 {%k5}
// CHECK:  encoding: [0x62,0x21,0xfe,0x0d,0x6f,0xc3]
          vmovdqu64 %xmm19, %xmm24 {%k5}

// CHECK: vmovdqu64 %xmm19, %xmm24 {%k5} {z}
// CHECK:  encoding: [0x62,0x21,0xfe,0x8d,0x6f,0xc3]
          vmovdqu64 %xmm19, %xmm24 {%k5} {z}

// CHECK: vmovdqu64 (%rcx), %xmm24
// CHECK:  encoding: [0x62,0x61,0xfe,0x08,0x6f,0x01]
          vmovdqu64 (%rcx), %xmm24

// CHECK: vmovdqu64 291(%rax,%r14,8), %xmm24
// CHECK:  encoding: [0x62,0x21,0xfe,0x08,0x6f,0x84,0xf0,0x23,0x01,0x00,0x00]
          vmovdqu64 291(%rax,%r14,8), %xmm24

// CHECK: vmovdqu64 2032(%rdx), %xmm24
// CHECK:  encoding: [0x62,0x61,0xfe,0x08,0x6f,0x42,0x7f]
          vmovdqu64 2032(%rdx), %xmm24

// CHECK: vmovdqu64 2048(%rdx), %xmm24
// CHECK:  encoding: [0x62,0x61,0xfe,0x08,0x6f,0x82,0x00,0x08,0x00,0x00]
          vmovdqu64 2048(%rdx), %xmm24

// CHECK: vmovdqu64 -2048(%rdx), %xmm24
// CHECK:  encoding: [0x62,0x61,0xfe,0x08,0x6f,0x42,0x80]
          vmovdqu64 -2048(%rdx), %xmm24

// CHECK: vmovdqu64 -2064(%rdx), %xmm24
// CHECK:  encoding: [0x62,0x61,0xfe,0x08,0x6f,0x82,0xf0,0xf7,0xff,0xff]
          vmovdqu64 -2064(%rdx), %xmm24

// CHECK: vmovdqu64 %ymm21, %ymm29
// CHECK:  encoding: [0x62,0x21,0xfe,0x28,0x6f,0xed]
          vmovdqu64 %ymm21, %ymm29

// CHECK: vmovdqu64 %ymm21, %ymm29 {%k3}
// CHECK:  encoding: [0x62,0x21,0xfe,0x2b,0x6f,0xed]
          vmovdqu64 %ymm21, %ymm29 {%k3}

// CHECK: vmovdqu64 %ymm21, %ymm29 {%k3} {z}
// CHECK:  encoding: [0x62,0x21,0xfe,0xab,0x6f,0xed]
          vmovdqu64 %ymm21, %ymm29 {%k3} {z}

// CHECK: vmovdqu64 (%rcx), %ymm29
// CHECK:  encoding: [0x62,0x61,0xfe,0x28,0x6f,0x29]
          vmovdqu64 (%rcx), %ymm29

// CHECK: vmovdqu64 291(%rax,%r14,8), %ymm29
// CHECK:  encoding: [0x62,0x21,0xfe,0x28,0x6f,0xac,0xf0,0x23,0x01,0x00,0x00]
          vmovdqu64 291(%rax,%r14,8), %ymm29

// CHECK: vmovdqu64 4064(%rdx), %ymm29
// CHECK:  encoding: [0x62,0x61,0xfe,0x28,0x6f,0x6a,0x7f]
          vmovdqu64 4064(%rdx), %ymm29

// CHECK: vmovdqu64 4096(%rdx), %ymm29
// CHECK:  encoding: [0x62,0x61,0xfe,0x28,0x6f,0xaa,0x00,0x10,0x00,0x00]
          vmovdqu64 4096(%rdx), %ymm29

// CHECK: vmovdqu64 -4096(%rdx), %ymm29
// CHECK:  encoding: [0x62,0x61,0xfe,0x28,0x6f,0x6a,0x80]
          vmovdqu64 -4096(%rdx), %ymm29

// CHECK: vmovdqu64 -4128(%rdx), %ymm29
// CHECK:  encoding: [0x62,0x61,0xfe,0x28,0x6f,0xaa,0xe0,0xef,0xff,0xff]
          vmovdqu64 -4128(%rdx), %ymm29

// CHECK: vmovupd %xmm22, %xmm24
// CHECK:  encoding: [0x62,0x21,0xfd,0x08,0x10,0xc6]
          vmovupd %xmm22, %xmm24

// CHECK: vmovupd %xmm22, %xmm24 {%k6}
// CHECK:  encoding: [0x62,0x21,0xfd,0x0e,0x10,0xc6]
          vmovupd %xmm22, %xmm24 {%k6}

// CHECK: vmovupd %xmm22, %xmm24 {%k6} {z}
// CHECK:  encoding: [0x62,0x21,0xfd,0x8e,0x10,0xc6]
          vmovupd %xmm22, %xmm24 {%k6} {z}

// CHECK: vmovupd (%rcx), %xmm24
// CHECK:  encoding: [0x62,0x61,0xfd,0x08,0x10,0x01]
          vmovupd (%rcx), %xmm24

// CHECK: vmovupd 291(%rax,%r14,8), %xmm24
// CHECK:  encoding: [0x62,0x21,0xfd,0x08,0x10,0x84,0xf0,0x23,0x01,0x00,0x00]
          vmovupd 291(%rax,%r14,8), %xmm24

// CHECK: vmovupd 2032(%rdx), %xmm24
// CHECK:  encoding: [0x62,0x61,0xfd,0x08,0x10,0x42,0x7f]
          vmovupd 2032(%rdx), %xmm24

// CHECK: vmovupd 2048(%rdx), %xmm24
// CHECK:  encoding: [0x62,0x61,0xfd,0x08,0x10,0x82,0x00,0x08,0x00,0x00]
          vmovupd 2048(%rdx), %xmm24

// CHECK: vmovupd -2048(%rdx), %xmm24
// CHECK:  encoding: [0x62,0x61,0xfd,0x08,0x10,0x42,0x80]
          vmovupd -2048(%rdx), %xmm24

// CHECK: vmovupd -2064(%rdx), %xmm24
// CHECK:  encoding: [0x62,0x61,0xfd,0x08,0x10,0x82,0xf0,0xf7,0xff,0xff]
          vmovupd -2064(%rdx), %xmm24

// CHECK: vmovupd %ymm25, %ymm30
// CHECK:  encoding: [0x62,0x01,0xfd,0x28,0x10,0xf1]
          vmovupd %ymm25, %ymm30

// CHECK: vmovupd %ymm25, %ymm30 {%k7}
// CHECK:  encoding: [0x62,0x01,0xfd,0x2f,0x10,0xf1]
          vmovupd %ymm25, %ymm30 {%k7}

// CHECK: vmovupd %ymm25, %ymm30 {%k7} {z}
// CHECK:  encoding: [0x62,0x01,0xfd,0xaf,0x10,0xf1]
          vmovupd %ymm25, %ymm30 {%k7} {z}

// CHECK: vmovupd (%rcx), %ymm30
// CHECK:  encoding: [0x62,0x61,0xfd,0x28,0x10,0x31]
          vmovupd (%rcx), %ymm30

// CHECK: vmovupd 291(%rax,%r14,8), %ymm30
// CHECK:  encoding: [0x62,0x21,0xfd,0x28,0x10,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vmovupd 291(%rax,%r14,8), %ymm30

// CHECK: vmovupd 4064(%rdx), %ymm30
// CHECK:  encoding: [0x62,0x61,0xfd,0x28,0x10,0x72,0x7f]
          vmovupd 4064(%rdx), %ymm30

// CHECK: vmovupd 4096(%rdx), %ymm30
// CHECK:  encoding: [0x62,0x61,0xfd,0x28,0x10,0xb2,0x00,0x10,0x00,0x00]
          vmovupd 4096(%rdx), %ymm30

// CHECK: vmovupd -4096(%rdx), %ymm30
// CHECK:  encoding: [0x62,0x61,0xfd,0x28,0x10,0x72,0x80]
          vmovupd -4096(%rdx), %ymm30

// CHECK: vmovupd -4128(%rdx), %ymm30
// CHECK:  encoding: [0x62,0x61,0xfd,0x28,0x10,0xb2,0xe0,0xef,0xff,0xff]
          vmovupd -4128(%rdx), %ymm30

// CHECK: vmovups %xmm29, %xmm20
// CHECK:  encoding: [0x62,0x81,0x7c,0x08,0x10,0xe5]
          vmovups %xmm29, %xmm20

// CHECK: vmovups %xmm29, %xmm20 {%k6}
// CHECK:  encoding: [0x62,0x81,0x7c,0x0e,0x10,0xe5]
          vmovups %xmm29, %xmm20 {%k6}

// CHECK: vmovups %xmm29, %xmm20 {%k6} {z}
// CHECK:  encoding: [0x62,0x81,0x7c,0x8e,0x10,0xe5]
          vmovups %xmm29, %xmm20 {%k6} {z}

// CHECK: vmovups (%rcx), %xmm20
// CHECK:  encoding: [0x62,0xe1,0x7c,0x08,0x10,0x21]
          vmovups (%rcx), %xmm20

// CHECK: vmovups 291(%rax,%r14,8), %xmm20
// CHECK:  encoding: [0x62,0xa1,0x7c,0x08,0x10,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vmovups 291(%rax,%r14,8), %xmm20

// CHECK: vmovups 2032(%rdx), %xmm20
// CHECK:  encoding: [0x62,0xe1,0x7c,0x08,0x10,0x62,0x7f]
          vmovups 2032(%rdx), %xmm20

// CHECK: vmovups 2048(%rdx), %xmm20
// CHECK:  encoding: [0x62,0xe1,0x7c,0x08,0x10,0xa2,0x00,0x08,0x00,0x00]
          vmovups 2048(%rdx), %xmm20

// CHECK: vmovups -2048(%rdx), %xmm20
// CHECK:  encoding: [0x62,0xe1,0x7c,0x08,0x10,0x62,0x80]
          vmovups -2048(%rdx), %xmm20

// CHECK: vmovups -2064(%rdx), %xmm20
// CHECK:  encoding: [0x62,0xe1,0x7c,0x08,0x10,0xa2,0xf0,0xf7,0xff,0xff]
          vmovups -2064(%rdx), %xmm20

// CHECK: vmovups %ymm26, %ymm21
// CHECK:  encoding: [0x62,0x81,0x7c,0x28,0x10,0xea]
          vmovups %ymm26, %ymm21

// CHECK: vmovups %ymm26, %ymm21 {%k6}
// CHECK:  encoding: [0x62,0x81,0x7c,0x2e,0x10,0xea]
          vmovups %ymm26, %ymm21 {%k6}

// CHECK: vmovups %ymm26, %ymm21 {%k6} {z}
// CHECK:  encoding: [0x62,0x81,0x7c,0xae,0x10,0xea]
          vmovups %ymm26, %ymm21 {%k6} {z}

// CHECK: vmovups (%rcx), %ymm21
// CHECK:  encoding: [0x62,0xe1,0x7c,0x28,0x10,0x29]
          vmovups (%rcx), %ymm21

// CHECK: vmovups 291(%rax,%r14,8), %ymm21
// CHECK:  encoding: [0x62,0xa1,0x7c,0x28,0x10,0xac,0xf0,0x23,0x01,0x00,0x00]
          vmovups 291(%rax,%r14,8), %ymm21

// CHECK: vmovups 4064(%rdx), %ymm21
// CHECK:  encoding: [0x62,0xe1,0x7c,0x28,0x10,0x6a,0x7f]
          vmovups 4064(%rdx), %ymm21

// CHECK: vmovups 4096(%rdx), %ymm21
// CHECK:  encoding: [0x62,0xe1,0x7c,0x28,0x10,0xaa,0x00,0x10,0x00,0x00]
          vmovups 4096(%rdx), %ymm21

// CHECK: vmovups -4096(%rdx), %ymm21
// CHECK:  encoding: [0x62,0xe1,0x7c,0x28,0x10,0x6a,0x80]
          vmovups -4096(%rdx), %ymm21

// CHECK: vmovups -4128(%rdx), %ymm21
// CHECK:  encoding: [0x62,0xe1,0x7c,0x28,0x10,0xaa,0xe0,0xef,0xff,0xff]
          vmovups -4128(%rdx), %ymm21

// CHECK: vmovapd %xmm22, (%rcx)
// CHECK:  encoding: [0x62,0xe1,0xfd,0x08,0x29,0x31]
          vmovapd %xmm22, (%rcx)

// CHECK: vmovapd %xmm22, (%rcx) {%k2}
// CHECK:  encoding: [0x62,0xe1,0xfd,0x0a,0x29,0x31]
          vmovapd %xmm22, (%rcx) {%k2}

// CHECK: vmovapd %xmm22, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0xa1,0xfd,0x08,0x29,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vmovapd %xmm22, 291(%rax,%r14,8)

// CHECK: vmovapd %xmm22, 2032(%rdx)
// CHECK:  encoding: [0x62,0xe1,0xfd,0x08,0x29,0x72,0x7f]
          vmovapd %xmm22, 2032(%rdx)

// CHECK: vmovapd %xmm22, 2048(%rdx)
// CHECK:  encoding: [0x62,0xe1,0xfd,0x08,0x29,0xb2,0x00,0x08,0x00,0x00]
          vmovapd %xmm22, 2048(%rdx)

// CHECK: vmovapd %xmm22, -2048(%rdx)
// CHECK:  encoding: [0x62,0xe1,0xfd,0x08,0x29,0x72,0x80]
          vmovapd %xmm22, -2048(%rdx)

// CHECK: vmovapd %xmm22, -2064(%rdx)
// CHECK:  encoding: [0x62,0xe1,0xfd,0x08,0x29,0xb2,0xf0,0xf7,0xff,0xff]
          vmovapd %xmm22, -2064(%rdx)

// CHECK: vmovapd %ymm17, (%rcx)
// CHECK:  encoding: [0x62,0xe1,0xfd,0x28,0x29,0x09]
          vmovapd %ymm17, (%rcx)

// CHECK: vmovapd %ymm17, (%rcx) {%k6}
// CHECK:  encoding: [0x62,0xe1,0xfd,0x2e,0x29,0x09]
          vmovapd %ymm17, (%rcx) {%k6}

// CHECK: vmovapd %ymm17, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0xa1,0xfd,0x28,0x29,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vmovapd %ymm17, 291(%rax,%r14,8)

// CHECK: vmovapd %ymm17, 4064(%rdx)
// CHECK:  encoding: [0x62,0xe1,0xfd,0x28,0x29,0x4a,0x7f]
          vmovapd %ymm17, 4064(%rdx)

// CHECK: vmovapd %ymm17, 4096(%rdx)
// CHECK:  encoding: [0x62,0xe1,0xfd,0x28,0x29,0x8a,0x00,0x10,0x00,0x00]
          vmovapd %ymm17, 4096(%rdx)

// CHECK: vmovapd %ymm17, -4096(%rdx)
// CHECK:  encoding: [0x62,0xe1,0xfd,0x28,0x29,0x4a,0x80]
          vmovapd %ymm17, -4096(%rdx)

// CHECK: vmovapd %ymm17, -4128(%rdx)
// CHECK:  encoding: [0x62,0xe1,0xfd,0x28,0x29,0x8a,0xe0,0xef,0xff,0xff]
          vmovapd %ymm17, -4128(%rdx)

// CHECK: vmovaps %xmm29, (%rcx)
// CHECK:  encoding: [0x62,0x61,0x7c,0x08,0x29,0x29]
          vmovaps %xmm29, (%rcx)

// CHECK: vmovaps %xmm29, (%rcx) {%k5}
// CHECK:  encoding: [0x62,0x61,0x7c,0x0d,0x29,0x29]
          vmovaps %xmm29, (%rcx) {%k5}

// CHECK: vmovaps %xmm29, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0x21,0x7c,0x08,0x29,0xac,0xf0,0x23,0x01,0x00,0x00]
          vmovaps %xmm29, 291(%rax,%r14,8)

// CHECK: vmovaps %xmm29, 2032(%rdx)
// CHECK:  encoding: [0x62,0x61,0x7c,0x08,0x29,0x6a,0x7f]
          vmovaps %xmm29, 2032(%rdx)

// CHECK: vmovaps %xmm29, 2048(%rdx)
// CHECK:  encoding: [0x62,0x61,0x7c,0x08,0x29,0xaa,0x00,0x08,0x00,0x00]
          vmovaps %xmm29, 2048(%rdx)

// CHECK: vmovaps %xmm29, -2048(%rdx)
// CHECK:  encoding: [0x62,0x61,0x7c,0x08,0x29,0x6a,0x80]
          vmovaps %xmm29, -2048(%rdx)

// CHECK: vmovaps %xmm29, -2064(%rdx)
// CHECK:  encoding: [0x62,0x61,0x7c,0x08,0x29,0xaa,0xf0,0xf7,0xff,0xff]
          vmovaps %xmm29, -2064(%rdx)

// CHECK: vmovaps %ymm28, (%rcx)
// CHECK:  encoding: [0x62,0x61,0x7c,0x28,0x29,0x21]
          vmovaps %ymm28, (%rcx)

// CHECK: vmovaps %ymm28, (%rcx) {%k6}
// CHECK:  encoding: [0x62,0x61,0x7c,0x2e,0x29,0x21]
          vmovaps %ymm28, (%rcx) {%k6}

// CHECK: vmovaps %ymm28, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0x21,0x7c,0x28,0x29,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vmovaps %ymm28, 291(%rax,%r14,8)

// CHECK: vmovaps %ymm28, 4064(%rdx)
// CHECK:  encoding: [0x62,0x61,0x7c,0x28,0x29,0x62,0x7f]
          vmovaps %ymm28, 4064(%rdx)

// CHECK: vmovaps %ymm28, 4096(%rdx)
// CHECK:  encoding: [0x62,0x61,0x7c,0x28,0x29,0xa2,0x00,0x10,0x00,0x00]
          vmovaps %ymm28, 4096(%rdx)

// CHECK: vmovaps %ymm28, -4096(%rdx)
// CHECK:  encoding: [0x62,0x61,0x7c,0x28,0x29,0x62,0x80]
          vmovaps %ymm28, -4096(%rdx)

// CHECK: vmovaps %ymm28, -4128(%rdx)
// CHECK:  encoding: [0x62,0x61,0x7c,0x28,0x29,0xa2,0xe0,0xef,0xff,0xff]
          vmovaps %ymm28, -4128(%rdx)

// CHECK: vmovdqa32 %xmm24, (%rcx)
// CHECK:  encoding: [0x62,0x61,0x7d,0x08,0x7f,0x01]
          vmovdqa32 %xmm24, (%rcx)

// CHECK: vmovdqa32 %xmm24, (%rcx) {%k7}
// CHECK:  encoding: [0x62,0x61,0x7d,0x0f,0x7f,0x01]
          vmovdqa32 %xmm24, (%rcx) {%k7}

// CHECK: vmovdqa32 %xmm24, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0x21,0x7d,0x08,0x7f,0x84,0xf0,0x23,0x01,0x00,0x00]
          vmovdqa32 %xmm24, 291(%rax,%r14,8)

// CHECK: vmovdqa32 %xmm24, 2032(%rdx)
// CHECK:  encoding: [0x62,0x61,0x7d,0x08,0x7f,0x42,0x7f]
          vmovdqa32 %xmm24, 2032(%rdx)

// CHECK: vmovdqa32 %xmm24, 2048(%rdx)
// CHECK:  encoding: [0x62,0x61,0x7d,0x08,0x7f,0x82,0x00,0x08,0x00,0x00]
          vmovdqa32 %xmm24, 2048(%rdx)

// CHECK: vmovdqa32 %xmm24, -2048(%rdx)
// CHECK:  encoding: [0x62,0x61,0x7d,0x08,0x7f,0x42,0x80]
          vmovdqa32 %xmm24, -2048(%rdx)

// CHECK: vmovdqa32 %xmm24, -2064(%rdx)
// CHECK:  encoding: [0x62,0x61,0x7d,0x08,0x7f,0x82,0xf0,0xf7,0xff,0xff]
          vmovdqa32 %xmm24, -2064(%rdx)

// CHECK: vmovdqa32 %ymm29, (%rcx)
// CHECK:  encoding: [0x62,0x61,0x7d,0x28,0x7f,0x29]
          vmovdqa32 %ymm29, (%rcx)

// CHECK: vmovdqa32 %ymm29, (%rcx) {%k7}
// CHECK:  encoding: [0x62,0x61,0x7d,0x2f,0x7f,0x29]
          vmovdqa32 %ymm29, (%rcx) {%k7}

// CHECK: vmovdqa32 %ymm29, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0x21,0x7d,0x28,0x7f,0xac,0xf0,0x23,0x01,0x00,0x00]
          vmovdqa32 %ymm29, 291(%rax,%r14,8)

// CHECK: vmovdqa32 %ymm29, 4064(%rdx)
// CHECK:  encoding: [0x62,0x61,0x7d,0x28,0x7f,0x6a,0x7f]
          vmovdqa32 %ymm29, 4064(%rdx)

// CHECK: vmovdqa32 %ymm29, 4096(%rdx)
// CHECK:  encoding: [0x62,0x61,0x7d,0x28,0x7f,0xaa,0x00,0x10,0x00,0x00]
          vmovdqa32 %ymm29, 4096(%rdx)

// CHECK: vmovdqa32 %ymm29, -4096(%rdx)
// CHECK:  encoding: [0x62,0x61,0x7d,0x28,0x7f,0x6a,0x80]
          vmovdqa32 %ymm29, -4096(%rdx)

// CHECK: vmovdqa32 %ymm29, -4128(%rdx)
// CHECK:  encoding: [0x62,0x61,0x7d,0x28,0x7f,0xaa,0xe0,0xef,0xff,0xff]
          vmovdqa32 %ymm29, -4128(%rdx)

// CHECK: vmovdqa64 %xmm17, (%rcx)
// CHECK:  encoding: [0x62,0xe1,0xfd,0x08,0x7f,0x09]
          vmovdqa64 %xmm17, (%rcx)

// CHECK: vmovdqa64 %xmm17, (%rcx) {%k7}
// CHECK:  encoding: [0x62,0xe1,0xfd,0x0f,0x7f,0x09]
          vmovdqa64 %xmm17, (%rcx) {%k7}

// CHECK: vmovdqa64 %xmm17, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0xa1,0xfd,0x08,0x7f,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vmovdqa64 %xmm17, 291(%rax,%r14,8)

// CHECK: vmovdqa64 %xmm17, 2032(%rdx)
// CHECK:  encoding: [0x62,0xe1,0xfd,0x08,0x7f,0x4a,0x7f]
          vmovdqa64 %xmm17, 2032(%rdx)

// CHECK: vmovdqa64 %xmm17, 2048(%rdx)
// CHECK:  encoding: [0x62,0xe1,0xfd,0x08,0x7f,0x8a,0x00,0x08,0x00,0x00]
          vmovdqa64 %xmm17, 2048(%rdx)

// CHECK: vmovdqa64 %xmm17, -2048(%rdx)
// CHECK:  encoding: [0x62,0xe1,0xfd,0x08,0x7f,0x4a,0x80]
          vmovdqa64 %xmm17, -2048(%rdx)

// CHECK: vmovdqa64 %xmm17, -2064(%rdx)
// CHECK:  encoding: [0x62,0xe1,0xfd,0x08,0x7f,0x8a,0xf0,0xf7,0xff,0xff]
          vmovdqa64 %xmm17, -2064(%rdx)

// CHECK: vmovdqa64 %ymm24, (%rcx)
// CHECK:  encoding: [0x62,0x61,0xfd,0x28,0x7f,0x01]
          vmovdqa64 %ymm24, (%rcx)

// CHECK: vmovdqa64 %ymm24, (%rcx) {%k2}
// CHECK:  encoding: [0x62,0x61,0xfd,0x2a,0x7f,0x01]
          vmovdqa64 %ymm24, (%rcx) {%k2}

// CHECK: vmovdqa64 %ymm24, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0x21,0xfd,0x28,0x7f,0x84,0xf0,0x23,0x01,0x00,0x00]
          vmovdqa64 %ymm24, 291(%rax,%r14,8)

// CHECK: vmovdqa64 %ymm24, 4064(%rdx)
// CHECK:  encoding: [0x62,0x61,0xfd,0x28,0x7f,0x42,0x7f]
          vmovdqa64 %ymm24, 4064(%rdx)

// CHECK: vmovdqa64 %ymm24, 4096(%rdx)
// CHECK:  encoding: [0x62,0x61,0xfd,0x28,0x7f,0x82,0x00,0x10,0x00,0x00]
          vmovdqa64 %ymm24, 4096(%rdx)

// CHECK: vmovdqa64 %ymm24, -4096(%rdx)
// CHECK:  encoding: [0x62,0x61,0xfd,0x28,0x7f,0x42,0x80]
          vmovdqa64 %ymm24, -4096(%rdx)

// CHECK: vmovdqa64 %ymm24, -4128(%rdx)
// CHECK:  encoding: [0x62,0x61,0xfd,0x28,0x7f,0x82,0xe0,0xef,0xff,0xff]
          vmovdqa64 %ymm24, -4128(%rdx)

// CHECK: vmovdqu32 %xmm17, (%rcx)
// CHECK:  encoding: [0x62,0xe1,0x7e,0x08,0x7f,0x09]
          vmovdqu32 %xmm17, (%rcx)

// CHECK: vmovdqu32 %xmm17, (%rcx) {%k4}
// CHECK:  encoding: [0x62,0xe1,0x7e,0x0c,0x7f,0x09]
          vmovdqu32 %xmm17, (%rcx) {%k4}

// CHECK: vmovdqu32 %xmm17, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0xa1,0x7e,0x08,0x7f,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vmovdqu32 %xmm17, 291(%rax,%r14,8)

// CHECK: vmovdqu32 %xmm17, 2032(%rdx)
// CHECK:  encoding: [0x62,0xe1,0x7e,0x08,0x7f,0x4a,0x7f]
          vmovdqu32 %xmm17, 2032(%rdx)

// CHECK: vmovdqu32 %xmm17, 2048(%rdx)
// CHECK:  encoding: [0x62,0xe1,0x7e,0x08,0x7f,0x8a,0x00,0x08,0x00,0x00]
          vmovdqu32 %xmm17, 2048(%rdx)

// CHECK: vmovdqu32 %xmm17, -2048(%rdx)
// CHECK:  encoding: [0x62,0xe1,0x7e,0x08,0x7f,0x4a,0x80]
          vmovdqu32 %xmm17, -2048(%rdx)

// CHECK: vmovdqu32 %xmm17, -2064(%rdx)
// CHECK:  encoding: [0x62,0xe1,0x7e,0x08,0x7f,0x8a,0xf0,0xf7,0xff,0xff]
          vmovdqu32 %xmm17, -2064(%rdx)

// CHECK: vmovdqu32 %ymm20, (%rcx)
// CHECK:  encoding: [0x62,0xe1,0x7e,0x28,0x7f,0x21]
          vmovdqu32 %ymm20, (%rcx)

// CHECK: vmovdqu32 %ymm20, (%rcx) {%k1}
// CHECK:  encoding: [0x62,0xe1,0x7e,0x29,0x7f,0x21]
          vmovdqu32 %ymm20, (%rcx) {%k1}

// CHECK: vmovdqu32 %ymm20, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0xa1,0x7e,0x28,0x7f,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vmovdqu32 %ymm20, 291(%rax,%r14,8)

// CHECK: vmovdqu32 %ymm20, 4064(%rdx)
// CHECK:  encoding: [0x62,0xe1,0x7e,0x28,0x7f,0x62,0x7f]
          vmovdqu32 %ymm20, 4064(%rdx)

// CHECK: vmovdqu32 %ymm20, 4096(%rdx)
// CHECK:  encoding: [0x62,0xe1,0x7e,0x28,0x7f,0xa2,0x00,0x10,0x00,0x00]
          vmovdqu32 %ymm20, 4096(%rdx)

// CHECK: vmovdqu32 %ymm20, -4096(%rdx)
// CHECK:  encoding: [0x62,0xe1,0x7e,0x28,0x7f,0x62,0x80]
          vmovdqu32 %ymm20, -4096(%rdx)

// CHECK: vmovdqu32 %ymm20, -4128(%rdx)
// CHECK:  encoding: [0x62,0xe1,0x7e,0x28,0x7f,0xa2,0xe0,0xef,0xff,0xff]
          vmovdqu32 %ymm20, -4128(%rdx)

// CHECK: vmovdqu64 %xmm20, (%rcx)
// CHECK:  encoding: [0x62,0xe1,0xfe,0x08,0x7f,0x21]
          vmovdqu64 %xmm20, (%rcx)

// CHECK: vmovdqu64 %xmm20, (%rcx) {%k6}
// CHECK:  encoding: [0x62,0xe1,0xfe,0x0e,0x7f,0x21]
          vmovdqu64 %xmm20, (%rcx) {%k6}

// CHECK: vmovdqu64 %xmm20, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0xa1,0xfe,0x08,0x7f,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vmovdqu64 %xmm20, 291(%rax,%r14,8)

// CHECK: vmovdqu64 %xmm20, 2032(%rdx)
// CHECK:  encoding: [0x62,0xe1,0xfe,0x08,0x7f,0x62,0x7f]
          vmovdqu64 %xmm20, 2032(%rdx)

// CHECK: vmovdqu64 %xmm20, 2048(%rdx)
// CHECK:  encoding: [0x62,0xe1,0xfe,0x08,0x7f,0xa2,0x00,0x08,0x00,0x00]
          vmovdqu64 %xmm20, 2048(%rdx)

// CHECK: vmovdqu64 %xmm20, -2048(%rdx)
// CHECK:  encoding: [0x62,0xe1,0xfe,0x08,0x7f,0x62,0x80]
          vmovdqu64 %xmm20, -2048(%rdx)

// CHECK: vmovdqu64 %xmm20, -2064(%rdx)
// CHECK:  encoding: [0x62,0xe1,0xfe,0x08,0x7f,0xa2,0xf0,0xf7,0xff,0xff]
          vmovdqu64 %xmm20, -2064(%rdx)

// CHECK: vmovdqu64 %ymm19, (%rcx)
// CHECK:  encoding: [0x62,0xe1,0xfe,0x28,0x7f,0x19]
          vmovdqu64 %ymm19, (%rcx)

// CHECK: vmovdqu64 %ymm19, (%rcx) {%k7}
// CHECK:  encoding: [0x62,0xe1,0xfe,0x2f,0x7f,0x19]
          vmovdqu64 %ymm19, (%rcx) {%k7}

// CHECK: vmovdqu64 %ymm19, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0xa1,0xfe,0x28,0x7f,0x9c,0xf0,0x23,0x01,0x00,0x00]
          vmovdqu64 %ymm19, 291(%rax,%r14,8)

// CHECK: vmovdqu64 %ymm19, 4064(%rdx)
// CHECK:  encoding: [0x62,0xe1,0xfe,0x28,0x7f,0x5a,0x7f]
          vmovdqu64 %ymm19, 4064(%rdx)

// CHECK: vmovdqu64 %ymm19, 4096(%rdx)
// CHECK:  encoding: [0x62,0xe1,0xfe,0x28,0x7f,0x9a,0x00,0x10,0x00,0x00]
          vmovdqu64 %ymm19, 4096(%rdx)

// CHECK: vmovdqu64 %ymm19, -4096(%rdx)
// CHECK:  encoding: [0x62,0xe1,0xfe,0x28,0x7f,0x5a,0x80]
          vmovdqu64 %ymm19, -4096(%rdx)

// CHECK: vmovdqu64 %ymm19, -4128(%rdx)
// CHECK:  encoding: [0x62,0xe1,0xfe,0x28,0x7f,0x9a,0xe0,0xef,0xff,0xff]
          vmovdqu64 %ymm19, -4128(%rdx)

// CHECK: vmovupd %xmm22, (%rcx)
// CHECK:  encoding: [0x62,0xe1,0xfd,0x08,0x11,0x31]
          vmovupd %xmm22, (%rcx)

// CHECK: vmovupd %xmm22, (%rcx) {%k7}
// CHECK:  encoding: [0x62,0xe1,0xfd,0x0f,0x11,0x31]
          vmovupd %xmm22, (%rcx) {%k7}

// CHECK: vmovupd %xmm22, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0xa1,0xfd,0x08,0x11,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vmovupd %xmm22, 291(%rax,%r14,8)

// CHECK: vmovupd %xmm22, 2032(%rdx)
// CHECK:  encoding: [0x62,0xe1,0xfd,0x08,0x11,0x72,0x7f]
          vmovupd %xmm22, 2032(%rdx)

// CHECK: vmovupd %xmm22, 2048(%rdx)
// CHECK:  encoding: [0x62,0xe1,0xfd,0x08,0x11,0xb2,0x00,0x08,0x00,0x00]
          vmovupd %xmm22, 2048(%rdx)

// CHECK: vmovupd %xmm22, -2048(%rdx)
// CHECK:  encoding: [0x62,0xe1,0xfd,0x08,0x11,0x72,0x80]
          vmovupd %xmm22, -2048(%rdx)

// CHECK: vmovupd %xmm22, -2064(%rdx)
// CHECK:  encoding: [0x62,0xe1,0xfd,0x08,0x11,0xb2,0xf0,0xf7,0xff,0xff]
          vmovupd %xmm22, -2064(%rdx)

// CHECK: vmovupd %ymm28, (%rcx)
// CHECK:  encoding: [0x62,0x61,0xfd,0x28,0x11,0x21]
          vmovupd %ymm28, (%rcx)

// CHECK: vmovupd %ymm28, (%rcx) {%k1}
// CHECK:  encoding: [0x62,0x61,0xfd,0x29,0x11,0x21]
          vmovupd %ymm28, (%rcx) {%k1}

// CHECK: vmovupd %ymm28, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0x21,0xfd,0x28,0x11,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vmovupd %ymm28, 291(%rax,%r14,8)

// CHECK: vmovupd %ymm28, 4064(%rdx)
// CHECK:  encoding: [0x62,0x61,0xfd,0x28,0x11,0x62,0x7f]
          vmovupd %ymm28, 4064(%rdx)

// CHECK: vmovupd %ymm28, 4096(%rdx)
// CHECK:  encoding: [0x62,0x61,0xfd,0x28,0x11,0xa2,0x00,0x10,0x00,0x00]
          vmovupd %ymm28, 4096(%rdx)

// CHECK: vmovupd %ymm28, -4096(%rdx)
// CHECK:  encoding: [0x62,0x61,0xfd,0x28,0x11,0x62,0x80]
          vmovupd %ymm28, -4096(%rdx)

// CHECK: vmovupd %ymm28, -4128(%rdx)
// CHECK:  encoding: [0x62,0x61,0xfd,0x28,0x11,0xa2,0xe0,0xef,0xff,0xff]
          vmovupd %ymm28, -4128(%rdx)

// CHECK: vmovups %xmm26, (%rcx)
// CHECK:  encoding: [0x62,0x61,0x7c,0x08,0x11,0x11]
          vmovups %xmm26, (%rcx)

// CHECK: vmovups %xmm26, (%rcx) {%k5}
// CHECK:  encoding: [0x62,0x61,0x7c,0x0d,0x11,0x11]
          vmovups %xmm26, (%rcx) {%k5}

// CHECK: vmovups %xmm26, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0x21,0x7c,0x08,0x11,0x94,0xf0,0x23,0x01,0x00,0x00]
          vmovups %xmm26, 291(%rax,%r14,8)

// CHECK: vmovups %xmm26, 2032(%rdx)
// CHECK:  encoding: [0x62,0x61,0x7c,0x08,0x11,0x52,0x7f]
          vmovups %xmm26, 2032(%rdx)

// CHECK: vmovups %xmm26, 2048(%rdx)
// CHECK:  encoding: [0x62,0x61,0x7c,0x08,0x11,0x92,0x00,0x08,0x00,0x00]
          vmovups %xmm26, 2048(%rdx)

// CHECK: vmovups %xmm26, -2048(%rdx)
// CHECK:  encoding: [0x62,0x61,0x7c,0x08,0x11,0x52,0x80]
          vmovups %xmm26, -2048(%rdx)

// CHECK: vmovups %xmm26, -2064(%rdx)
// CHECK:  encoding: [0x62,0x61,0x7c,0x08,0x11,0x92,0xf0,0xf7,0xff,0xff]
          vmovups %xmm26, -2064(%rdx)

// CHECK: vmovups %ymm23, (%rcx)
// CHECK:  encoding: [0x62,0xe1,0x7c,0x28,0x11,0x39]
          vmovups %ymm23, (%rcx)

// CHECK: vmovups %ymm23, (%rcx) {%k3}
// CHECK:  encoding: [0x62,0xe1,0x7c,0x2b,0x11,0x39]
          vmovups %ymm23, (%rcx) {%k3}

// CHECK: vmovups %ymm23, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0xa1,0x7c,0x28,0x11,0xbc,0xf0,0x23,0x01,0x00,0x00]
          vmovups %ymm23, 291(%rax,%r14,8)

// CHECK: vmovups %ymm23, 4064(%rdx)
// CHECK:  encoding: [0x62,0xe1,0x7c,0x28,0x11,0x7a,0x7f]
          vmovups %ymm23, 4064(%rdx)

// CHECK: vmovups %ymm23, 4096(%rdx)
// CHECK:  encoding: [0x62,0xe1,0x7c,0x28,0x11,0xba,0x00,0x10,0x00,0x00]
          vmovups %ymm23, 4096(%rdx)

// CHECK: vmovups %ymm23, -4096(%rdx)
// CHECK:  encoding: [0x62,0xe1,0x7c,0x28,0x11,0x7a,0x80]
          vmovups %ymm23, -4096(%rdx)

// CHECK: vmovups %ymm23, -4128(%rdx)
// CHECK:  encoding: [0x62,0xe1,0x7c,0x28,0x11,0xba,0xe0,0xef,0xff,0xff]
          vmovups %ymm23, -4128(%rdx)
