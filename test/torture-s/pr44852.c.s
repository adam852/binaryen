	.text
	.file	"/b/build/slave/linux/build/src/src/work/gcc/gcc/testsuite/gcc.c-torture/execute/pr44852.c"
	.section	.text.sf,"ax",@progbits
	.hidden	sf
	.globl	sf
	.type	sf,@function
sf:                                     # @sf
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32
# BB#0:                                 # %entry
	#APP
	#NO_APP
.LBB0_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	block
	loop                            # label1:
	i32.const	$push9=, -1
	i32.add 	$push8=, $0, $pop9
	tee_local	$push7=, $3=, $pop8
	i32.load8_u	$push6=, 0($pop7)
	tee_local	$push5=, $2=, $pop6
	i32.const	$push4=, 57
	i32.ne  	$push0=, $pop5, $pop4
	br_if   	2, $pop0        # 2: down to label0
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB0_1 Depth=1
	copy_local	$0=, $3
	i32.ne  	$push2=, $1, $3
	br_if   	0, $pop2        # 0: up to label1
# BB#3:                                 # %if.then
	end_loop                        # label2:
	i32.const	$push10=, 1
	i32.add 	$0=, $3, $pop10
	i32.const	$push3=, 48
	i32.store8	$discard=, 0($1), $pop3
	i32.const	$2=, 49
	i32.store8	$discard=, 0($1), $2
	return  	$0
.LBB0_4:                                # %while.end.loopexit
	end_block                       # label0:
	i32.const	$push1=, 1
	i32.add 	$2=, $2, $pop1
	copy_local	$1=, $3
	i32.store8	$discard=, 0($1), $2
	return  	$0
	.endfunc
.Lfunc_end0:
	.size	sf, .Lfunc_end0-sf

	.section	.text.main,"ax",@progbits
	.hidden	main
	.globl	main
	.type	main,@function
main:                                   # @main
	.result 	i32
	.local  	i32
# BB#0:                                 # %entry
	i32.const	$push19=, __stack_pointer
	i32.load	$push20=, 0($pop19)
	i32.const	$push21=, 16
	i32.sub 	$0=, $pop20, $pop21
	i32.const	$push22=, __stack_pointer
	i32.store	$discard=, 0($pop22), $0
	i32.const	$push26=, 8
	i32.add 	$push27=, $0, $pop26
	i32.const	$push2=, 6
	i32.add 	$push3=, $pop27, $pop2
	i32.const	$push0=, 0
	i32.load8_u	$push1=, .Lmain.s+6($pop0)
	i32.store8	$discard=, 0($pop3):p2align=1, $pop1
	i32.const	$push28=, 8
	i32.add 	$push29=, $0, $pop28
	i32.const	$push5=, 4
	i32.add 	$push6=, $pop29, $pop5
	i32.const	$push18=, 0
	i32.load16_u	$push4=, .Lmain.s+4($pop18):p2align=0
	i32.store16	$discard=, 0($pop6):p2align=2, $pop4
	i32.const	$push17=, 0
	i32.load	$push7=, .Lmain.s($pop17):p2align=0
	i32.store	$discard=, 8($0), $pop7
	block
	i32.const	$push30=, 8
	i32.add 	$push31=, $0, $pop30
	i32.const	$push8=, 2
	i32.or  	$push9=, $pop31, $pop8
	i32.const	$push32=, 8
	i32.add 	$push33=, $0, $pop32
	i32.call	$push10=, sf@FUNCTION, $pop9, $pop33
	i32.const	$push34=, 8
	i32.add 	$push35=, $0, $pop34
	i32.const	$push11=, 1
	i32.or  	$push12=, $pop35, $pop11
	i32.ne  	$push13=, $pop10, $pop12
	br_if   	0, $pop13       # 0: down to label3
# BB#1:                                 # %lor.lhs.false
	i32.const	$push36=, 8
	i32.add 	$push37=, $0, $pop36
	i32.const	$push14=, .L.str
	i32.call	$push15=, strcmp@FUNCTION, $pop37, $pop14
	br_if   	0, $pop15       # 0: down to label3
# BB#2:                                 # %if.end
	i32.const	$push16=, 0
	i32.const	$push25=, __stack_pointer
	i32.const	$push23=, 16
	i32.add 	$push24=, $0, $pop23
	i32.store	$discard=, 0($pop25), $pop24
	return  	$pop16
.LBB1_3:                                # %if.then
	end_block                       # label3:
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end1:
	.size	main, .Lfunc_end1-main

	.type	.Lmain.s,@object        # @main.s
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lmain.s:
	.asciz	"999999"
	.size	.Lmain.s, 7

	.type	.L.str,@object          # @.str
.L.str:
	.asciz	"199999"
	.size	.L.str, 7


	.ident	"clang version 3.9.0 "
