ым
Зџ
B
AssignVariableOp
resource
value"dtype"
dtypetypeИ
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
A
BroadcastArgs
s0"T
s1"T
r0"T"
Ttype0:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И
>
Minimum
x"T
y"T
z"T"
Ttype:
2	
®
Multinomial
logits"T
num_samples
output"output_dtype"
seedint "
seed2int "
Ttype:
2	" 
output_dtypetype0	:
2	И

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
≥
PartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
Њ
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring И
@
StaticRegexFullMatch	
input

output
"
patternstring
ц
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.6.32v2.6.2-194-g92a6bb065498Еь
d
VariableVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name
Variable
]
Variable/Read/ReadVariableOpReadVariableOpVariable*
_output_shapes
: *
dtype0	
К
sequential/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@d*(
shared_namesequential/dense/kernel
Г
+sequential/dense/kernel/Read/ReadVariableOpReadVariableOpsequential/dense/kernel*
_output_shapes

:@d*
dtype0
В
sequential/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*&
shared_namesequential/dense/bias
{
)sequential/dense/bias/Read/ReadVariableOpReadVariableOpsequential/dense/bias*
_output_shapes
:d*
dtype0
О
sequential/dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d@**
shared_namesequential/dense_1/kernel
З
-sequential/dense_1/kernel/Read/ReadVariableOpReadVariableOpsequential/dense_1/kernel*
_output_shapes

:d@*
dtype0
Ж
sequential/dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_namesequential/dense_1/bias

+sequential/dense_1/bias/Read/ReadVariableOpReadVariableOpsequential/dense_1/bias*
_output_shapes
:@*
dtype0

NoOpNoOp
И
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*√
valueєBґ Bѓ
T

train_step
metadata
model_variables
_all_assets

signatures
CA
VARIABLE_VALUEVariable%train_step/.ATTRIBUTES/VARIABLE_VALUE
 

0
1
2
	3


0
 
YW
VARIABLE_VALUEsequential/dense/kernel,model_variables/0/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEsequential/dense/bias,model_variables/1/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEsequential/dense_1/kernel,model_variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEsequential/dense_1/bias,model_variables/3/.ATTRIBUTES/VARIABLE_VALUE

ref
1
А
_sequential_layers
_layer_has_state
regularization_losses
	variables
trainable_variables
	keras_api

0
1
2
3
 
 

0
1
2
	3

0
1
2
	3
≠
non_trainable_variables
metrics
regularization_losses
layer_regularization_losses
layer_metrics
	variables

layers
trainable_variables
R
regularization_losses
	variables
trainable_variables
	keras_api
h

kernel
bias
regularization_losses
 	variables
!trainable_variables
"	keras_api
h

kernel
	bias
#regularization_losses
$	variables
%trainable_variables
&	keras_api
R
'regularization_losses
(	variables
)trainable_variables
*	keras_api
 
 
 
 

0
1
2
3
 
 
 
≠
+non_trainable_variables
,metrics
regularization_losses
-layer_regularization_losses
.layer_metrics
	variables

/layers
trainable_variables
 

0
1

0
1
≠
0non_trainable_variables
1metrics
regularization_losses
2layer_regularization_losses
3layer_metrics
 	variables

4layers
!trainable_variables
 

0
	1

0
	1
≠
5non_trainable_variables
6metrics
#regularization_losses
7layer_regularization_losses
8layer_metrics
$	variables

9layers
%trainable_variables
 
 
 
≠
:non_trainable_variables
;metrics
'regularization_losses
<layer_regularization_losses
=layer_metrics
(	variables

>layers
)trainable_variables
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
l
action_0/discountPlaceholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€

action_0/observationPlaceholder*+
_output_shapes
:€€€€€€€€€*
dtype0* 
shape:€€€€€€€€€
j
action_0/rewardPlaceholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
m
action_0/step_typePlaceholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
‘
StatefulPartitionedCallStatefulPartitionedCallaction_0/discountaction_0/observationaction_0/rewardaction_0/step_typesequential/dense/kernelsequential/dense/biassequential/dense_1/kernelsequential/dense_1/bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *#
_output_shapes
:€€€€€€€€€*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В */
f*R(
&__inference_signature_wrapper_78527627
]
get_initial_state_batch_sizePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ы
PartitionedCallPartitionedCallget_initial_state_batch_size*
Tin
2*

Tout
 *
_collective_manager_ids
 * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В */
f*R(
&__inference_signature_wrapper_78527639
№
PartitionedCall_1PartitionedCall*	
Tin
 *

Tout
 *
_collective_manager_ids
 * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В */
f*R(
&__inference_signature_wrapper_78527661
Ч
StatefulPartitionedCall_1StatefulPartitionedCallVariable*
Tin
2*
Tout
2	*
_collective_manager_ids
 *
_output_shapes
: *#
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В */
f*R(
&__inference_signature_wrapper_78527654
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ф
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameVariable/Read/ReadVariableOp+sequential/dense/kernel/Read/ReadVariableOp)sequential/dense/bias/Read/ReadVariableOp-sequential/dense_1/kernel/Read/ReadVariableOp+sequential/dense_1/bias/Read/ReadVariableOpConst*
Tin
	2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В **
f%R#
!__inference__traced_save_78527867
Л
StatefulPartitionedCall_3StatefulPartitionedCallsaver_filenameVariablesequential/dense/kernelsequential/dense/biassequential/dense_1/kernelsequential/dense_1/bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *-
f(R&
$__inference__traced_restore_78527892Х 
X

__inference_<lambda>_80*(
_construction_contextkEagerRuntime*
_input_shapes 
І
э
,__inference_function_with_signature_78527609
	step_type

reward
discount
observation
unknown:@d
	unknown_0:d
	unknown_1:d@
	unknown_2:@
identityИҐStatefulPartitionedCallХ
StatefulPartitionedCallStatefulPartitionedCall	step_typerewarddiscountobservationunknown	unknown_0	unknown_1	unknown_2*
Tin

2*
Tout
2*
_collective_manager_ids
 *#
_output_shapes
:€€€€€€€€€*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *3
f.R,
*__inference_polymorphic_action_fn_785275982
StatefulPartitionedCallw
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*#
_output_shapes
:€€€€€€€€€2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
#
_output_shapes
:€€€€€€€€€
%
_user_specified_name0/step_type:MI
#
_output_shapes
:€€€€€€€€€
"
_user_specified_name
0/reward:OK
#
_output_shapes
:€€€€€€€€€
$
_user_specified_name
0/discount:ZV
+
_output_shapes
:€€€€€€€€€
'
_user_specified_name0/observation
њ
8
&__inference_get_initial_state_78527824

batch_size*(
_construction_contextkEagerRuntime*
_input_shapes
: :B >

_output_shapes
: 
$
_user_specified_name
batch_size
Џ
>
,__inference_function_with_signature_78527634

batch_sizeТ
PartitionedCallPartitionedCall
batch_size*
Tin
2*

Tout
 *
_collective_manager_ids
 *
_output_shapes
 * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В */
f*R(
&__inference_get_initial_state_785276332
PartitionedCall*(
_construction_contextkEagerRuntime*
_input_shapes
: :B >

_output_shapes
: 
$
_user_specified_name
batch_size
у
(
&__inference_signature_wrapper_78527661Й
PartitionedCallPartitionedCall*	
Tin
 *

Tout
 *
_collective_manager_ids
 *
_output_shapes
 * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *5
f0R.
,__inference_function_with_signature_785276572
PartitionedCall*(
_construction_contextkEagerRuntime*
_input_shapes 
о
ч
!__inference__traced_save_78527867
file_prefix'
#savev2_variable_read_readvariableop	6
2savev2_sequential_dense_kernel_read_readvariableop4
0savev2_sequential_dense_bias_read_readvariableop8
4savev2_sequential_dense_1_kernel_read_readvariableop6
2savev2_sequential_dense_1_bias_read_readvariableop
savev2_const

identity_1ИҐMergeV2CheckpointsП
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1Л
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard¶
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameА
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Т
valueИBЕB%train_step/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/0/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/1/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/2/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/3/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesФ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B B B B 2
SaveV2/shape_and_slicesі
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0#savev2_variable_read_readvariableop2savev2_sequential_dense_kernel_read_readvariableop0savev2_sequential_dense_bias_read_readvariableop4savev2_sequential_dense_1_kernel_read_readvariableop2savev2_sequential_dense_1_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes

2	2
SaveV2Ї
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes°
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1c
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*9
_input_shapes(
&: : :@d:d:d@:@: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:

_output_shapes
: :$ 

_output_shapes

:@d: 

_output_shapes
:d:$ 

_output_shapes

:d@: 

_output_shapes
:@:

_output_shapes
: 
К
f
&__inference_signature_wrapper_78527654
unknown:	 
identity	ИҐStatefulPartitionedCallµ
StatefulPartitionedCallStatefulPartitionedCallunknown*
Tin
2*
Tout
2	*
_collective_manager_ids
 *
_output_shapes
: *#
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *5
f0R.
,__inference_function_with_signature_785276462
StatefulPartitionedCallj
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0	*
_output_shapes
: 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 22
StatefulPartitionedCallStatefulPartitionedCall
ј
∆
$__inference__traced_restore_78527892
file_prefix#
assignvariableop_variable:	 <
*assignvariableop_1_sequential_dense_kernel:@d6
(assignvariableop_2_sequential_dense_bias:d>
,assignvariableop_3_sequential_dense_1_kernel:d@8
*assignvariableop_4_sequential_dense_1_bias:@

identity_6ИҐAssignVariableOpҐAssignVariableOp_1ҐAssignVariableOp_2ҐAssignVariableOp_3ҐAssignVariableOp_4Ж
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Т
valueИBЕB%train_step/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/0/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/1/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/2/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/3/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesЪ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B B B B 2
RestoreV2/shape_and_slices…
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*,
_output_shapes
::::::*
dtypes

2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0	*
_output_shapes
:2

IdentityШ
AssignVariableOpAssignVariableOpassignvariableop_variableIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1ѓ
AssignVariableOp_1AssignVariableOp*assignvariableop_1_sequential_dense_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2≠
AssignVariableOp_2AssignVariableOp(assignvariableop_2_sequential_dense_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3±
AssignVariableOp_3AssignVariableOp,assignvariableop_3_sequential_dense_1_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4ѓ
AssignVariableOp_4AssignVariableOp*assignvariableop_4_sequential_dense_1_biasIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpѕ

Identity_5Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_5c

Identity_6IdentityIdentity_5:output:0^NoOp_1*
T0*
_output_shapes
: 2

Identity_6є
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"!

identity_6Identity_6:output:0*
_input_shapes
: : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_4:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
∞f
”
*__inference_polymorphic_action_fn_78527790
time_step_step_type
time_step_reward
time_step_discount
time_step_observationA
/sequential_dense_matmul_readvariableop_resource:@d>
0sequential_dense_biasadd_readvariableop_resource:dC
1sequential_dense_1_matmul_readvariableop_resource:d@@
2sequential_dense_1_biasadd_readvariableop_resource:@
identityИҐ'sequential/dense/BiasAdd/ReadVariableOpҐ&sequential/dense/MatMul/ReadVariableOpҐ)sequential/dense_1/BiasAdd/ReadVariableOpҐ(sequential/dense_1/MatMul/ReadVariableOpw
sequential/lambda/ShapeShapetime_step_observation*
T0*
_output_shapes
:2
sequential/lambda/Shape~
sequential/lambda/Cast/xConst*
_output_shapes
:*
dtype0*
valueB:@2
sequential/lambda/Cast/xП
sequential/lambda/CastCast!sequential/lambda/Cast/x:output:0*

DstT0	*

SrcT0*
_output_shapes
:2
sequential/lambda/CastШ
%sequential/lambda/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%sequential/lambda/strided_slice/stack•
'sequential/lambda/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€2)
'sequential/lambda/strided_slice/stack_1Ь
'sequential/lambda/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'sequential/lambda/strided_slice/stack_2ћ
sequential/lambda/strided_sliceStridedSlice sequential/lambda/Shape:output:0.sequential/lambda/strided_slice/stack:output:00sequential/lambda/strided_slice/stack_1:output:00sequential/lambda/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2!
sequential/lambda/strided_sliceЪ
sequential/lambda/Cast_1Cast(sequential/lambda/strided_slice:output:0*

DstT0	*

SrcT0*
_output_shapes
:2
sequential/lambda/Cast_1А
sequential/lambda/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential/lambda/concat/axis–
sequential/lambda/concatConcatV2sequential/lambda/Cast_1:y:0sequential/lambda/Cast:y:0&sequential/lambda/concat/axis:output:0*
N*
T0	*
_output_shapes
:2
sequential/lambda/concatї
sequential/lambda/ReshapeReshapetime_step_observation!sequential/lambda/concat:output:0*
T0*
Tshape0	*'
_output_shapes
:€€€€€€€€€@2
sequential/lambda/Reshapeј
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource*
_output_shapes

:@d*
dtype02(
&sequential/dense/MatMul/ReadVariableOp¬
sequential/dense/MatMulMatMul"sequential/lambda/Reshape:output:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€d2
sequential/dense/MatMulњ
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02)
'sequential/dense/BiasAdd/ReadVariableOp≈
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€d2
sequential/dense/BiasAddЛ
sequential/dense/ReluRelu!sequential/dense/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€d2
sequential/dense/Relu∆
(sequential/dense_1/MatMul/ReadVariableOpReadVariableOp1sequential_dense_1_matmul_readvariableop_resource*
_output_shapes

:d@*
dtype02*
(sequential/dense_1/MatMul/ReadVariableOp…
sequential/dense_1/MatMulMatMul#sequential/dense/Relu:activations:00sequential/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
sequential/dense_1/MatMul≈
)sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02+
)sequential/dense_1/BiasAdd/ReadVariableOpЌ
sequential/dense_1/BiasAddBiasAdd#sequential/dense_1/MatMul:product:01sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
sequential/dense_1/BiasAdd≠
3sequential_lambda_1_Categorical/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB 25
3sequential_lambda_1_Categorical/sample/sample_shape≈
/sequential_lambda_1_Categorical/sample/IdentityIdentity#sequential/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€@21
/sequential_lambda_1_Categorical/sample/Identityљ
4sequential_lambda_1_Categorical/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   26
4sequential_lambda_1_Categorical/sample/Reshape/shapeЦ
.sequential_lambda_1_Categorical/sample/ReshapeReshape8sequential_lambda_1_Categorical/sample/Identity:output:0=sequential_lambda_1_Categorical/sample/Reshape/shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@20
.sequential_lambda_1_Categorical/sample/ReshapeЏ
Jsequential_lambda_1_Categorical/sample/categorical/Multinomial/num_samplesConst*
_output_shapes
: *
dtype0*
value	B :2L
Jsequential_lambda_1_Categorical/sample/categorical/Multinomial/num_samplesг
>sequential_lambda_1_Categorical/sample/categorical/MultinomialMultinomial7sequential_lambda_1_Categorical/sample/Reshape:output:0Ssequential_lambda_1_Categorical/sample/categorical/Multinomial/num_samples:output:0*
T0*'
_output_shapes
:€€€€€€€€€*
output_dtype02@
>sequential_lambda_1_Categorical/sample/categorical/Multinomialњ
5sequential_lambda_1_Categorical/sample/transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       27
5sequential_lambda_1_Categorical/sample/transpose/permђ
0sequential_lambda_1_Categorical/sample/transpose	TransposeGsequential_lambda_1_Categorical/sample/categorical/Multinomial:output:0>sequential_lambda_1_Categorical/sample/transpose/perm:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
0sequential_lambda_1_Categorical/sample/transposeƒ
,sequential_lambda_1_Categorical/sample/ShapeShape8sequential_lambda_1_Categorical/sample/Identity:output:0*
T0*
_output_shapes
:2.
,sequential_lambda_1_Categorical/sample/ShapeЮ
,sequential_lambda_1_Categorical/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B :2.
,sequential_lambda_1_Categorical/sample/Const¬
:sequential_lambda_1_Categorical/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2<
:sequential_lambda_1_Categorical/sample/strided_slice/stack∆
<sequential_lambda_1_Categorical/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<sequential_lambda_1_Categorical/sample/strided_slice/stack_1∆
<sequential_lambda_1_Categorical/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<sequential_lambda_1_Categorical/sample/strided_slice/stack_2 
4sequential_lambda_1_Categorical/sample/strided_sliceStridedSlice5sequential_lambda_1_Categorical/sample/Shape:output:0Csequential_lambda_1_Categorical/sample/strided_slice/stack:output:0Esequential_lambda_1_Categorical/sample/strided_slice/stack_1:output:0Esequential_lambda_1_Categorical/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask26
4sequential_lambda_1_Categorical/sample/strided_sliceµ
7sequential_lambda_1_Categorical/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB 29
7sequential_lambda_1_Categorical/sample/BroadcastArgs/s0є
9sequential_lambda_1_Categorical/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB 2;
9sequential_lambda_1_Categorical/sample/BroadcastArgs/s0_1Ь
4sequential_lambda_1_Categorical/sample/BroadcastArgsBroadcastArgsBsequential_lambda_1_Categorical/sample/BroadcastArgs/s0_1:output:0=sequential_lambda_1_Categorical/sample/strided_slice:output:0*
_output_shapes
:26
4sequential_lambda_1_Categorical/sample/BroadcastArgsЇ
6sequential_lambda_1_Categorical/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:28
6sequential_lambda_1_Categorical/sample/concat/values_0™
2sequential_lambda_1_Categorical/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 24
2sequential_lambda_1_Categorical/sample/concat/axis—
-sequential_lambda_1_Categorical/sample/concatConcatV2?sequential_lambda_1_Categorical/sample/concat/values_0:output:09sequential_lambda_1_Categorical/sample/BroadcastArgs:r0:0;sequential_lambda_1_Categorical/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:2/
-sequential_lambda_1_Categorical/sample/concatП
0sequential_lambda_1_Categorical/sample/Reshape_1Reshape4sequential_lambda_1_Categorical/sample/transpose:y:06sequential_lambda_1_Categorical/sample/concat:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
0sequential_lambda_1_Categorical/sample/Reshape_1…
.sequential_lambda_1_Categorical/sample/Shape_1Shape9sequential_lambda_1_Categorical/sample/Reshape_1:output:0*
T0*
_output_shapes
:20
.sequential_lambda_1_Categorical/sample/Shape_1∆
<sequential_lambda_1_Categorical/sample/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2>
<sequential_lambda_1_Categorical/sample/strided_slice_1/stack 
>sequential_lambda_1_Categorical/sample/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2@
>sequential_lambda_1_Categorical/sample/strided_slice_1/stack_1 
>sequential_lambda_1_Categorical/sample/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2@
>sequential_lambda_1_Categorical/sample/strided_slice_1/stack_2‘
6sequential_lambda_1_Categorical/sample/strided_slice_1StridedSlice7sequential_lambda_1_Categorical/sample/Shape_1:output:0Esequential_lambda_1_Categorical/sample/strided_slice_1/stack:output:0Gsequential_lambda_1_Categorical/sample/strided_slice_1/stack_1:output:0Gsequential_lambda_1_Categorical/sample/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask28
6sequential_lambda_1_Categorical/sample/strided_slice_1Ѓ
4sequential_lambda_1_Categorical/sample/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 26
4sequential_lambda_1_Categorical/sample/concat_1/axisЏ
/sequential_lambda_1_Categorical/sample/concat_1ConcatV2<sequential_lambda_1_Categorical/sample/sample_shape:output:0?sequential_lambda_1_Categorical/sample/strided_slice_1:output:0=sequential_lambda_1_Categorical/sample/concat_1/axis:output:0*
N*
T0*
_output_shapes
:21
/sequential_lambda_1_Categorical/sample/concat_1Т
0sequential_lambda_1_Categorical/sample/Reshape_2Reshape9sequential_lambda_1_Categorical/sample/Reshape_1:output:08sequential_lambda_1_Categorical/sample/concat_1:output:0*
T0*#
_output_shapes
:€€€€€€€€€22
0sequential_lambda_1_Categorical/sample/Reshape_2t
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
value	B :?2
clip_by_value/Minimum/yƒ
clip_by_value/MinimumMinimum9sequential_lambda_1_Categorical/sample/Reshape_2:output:0 clip_by_value/Minimum/y:output:0*
T0*#
_output_shapes
:€€€€€€€€€2
clip_by_value/Minimumd
clip_by_value/yConst*
_output_shapes
: *
dtype0*
value	B : 2
clip_by_value/yМ
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*#
_output_shapes
:€€€€€€€€€2
clip_by_valueh
IdentityIdentityclip_by_value:z:0^NoOp*
T0*#
_output_shapes
:€€€€€€€€€2

Identityш
NoOpNoOp(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp*^sequential/dense_1/BiasAdd/ReadVariableOp)^sequential/dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€: : : : 2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp2V
)sequential/dense_1/BiasAdd/ReadVariableOp)sequential/dense_1/BiasAdd/ReadVariableOp2T
(sequential/dense_1/MatMul/ReadVariableOp(sequential/dense_1/MatMul/ReadVariableOp:X T
#
_output_shapes
:€€€€€€€€€
-
_user_specified_nametime_step/step_type:UQ
#
_output_shapes
:€€€€€€€€€
*
_user_specified_nametime_step/reward:WS
#
_output_shapes
:€€€€€€€€€
,
_user_specified_nametime_step/discount:b^
+
_output_shapes
:€€€€€€€€€
/
_user_specified_nametime_step/observation
ы
l
,__inference_function_with_signature_78527646
unknown:	 
identity	ИҐStatefulPartitionedCall†
StatefulPartitionedCallStatefulPartitionedCallunknown*
Tin
2*
Tout
2	*
_collective_manager_ids
 *
_output_shapes
: *#
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В * 
fR
__inference_<lambda>_772
StatefulPartitionedCallj
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0	*
_output_shapes
: 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 22
StatefulPartitionedCallStatefulPartitionedCall
њ
8
&__inference_get_initial_state_78527633

batch_size*(
_construction_contextkEagerRuntime*
_input_shapes
: :B >

_output_shapes
: 
$
_user_specified_name
batch_size
£
ч
&__inference_signature_wrapper_78527627
discount
observation

reward
	step_type
unknown:@d
	unknown_0:d
	unknown_1:d@
	unknown_2:@
identityИҐStatefulPartitionedCallЧ
StatefulPartitionedCallStatefulPartitionedCall	step_typerewarddiscountobservationunknown	unknown_0	unknown_1	unknown_2*
Tin

2*
Tout
2*
_collective_manager_ids
 *#
_output_shapes
:€€€€€€€€€*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *5
f0R.
,__inference_function_with_signature_785276092
StatefulPartitionedCallw
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*#
_output_shapes
:€€€€€€€€€2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
#
_output_shapes
:€€€€€€€€€
$
_user_specified_name
0/discount:ZV
+
_output_shapes
:€€€€€€€€€
'
_user_specified_name0/observation:MI
#
_output_shapes
:€€€€€€€€€
"
_user_specified_name
0/reward:PL
#
_output_shapes
:€€€€€€€€€
%
_user_specified_name0/step_type
÷e
≥
*__inference_polymorphic_action_fn_78527598
	time_step
time_step_1
time_step_2
time_step_3A
/sequential_dense_matmul_readvariableop_resource:@d>
0sequential_dense_biasadd_readvariableop_resource:dC
1sequential_dense_1_matmul_readvariableop_resource:d@@
2sequential_dense_1_biasadd_readvariableop_resource:@
identityИҐ'sequential/dense/BiasAdd/ReadVariableOpҐ&sequential/dense/MatMul/ReadVariableOpҐ)sequential/dense_1/BiasAdd/ReadVariableOpҐ(sequential/dense_1/MatMul/ReadVariableOpm
sequential/lambda/ShapeShapetime_step_3*
T0*
_output_shapes
:2
sequential/lambda/Shape~
sequential/lambda/Cast/xConst*
_output_shapes
:*
dtype0*
valueB:@2
sequential/lambda/Cast/xП
sequential/lambda/CastCast!sequential/lambda/Cast/x:output:0*

DstT0	*

SrcT0*
_output_shapes
:2
sequential/lambda/CastШ
%sequential/lambda/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%sequential/lambda/strided_slice/stack•
'sequential/lambda/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€2)
'sequential/lambda/strided_slice/stack_1Ь
'sequential/lambda/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'sequential/lambda/strided_slice/stack_2ћ
sequential/lambda/strided_sliceStridedSlice sequential/lambda/Shape:output:0.sequential/lambda/strided_slice/stack:output:00sequential/lambda/strided_slice/stack_1:output:00sequential/lambda/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2!
sequential/lambda/strided_sliceЪ
sequential/lambda/Cast_1Cast(sequential/lambda/strided_slice:output:0*

DstT0	*

SrcT0*
_output_shapes
:2
sequential/lambda/Cast_1А
sequential/lambda/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential/lambda/concat/axis–
sequential/lambda/concatConcatV2sequential/lambda/Cast_1:y:0sequential/lambda/Cast:y:0&sequential/lambda/concat/axis:output:0*
N*
T0	*
_output_shapes
:2
sequential/lambda/concat±
sequential/lambda/ReshapeReshapetime_step_3!sequential/lambda/concat:output:0*
T0*
Tshape0	*'
_output_shapes
:€€€€€€€€€@2
sequential/lambda/Reshapeј
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource*
_output_shapes

:@d*
dtype02(
&sequential/dense/MatMul/ReadVariableOp¬
sequential/dense/MatMulMatMul"sequential/lambda/Reshape:output:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€d2
sequential/dense/MatMulњ
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02)
'sequential/dense/BiasAdd/ReadVariableOp≈
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€d2
sequential/dense/BiasAddЛ
sequential/dense/ReluRelu!sequential/dense/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€d2
sequential/dense/Relu∆
(sequential/dense_1/MatMul/ReadVariableOpReadVariableOp1sequential_dense_1_matmul_readvariableop_resource*
_output_shapes

:d@*
dtype02*
(sequential/dense_1/MatMul/ReadVariableOp…
sequential/dense_1/MatMulMatMul#sequential/dense/Relu:activations:00sequential/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
sequential/dense_1/MatMul≈
)sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02+
)sequential/dense_1/BiasAdd/ReadVariableOpЌ
sequential/dense_1/BiasAddBiasAdd#sequential/dense_1/MatMul:product:01sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
sequential/dense_1/BiasAdd≠
3sequential_lambda_1_Categorical/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB 25
3sequential_lambda_1_Categorical/sample/sample_shape≈
/sequential_lambda_1_Categorical/sample/IdentityIdentity#sequential/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€@21
/sequential_lambda_1_Categorical/sample/Identityљ
4sequential_lambda_1_Categorical/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   26
4sequential_lambda_1_Categorical/sample/Reshape/shapeЦ
.sequential_lambda_1_Categorical/sample/ReshapeReshape8sequential_lambda_1_Categorical/sample/Identity:output:0=sequential_lambda_1_Categorical/sample/Reshape/shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@20
.sequential_lambda_1_Categorical/sample/ReshapeЏ
Jsequential_lambda_1_Categorical/sample/categorical/Multinomial/num_samplesConst*
_output_shapes
: *
dtype0*
value	B :2L
Jsequential_lambda_1_Categorical/sample/categorical/Multinomial/num_samplesг
>sequential_lambda_1_Categorical/sample/categorical/MultinomialMultinomial7sequential_lambda_1_Categorical/sample/Reshape:output:0Ssequential_lambda_1_Categorical/sample/categorical/Multinomial/num_samples:output:0*
T0*'
_output_shapes
:€€€€€€€€€*
output_dtype02@
>sequential_lambda_1_Categorical/sample/categorical/Multinomialњ
5sequential_lambda_1_Categorical/sample/transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       27
5sequential_lambda_1_Categorical/sample/transpose/permђ
0sequential_lambda_1_Categorical/sample/transpose	TransposeGsequential_lambda_1_Categorical/sample/categorical/Multinomial:output:0>sequential_lambda_1_Categorical/sample/transpose/perm:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
0sequential_lambda_1_Categorical/sample/transposeƒ
,sequential_lambda_1_Categorical/sample/ShapeShape8sequential_lambda_1_Categorical/sample/Identity:output:0*
T0*
_output_shapes
:2.
,sequential_lambda_1_Categorical/sample/ShapeЮ
,sequential_lambda_1_Categorical/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B :2.
,sequential_lambda_1_Categorical/sample/Const¬
:sequential_lambda_1_Categorical/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2<
:sequential_lambda_1_Categorical/sample/strided_slice/stack∆
<sequential_lambda_1_Categorical/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<sequential_lambda_1_Categorical/sample/strided_slice/stack_1∆
<sequential_lambda_1_Categorical/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<sequential_lambda_1_Categorical/sample/strided_slice/stack_2 
4sequential_lambda_1_Categorical/sample/strided_sliceStridedSlice5sequential_lambda_1_Categorical/sample/Shape:output:0Csequential_lambda_1_Categorical/sample/strided_slice/stack:output:0Esequential_lambda_1_Categorical/sample/strided_slice/stack_1:output:0Esequential_lambda_1_Categorical/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask26
4sequential_lambda_1_Categorical/sample/strided_sliceµ
7sequential_lambda_1_Categorical/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB 29
7sequential_lambda_1_Categorical/sample/BroadcastArgs/s0є
9sequential_lambda_1_Categorical/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB 2;
9sequential_lambda_1_Categorical/sample/BroadcastArgs/s0_1Ь
4sequential_lambda_1_Categorical/sample/BroadcastArgsBroadcastArgsBsequential_lambda_1_Categorical/sample/BroadcastArgs/s0_1:output:0=sequential_lambda_1_Categorical/sample/strided_slice:output:0*
_output_shapes
:26
4sequential_lambda_1_Categorical/sample/BroadcastArgsЇ
6sequential_lambda_1_Categorical/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:28
6sequential_lambda_1_Categorical/sample/concat/values_0™
2sequential_lambda_1_Categorical/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 24
2sequential_lambda_1_Categorical/sample/concat/axis—
-sequential_lambda_1_Categorical/sample/concatConcatV2?sequential_lambda_1_Categorical/sample/concat/values_0:output:09sequential_lambda_1_Categorical/sample/BroadcastArgs:r0:0;sequential_lambda_1_Categorical/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:2/
-sequential_lambda_1_Categorical/sample/concatП
0sequential_lambda_1_Categorical/sample/Reshape_1Reshape4sequential_lambda_1_Categorical/sample/transpose:y:06sequential_lambda_1_Categorical/sample/concat:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
0sequential_lambda_1_Categorical/sample/Reshape_1…
.sequential_lambda_1_Categorical/sample/Shape_1Shape9sequential_lambda_1_Categorical/sample/Reshape_1:output:0*
T0*
_output_shapes
:20
.sequential_lambda_1_Categorical/sample/Shape_1∆
<sequential_lambda_1_Categorical/sample/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2>
<sequential_lambda_1_Categorical/sample/strided_slice_1/stack 
>sequential_lambda_1_Categorical/sample/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2@
>sequential_lambda_1_Categorical/sample/strided_slice_1/stack_1 
>sequential_lambda_1_Categorical/sample/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2@
>sequential_lambda_1_Categorical/sample/strided_slice_1/stack_2‘
6sequential_lambda_1_Categorical/sample/strided_slice_1StridedSlice7sequential_lambda_1_Categorical/sample/Shape_1:output:0Esequential_lambda_1_Categorical/sample/strided_slice_1/stack:output:0Gsequential_lambda_1_Categorical/sample/strided_slice_1/stack_1:output:0Gsequential_lambda_1_Categorical/sample/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask28
6sequential_lambda_1_Categorical/sample/strided_slice_1Ѓ
4sequential_lambda_1_Categorical/sample/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 26
4sequential_lambda_1_Categorical/sample/concat_1/axisЏ
/sequential_lambda_1_Categorical/sample/concat_1ConcatV2<sequential_lambda_1_Categorical/sample/sample_shape:output:0?sequential_lambda_1_Categorical/sample/strided_slice_1:output:0=sequential_lambda_1_Categorical/sample/concat_1/axis:output:0*
N*
T0*
_output_shapes
:21
/sequential_lambda_1_Categorical/sample/concat_1Т
0sequential_lambda_1_Categorical/sample/Reshape_2Reshape9sequential_lambda_1_Categorical/sample/Reshape_1:output:08sequential_lambda_1_Categorical/sample/concat_1:output:0*
T0*#
_output_shapes
:€€€€€€€€€22
0sequential_lambda_1_Categorical/sample/Reshape_2t
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
value	B :?2
clip_by_value/Minimum/yƒ
clip_by_value/MinimumMinimum9sequential_lambda_1_Categorical/sample/Reshape_2:output:0 clip_by_value/Minimum/y:output:0*
T0*#
_output_shapes
:€€€€€€€€€2
clip_by_value/Minimumd
clip_by_value/yConst*
_output_shapes
: *
dtype0*
value	B : 2
clip_by_value/yМ
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*#
_output_shapes
:€€€€€€€€€2
clip_by_valueh
IdentityIdentityclip_by_value:z:0^NoOp*
T0*#
_output_shapes
:€€€€€€€€€2

Identityш
NoOpNoOp(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp*^sequential/dense_1/BiasAdd/ReadVariableOp)^sequential/dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€: : : : 2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp2V
)sequential/dense_1/BiasAdd/ReadVariableOp)sequential/dense_1/BiasAdd/ReadVariableOp2T
(sequential/dense_1/MatMul/ReadVariableOp(sequential/dense_1/MatMul/ReadVariableOp:N J
#
_output_shapes
:€€€€€€€€€
#
_user_specified_name	time_step:NJ
#
_output_shapes
:€€€€€€€€€
#
_user_specified_name	time_step:NJ
#
_output_shapes
:€€€€€€€€€
#
_user_specified_name	time_step:VR
+
_output_shapes
:€€€€€€€€€
#
_user_specified_name	time_step
Џ
8
&__inference_signature_wrapper_78527639

batch_sizeШ
PartitionedCallPartitionedCall
batch_size*
Tin
2*

Tout
 *
_collective_manager_ids
 *
_output_shapes
 * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *5
f0R.
,__inference_function_with_signature_785276342
PartitionedCall*(
_construction_contextkEagerRuntime*
_input_shapes
: :B >

_output_shapes
: 
$
_user_specified_name
batch_size
Ч
^
__inference_<lambda>_77!
readvariableop_resource:	 
identity	ИҐReadVariableOpp
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0	2
ReadVariableOp`
IdentityIdentityReadVariableOp:value:0^NoOp*
T0	*
_output_shapes
: 2

Identity_
NoOpNoOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2 
ReadVariableOpReadVariableOp
Щ*
±
0__inference_polymorphic_distribution_fn_78527821
	step_type

reward
discount
observationA
/sequential_dense_matmul_readvariableop_resource:@d>
0sequential_dense_biasadd_readvariableop_resource:dC
1sequential_dense_1_matmul_readvariableop_resource:d@@
2sequential_dense_1_biasadd_readvariableop_resource:@
identityИҐ'sequential/dense/BiasAdd/ReadVariableOpҐ&sequential/dense/MatMul/ReadVariableOpҐ)sequential/dense_1/BiasAdd/ReadVariableOpҐ(sequential/dense_1/MatMul/ReadVariableOpm
sequential/lambda/ShapeShapeobservation*
T0*
_output_shapes
:2
sequential/lambda/Shape~
sequential/lambda/Cast/xConst*
_output_shapes
:*
dtype0*
valueB:@2
sequential/lambda/Cast/xП
sequential/lambda/CastCast!sequential/lambda/Cast/x:output:0*

DstT0	*

SrcT0*
_output_shapes
:2
sequential/lambda/CastШ
%sequential/lambda/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%sequential/lambda/strided_slice/stack•
'sequential/lambda/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€2)
'sequential/lambda/strided_slice/stack_1Ь
'sequential/lambda/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'sequential/lambda/strided_slice/stack_2ћ
sequential/lambda/strided_sliceStridedSlice sequential/lambda/Shape:output:0.sequential/lambda/strided_slice/stack:output:00sequential/lambda/strided_slice/stack_1:output:00sequential/lambda/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2!
sequential/lambda/strided_sliceЪ
sequential/lambda/Cast_1Cast(sequential/lambda/strided_slice:output:0*

DstT0	*

SrcT0*
_output_shapes
:2
sequential/lambda/Cast_1А
sequential/lambda/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential/lambda/concat/axis–
sequential/lambda/concatConcatV2sequential/lambda/Cast_1:y:0sequential/lambda/Cast:y:0&sequential/lambda/concat/axis:output:0*
N*
T0	*
_output_shapes
:2
sequential/lambda/concat±
sequential/lambda/ReshapeReshapeobservation!sequential/lambda/concat:output:0*
T0*
Tshape0	*'
_output_shapes
:€€€€€€€€€@2
sequential/lambda/Reshapeј
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource*
_output_shapes

:@d*
dtype02(
&sequential/dense/MatMul/ReadVariableOp¬
sequential/dense/MatMulMatMul"sequential/lambda/Reshape:output:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€d2
sequential/dense/MatMulњ
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02)
'sequential/dense/BiasAdd/ReadVariableOp≈
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€d2
sequential/dense/BiasAddЛ
sequential/dense/ReluRelu!sequential/dense/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€d2
sequential/dense/Relu∆
(sequential/dense_1/MatMul/ReadVariableOpReadVariableOp1sequential_dense_1_matmul_readvariableop_resource*
_output_shapes

:d@*
dtype02*
(sequential/dense_1/MatMul/ReadVariableOp…
sequential/dense_1/MatMulMatMul#sequential/dense/Relu:activations:00sequential/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
sequential/dense_1/MatMul≈
)sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02+
)sequential/dense_1/BiasAdd/ReadVariableOpЌ
sequential/dense_1/BiasAddBiasAdd#sequential/dense_1/MatMul:product:01sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
sequential/dense_1/BiasAdd~
IdentityIdentity#sequential/dense_1/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€@2

Identityш
NoOpNoOp(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp*^sequential/dense_1/BiasAdd/ReadVariableOp)^sequential/dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€: : : : 2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp2V
)sequential/dense_1/BiasAdd/ReadVariableOp)sequential/dense_1/BiasAdd/ReadVariableOp2T
(sequential/dense_1/MatMul/ReadVariableOp(sequential/dense_1/MatMul/ReadVariableOp:N J
#
_output_shapes
:€€€€€€€€€
#
_user_specified_name	step_type:KG
#
_output_shapes
:€€€€€€€€€
 
_user_specified_namereward:MI
#
_output_shapes
:€€€€€€€€€
"
_user_specified_name
discount:XT
+
_output_shapes
:€€€€€€€€€
%
_user_specified_nameobservation
д
.
,__inference_function_with_signature_78527657ф
PartitionedCallPartitionedCall*	
Tin
 *

Tout
 *
_collective_manager_ids
 *
_output_shapes
 * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В * 
fR
__inference_<lambda>_802
PartitionedCall*(
_construction_contextkEagerRuntime*
_input_shapes 
ћe
Ђ
*__inference_polymorphic_action_fn_78527726
	step_type

reward
discount
observationA
/sequential_dense_matmul_readvariableop_resource:@d>
0sequential_dense_biasadd_readvariableop_resource:dC
1sequential_dense_1_matmul_readvariableop_resource:d@@
2sequential_dense_1_biasadd_readvariableop_resource:@
identityИҐ'sequential/dense/BiasAdd/ReadVariableOpҐ&sequential/dense/MatMul/ReadVariableOpҐ)sequential/dense_1/BiasAdd/ReadVariableOpҐ(sequential/dense_1/MatMul/ReadVariableOpm
sequential/lambda/ShapeShapeobservation*
T0*
_output_shapes
:2
sequential/lambda/Shape~
sequential/lambda/Cast/xConst*
_output_shapes
:*
dtype0*
valueB:@2
sequential/lambda/Cast/xП
sequential/lambda/CastCast!sequential/lambda/Cast/x:output:0*

DstT0	*

SrcT0*
_output_shapes
:2
sequential/lambda/CastШ
%sequential/lambda/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%sequential/lambda/strided_slice/stack•
'sequential/lambda/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€2)
'sequential/lambda/strided_slice/stack_1Ь
'sequential/lambda/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'sequential/lambda/strided_slice/stack_2ћ
sequential/lambda/strided_sliceStridedSlice sequential/lambda/Shape:output:0.sequential/lambda/strided_slice/stack:output:00sequential/lambda/strided_slice/stack_1:output:00sequential/lambda/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2!
sequential/lambda/strided_sliceЪ
sequential/lambda/Cast_1Cast(sequential/lambda/strided_slice:output:0*

DstT0	*

SrcT0*
_output_shapes
:2
sequential/lambda/Cast_1А
sequential/lambda/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential/lambda/concat/axis–
sequential/lambda/concatConcatV2sequential/lambda/Cast_1:y:0sequential/lambda/Cast:y:0&sequential/lambda/concat/axis:output:0*
N*
T0	*
_output_shapes
:2
sequential/lambda/concat±
sequential/lambda/ReshapeReshapeobservation!sequential/lambda/concat:output:0*
T0*
Tshape0	*'
_output_shapes
:€€€€€€€€€@2
sequential/lambda/Reshapeј
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource*
_output_shapes

:@d*
dtype02(
&sequential/dense/MatMul/ReadVariableOp¬
sequential/dense/MatMulMatMul"sequential/lambda/Reshape:output:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€d2
sequential/dense/MatMulњ
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02)
'sequential/dense/BiasAdd/ReadVariableOp≈
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€d2
sequential/dense/BiasAddЛ
sequential/dense/ReluRelu!sequential/dense/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€d2
sequential/dense/Relu∆
(sequential/dense_1/MatMul/ReadVariableOpReadVariableOp1sequential_dense_1_matmul_readvariableop_resource*
_output_shapes

:d@*
dtype02*
(sequential/dense_1/MatMul/ReadVariableOp…
sequential/dense_1/MatMulMatMul#sequential/dense/Relu:activations:00sequential/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
sequential/dense_1/MatMul≈
)sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02+
)sequential/dense_1/BiasAdd/ReadVariableOpЌ
sequential/dense_1/BiasAddBiasAdd#sequential/dense_1/MatMul:product:01sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
sequential/dense_1/BiasAdd≠
3sequential_lambda_1_Categorical/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB 25
3sequential_lambda_1_Categorical/sample/sample_shape≈
/sequential_lambda_1_Categorical/sample/IdentityIdentity#sequential/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€@21
/sequential_lambda_1_Categorical/sample/Identityљ
4sequential_lambda_1_Categorical/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   26
4sequential_lambda_1_Categorical/sample/Reshape/shapeЦ
.sequential_lambda_1_Categorical/sample/ReshapeReshape8sequential_lambda_1_Categorical/sample/Identity:output:0=sequential_lambda_1_Categorical/sample/Reshape/shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@20
.sequential_lambda_1_Categorical/sample/ReshapeЏ
Jsequential_lambda_1_Categorical/sample/categorical/Multinomial/num_samplesConst*
_output_shapes
: *
dtype0*
value	B :2L
Jsequential_lambda_1_Categorical/sample/categorical/Multinomial/num_samplesг
>sequential_lambda_1_Categorical/sample/categorical/MultinomialMultinomial7sequential_lambda_1_Categorical/sample/Reshape:output:0Ssequential_lambda_1_Categorical/sample/categorical/Multinomial/num_samples:output:0*
T0*'
_output_shapes
:€€€€€€€€€*
output_dtype02@
>sequential_lambda_1_Categorical/sample/categorical/Multinomialњ
5sequential_lambda_1_Categorical/sample/transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       27
5sequential_lambda_1_Categorical/sample/transpose/permђ
0sequential_lambda_1_Categorical/sample/transpose	TransposeGsequential_lambda_1_Categorical/sample/categorical/Multinomial:output:0>sequential_lambda_1_Categorical/sample/transpose/perm:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
0sequential_lambda_1_Categorical/sample/transposeƒ
,sequential_lambda_1_Categorical/sample/ShapeShape8sequential_lambda_1_Categorical/sample/Identity:output:0*
T0*
_output_shapes
:2.
,sequential_lambda_1_Categorical/sample/ShapeЮ
,sequential_lambda_1_Categorical/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B :2.
,sequential_lambda_1_Categorical/sample/Const¬
:sequential_lambda_1_Categorical/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2<
:sequential_lambda_1_Categorical/sample/strided_slice/stack∆
<sequential_lambda_1_Categorical/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<sequential_lambda_1_Categorical/sample/strided_slice/stack_1∆
<sequential_lambda_1_Categorical/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<sequential_lambda_1_Categorical/sample/strided_slice/stack_2 
4sequential_lambda_1_Categorical/sample/strided_sliceStridedSlice5sequential_lambda_1_Categorical/sample/Shape:output:0Csequential_lambda_1_Categorical/sample/strided_slice/stack:output:0Esequential_lambda_1_Categorical/sample/strided_slice/stack_1:output:0Esequential_lambda_1_Categorical/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask26
4sequential_lambda_1_Categorical/sample/strided_sliceµ
7sequential_lambda_1_Categorical/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB 29
7sequential_lambda_1_Categorical/sample/BroadcastArgs/s0є
9sequential_lambda_1_Categorical/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB 2;
9sequential_lambda_1_Categorical/sample/BroadcastArgs/s0_1Ь
4sequential_lambda_1_Categorical/sample/BroadcastArgsBroadcastArgsBsequential_lambda_1_Categorical/sample/BroadcastArgs/s0_1:output:0=sequential_lambda_1_Categorical/sample/strided_slice:output:0*
_output_shapes
:26
4sequential_lambda_1_Categorical/sample/BroadcastArgsЇ
6sequential_lambda_1_Categorical/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:28
6sequential_lambda_1_Categorical/sample/concat/values_0™
2sequential_lambda_1_Categorical/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 24
2sequential_lambda_1_Categorical/sample/concat/axis—
-sequential_lambda_1_Categorical/sample/concatConcatV2?sequential_lambda_1_Categorical/sample/concat/values_0:output:09sequential_lambda_1_Categorical/sample/BroadcastArgs:r0:0;sequential_lambda_1_Categorical/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:2/
-sequential_lambda_1_Categorical/sample/concatП
0sequential_lambda_1_Categorical/sample/Reshape_1Reshape4sequential_lambda_1_Categorical/sample/transpose:y:06sequential_lambda_1_Categorical/sample/concat:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
0sequential_lambda_1_Categorical/sample/Reshape_1…
.sequential_lambda_1_Categorical/sample/Shape_1Shape9sequential_lambda_1_Categorical/sample/Reshape_1:output:0*
T0*
_output_shapes
:20
.sequential_lambda_1_Categorical/sample/Shape_1∆
<sequential_lambda_1_Categorical/sample/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2>
<sequential_lambda_1_Categorical/sample/strided_slice_1/stack 
>sequential_lambda_1_Categorical/sample/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2@
>sequential_lambda_1_Categorical/sample/strided_slice_1/stack_1 
>sequential_lambda_1_Categorical/sample/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2@
>sequential_lambda_1_Categorical/sample/strided_slice_1/stack_2‘
6sequential_lambda_1_Categorical/sample/strided_slice_1StridedSlice7sequential_lambda_1_Categorical/sample/Shape_1:output:0Esequential_lambda_1_Categorical/sample/strided_slice_1/stack:output:0Gsequential_lambda_1_Categorical/sample/strided_slice_1/stack_1:output:0Gsequential_lambda_1_Categorical/sample/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask28
6sequential_lambda_1_Categorical/sample/strided_slice_1Ѓ
4sequential_lambda_1_Categorical/sample/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 26
4sequential_lambda_1_Categorical/sample/concat_1/axisЏ
/sequential_lambda_1_Categorical/sample/concat_1ConcatV2<sequential_lambda_1_Categorical/sample/sample_shape:output:0?sequential_lambda_1_Categorical/sample/strided_slice_1:output:0=sequential_lambda_1_Categorical/sample/concat_1/axis:output:0*
N*
T0*
_output_shapes
:21
/sequential_lambda_1_Categorical/sample/concat_1Т
0sequential_lambda_1_Categorical/sample/Reshape_2Reshape9sequential_lambda_1_Categorical/sample/Reshape_1:output:08sequential_lambda_1_Categorical/sample/concat_1:output:0*
T0*#
_output_shapes
:€€€€€€€€€22
0sequential_lambda_1_Categorical/sample/Reshape_2t
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
value	B :?2
clip_by_value/Minimum/yƒ
clip_by_value/MinimumMinimum9sequential_lambda_1_Categorical/sample/Reshape_2:output:0 clip_by_value/Minimum/y:output:0*
T0*#
_output_shapes
:€€€€€€€€€2
clip_by_value/Minimumd
clip_by_value/yConst*
_output_shapes
: *
dtype0*
value	B : 2
clip_by_value/yМ
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*#
_output_shapes
:€€€€€€€€€2
clip_by_valueh
IdentityIdentityclip_by_value:z:0^NoOp*
T0*#
_output_shapes
:€€€€€€€€€2

Identityш
NoOpNoOp(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp*^sequential/dense_1/BiasAdd/ReadVariableOp)^sequential/dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€: : : : 2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp2V
)sequential/dense_1/BiasAdd/ReadVariableOp)sequential/dense_1/BiasAdd/ReadVariableOp2T
(sequential/dense_1/MatMul/ReadVariableOp(sequential/dense_1/MatMul/ReadVariableOp:N J
#
_output_shapes
:€€€€€€€€€
#
_user_specified_name	step_type:KG
#
_output_shapes
:€€€€€€€€€
 
_user_specified_namereward:MI
#
_output_shapes
:€€€€€€€€€
"
_user_specified_name
discount:XT
+
_output_shapes
:€€€€€€€€€
%
_user_specified_nameobservation"®L
saver_filename:0StatefulPartitionedCall_2:0StatefulPartitionedCall_38"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*√
actionЄ
4

0/discount&
action_0/discount:0€€€€€€€€€
B
0/observation1
action_0/observation:0€€€€€€€€€
0
0/reward$
action_0/reward:0€€€€€€€€€
6
0/step_type'
action_0/step_type:0€€€€€€€€€6
action,
StatefulPartitionedCall:0€€€€€€€€€tensorflow/serving/predict*e
get_initial_stateP
2

batch_size$
get_initial_state_batch_size:0 tensorflow/serving/predict*,
get_metadatatensorflow/serving/predict*Z
get_train_stepH*
int64!
StatefulPartitionedCall_1:0	 tensorflow/serving/predict:€S
Ќ

train_step
metadata
model_variables
_all_assets

signatures

?action
@distribution
Aget_initial_state
Bget_metadata
Cget_train_step"
_generic_user_object
:	 (2Variable
 "
trackable_dict_wrapper
=
0
1
2
	3"
trackable_tuple_wrapper
'

0"
trackable_list_wrapper
`

Daction
Eget_initial_state
Fget_train_step
Gget_metadata"
signature_map
):'@d2sequential/dense/kernel
#:!d2sequential/dense/bias
+:)d@2sequential/dense_1/kernel
%:#@2sequential/dense_1/bias
1
ref
1"
trackable_tuple_wrapper
”
_sequential_layers
_layer_has_state
regularization_losses
	variables
trainable_variables
	keras_api
*H&call_and_return_all_conditional_losses
I__call__"
_tf_keras_layer
<
0
1
2
3"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
<
0
1
2
	3"
trackable_list_wrapper
<
0
1
2
	3"
trackable_list_wrapper
≠
non_trainable_variables
metrics
regularization_losses
layer_regularization_losses
layer_metrics
	variables

layers
trainable_variables
I__call__
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses"
_generic_user_object
•
regularization_losses
	variables
trainable_variables
	keras_api
*J&call_and_return_all_conditional_losses
K__call__"
_tf_keras_layer
ї

kernel
bias
regularization_losses
 	variables
!trainable_variables
"	keras_api
*L&call_and_return_all_conditional_losses
M__call__"
_tf_keras_layer
ї

kernel
	bias
#regularization_losses
$	variables
%trainable_variables
&	keras_api
*N&call_and_return_all_conditional_losses
O__call__"
_tf_keras_layer
•
'regularization_losses
(	variables
)trainable_variables
*	keras_api
*P&call_and_return_all_conditional_losses
Q__call__"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
<
0
1
2
3"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≠
+non_trainable_variables
,metrics
regularization_losses
-layer_regularization_losses
.layer_metrics
	variables

/layers
trainable_variables
K__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
≠
0non_trainable_variables
1metrics
regularization_losses
2layer_regularization_losses
3layer_metrics
 	variables

4layers
!trainable_variables
M__call__
*L&call_and_return_all_conditional_losses
&L"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
0
	1"
trackable_list_wrapper
.
0
	1"
trackable_list_wrapper
≠
5non_trainable_variables
6metrics
#regularization_losses
7layer_regularization_losses
8layer_metrics
$	variables

9layers
%trainable_variables
O__call__
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≠
:non_trainable_variables
;metrics
'regularization_losses
<layer_regularization_losses
=layer_metrics
(	variables

>layers
)trainable_variables
Q__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
П2М
*__inference_polymorphic_action_fn_78527726
*__inference_polymorphic_action_fn_78527790±
™≤¶
FullArgSpec(
args Ъ
j	time_step
jpolicy_state
varargs
 
varkw
 
defaultsҐ
Ґ 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
й2ж
0__inference_polymorphic_distribution_fn_78527821±
™≤¶
FullArgSpec(
args Ъ
j	time_step
jpolicy_state
varargs
 
varkw
 
defaultsҐ
Ґ 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
‘2—
&__inference_get_initial_state_78527824¶
Э≤Щ
FullArgSpec!
argsЪ
jself
j
batch_size
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
≠B™
__inference_<lambda>_80"О
З≤Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
≠B™
__inference_<lambda>_77"О
З≤Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
фBс
&__inference_signature_wrapper_78527627
0/discount0/observation0/reward0/step_type"Ф
Н≤Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
–BЌ
&__inference_signature_wrapper_78527639
batch_size"Ф
Н≤Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
¬Bњ
&__inference_signature_wrapper_78527654"Ф
Н≤Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
¬Bњ
&__inference_signature_wrapper_78527661"Ф
Н≤Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
в2я№
”≤ѕ
FullArgSpec.
args&Ъ#
jself
jinputs
jnetwork_state
varargs
 
varkwjkwargs
defaultsЪ
Ґ 

kwonlyargsЪ

jtraining%
kwonlydefaults™

trainingp 
annotations™ *
 
в2я№
”≤ѕ
FullArgSpec.
args&Ъ#
jself
jinputs
jnetwork_state
varargs
 
varkwjkwargs
defaultsЪ
Ґ 

kwonlyargsЪ

jtraining%
kwonlydefaults™

trainingp 
annotations™ *
 
∆2√ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsЪ

 
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
∆2√ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsЪ

 
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
®2•Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
®2•Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
®2•Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
®2•Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
∆2√ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsЪ

 
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
∆2√ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsЪ

 
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 6
__inference_<lambda>_77Ґ

Ґ 
™ "К 	/
__inference_<lambda>_80Ґ

Ґ 
™ "™ S
&__inference_get_initial_state_78527824)"Ґ
Ґ
К

batch_size 
™ "Ґ о
*__inference_polymorphic_action_fn_78527726њ	вҐё
÷Ґ“
 ≤∆
TimeStep,
	step_typeК
	step_type€€€€€€€€€&
rewardК
reward€€€€€€€€€*
discountК
discount€€€€€€€€€8
observation)К&
observation€€€€€€€€€
Ґ 
™ "R≤O

PolicyStep&
actionК
action€€€€€€€€€
stateҐ 
infoҐ Ц
*__inference_polymorphic_action_fn_78527790з	КҐЖ
юҐъ
т≤о
TimeStep6
	step_type)К&
time_step/step_type€€€€€€€€€0
reward&К#
time_step/reward€€€€€€€€€4
discount(К%
time_step/discount€€€€€€€€€B
observation3К0
time_step/observation€€€€€€€€€
Ґ 
™ "R≤O

PolicyStep&
actionК
action€€€€€€€€€
stateҐ 
infoҐ Ё
0__inference_polymorphic_distribution_fn_78527821®	вҐё
÷Ґ“
 ≤∆
TimeStep,
	step_typeК
	step_type€€€€€€€€€&
rewardК
reward€€€€€€€€€*
discountК
discount€€€€€€€€€8
observation)К&
observation€€€€€€€€€
Ґ 
™ "Ї≤ґ

PolicyStepМ
actionБТэЌҐ…
`
'™$
"
logitsК€€€€€€€€€@
u™r

allow_nan_statsp

dtypeА
)
name!jsequential_lambda_1_Categorical

probs
 

validate_argsp 
Ґ
j
parameters
Ґ 
Ґ
jname)tfp.distributions.Categorical_ACTTypeSpec
stateҐ 
infoҐ љ
&__inference_signature_wrapper_78527627Т	№ҐЎ
Ґ 
–™ћ
.

0/discount К

0/discount€€€€€€€€€
<
0/observation+К(
0/observation€€€€€€€€€
*
0/rewardК
0/reward€€€€€€€€€
0
0/step_type!К
0/step_type€€€€€€€€€"+™(
&
actionК
action€€€€€€€€€a
&__inference_signature_wrapper_7852763970Ґ-
Ґ 
&™#
!

batch_sizeК

batch_size "™ Z
&__inference_signature_wrapper_785276540Ґ

Ґ 
™ "™

int64К
int64 	>
&__inference_signature_wrapper_78527661Ґ

Ґ 
™ "™ 