��

��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
�
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

�
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%��8"&
exponential_avg_factorfloat%  �?";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
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
�
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype�
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
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
�
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
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.11.02v2.11.0-rc2-15-g6290819256d8�
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
�
Adam/v/dense_84/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/v/dense_84/bias
y
(Adam/v/dense_84/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_84/bias*
_output_shapes
:*
dtype0
�
Adam/m/dense_84/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/m/dense_84/bias
y
(Adam/m/dense_84/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_84/bias*
_output_shapes
:*
dtype0
�
Adam/v/dense_84/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *'
shared_nameAdam/v/dense_84/kernel
�
*Adam/v/dense_84/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_84/kernel*
_output_shapes

: *
dtype0
�
Adam/m/dense_84/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *'
shared_nameAdam/m/dense_84/kernel
�
*Adam/m/dense_84/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_84/kernel*
_output_shapes

: *
dtype0
�
Adam/v/dense_83/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/v/dense_83/bias
y
(Adam/v/dense_83/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_83/bias*
_output_shapes
: *
dtype0
�
Adam/m/dense_83/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/m/dense_83/bias
y
(Adam/m/dense_83/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_83/bias*
_output_shapes
: *
dtype0
�
Adam/v/dense_83/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
�� *'
shared_nameAdam/v/dense_83/kernel
�
*Adam/v/dense_83/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_83/kernel* 
_output_shapes
:
�� *
dtype0
�
Adam/m/dense_83/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
�� *'
shared_nameAdam/m/dense_83/kernel
�
*Adam/m/dense_83/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_83/kernel* 
_output_shapes
:
�� *
dtype0
�
Adam/v/conv2d_107/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/v/conv2d_107/bias
}
*Adam/v/conv2d_107/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_107/bias*
_output_shapes
:*
dtype0
�
Adam/m/conv2d_107/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/m/conv2d_107/bias
}
*Adam/m/conv2d_107/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_107/bias*
_output_shapes
:*
dtype0
�
Adam/v/conv2d_107/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*)
shared_nameAdam/v/conv2d_107/kernel
�
,Adam/v/conv2d_107/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_107/kernel*'
_output_shapes
:�*
dtype0
�
Adam/m/conv2d_107/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*)
shared_nameAdam/m/conv2d_107/kernel
�
,Adam/m/conv2d_107/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_107/kernel*'
_output_shapes
:�*
dtype0
�
"Adam/v/batch_normalization_29/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/v/batch_normalization_29/beta
�
6Adam/v/batch_normalization_29/beta/Read/ReadVariableOpReadVariableOp"Adam/v/batch_normalization_29/beta*
_output_shapes	
:�*
dtype0
�
"Adam/m/batch_normalization_29/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/m/batch_normalization_29/beta
�
6Adam/m/batch_normalization_29/beta/Read/ReadVariableOpReadVariableOp"Adam/m/batch_normalization_29/beta*
_output_shapes	
:�*
dtype0
�
#Adam/v/batch_normalization_29/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*4
shared_name%#Adam/v/batch_normalization_29/gamma
�
7Adam/v/batch_normalization_29/gamma/Read/ReadVariableOpReadVariableOp#Adam/v/batch_normalization_29/gamma*
_output_shapes	
:�*
dtype0
�
#Adam/m/batch_normalization_29/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*4
shared_name%#Adam/m/batch_normalization_29/gamma
�
7Adam/m/batch_normalization_29/gamma/Read/ReadVariableOpReadVariableOp#Adam/m/batch_normalization_29/gamma*
_output_shapes	
:�*
dtype0
�
Adam/v/conv2d_106/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*)
shared_nameAdam/v/conv2d_106/kernel
�
,Adam/v/conv2d_106/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_106/kernel*'
_output_shapes
:�*
dtype0
�
Adam/m/conv2d_106/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*)
shared_nameAdam/m/conv2d_106/kernel
�
,Adam/m/conv2d_106/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_106/kernel*'
_output_shapes
:�*
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
r
dense_84/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_84/bias
k
!dense_84/bias/Read/ReadVariableOpReadVariableOpdense_84/bias*
_output_shapes
:*
dtype0
z
dense_84/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: * 
shared_namedense_84/kernel
s
#dense_84/kernel/Read/ReadVariableOpReadVariableOpdense_84/kernel*
_output_shapes

: *
dtype0
r
dense_83/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_83/bias
k
!dense_83/bias/Read/ReadVariableOpReadVariableOpdense_83/bias*
_output_shapes
: *
dtype0
|
dense_83/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
�� * 
shared_namedense_83/kernel
u
#dense_83/kernel/Read/ReadVariableOpReadVariableOpdense_83/kernel* 
_output_shapes
:
�� *
dtype0
v
conv2d_107/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_107/bias
o
#conv2d_107/bias/Read/ReadVariableOpReadVariableOpconv2d_107/bias*
_output_shapes
:*
dtype0
�
conv2d_107/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*"
shared_nameconv2d_107/kernel
�
%conv2d_107/kernel/Read/ReadVariableOpReadVariableOpconv2d_107/kernel*'
_output_shapes
:�*
dtype0
�
&batch_normalization_29/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*7
shared_name(&batch_normalization_29/moving_variance
�
:batch_normalization_29/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_29/moving_variance*
_output_shapes	
:�*
dtype0
�
"batch_normalization_29/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"batch_normalization_29/moving_mean
�
6batch_normalization_29/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_29/moving_mean*
_output_shapes	
:�*
dtype0
�
batch_normalization_29/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*,
shared_namebatch_normalization_29/beta
�
/batch_normalization_29/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_29/beta*
_output_shapes	
:�*
dtype0
�
batch_normalization_29/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*-
shared_namebatch_normalization_29/gamma
�
0batch_normalization_29/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_29/gamma*
_output_shapes	
:�*
dtype0
�
conv2d_106/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*"
shared_nameconv2d_106/kernel
�
%conv2d_106/kernel/Read/ReadVariableOpReadVariableOpconv2d_106/kernel*'
_output_shapes
:�*
dtype0
�
 serving_default_conv2d_106_inputPlaceholder*1
_output_shapes
:�����������*
dtype0*&
shape:�����������
�
StatefulPartitionedCallStatefulPartitionedCall serving_default_conv2d_106_inputconv2d_106/kernelbatch_normalization_29/gammabatch_normalization_29/beta"batch_normalization_29/moving_mean&batch_normalization_29/moving_varianceconv2d_107/kernelconv2d_107/biasdense_83/kerneldense_83/biasdense_84/kerneldense_84/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *-
f(R&
$__inference_signature_wrapper_111302

NoOpNoOp
�M
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�M
value�LB�L B�L
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer-5
layer_with_weights-3
layer-6
layer_with_weights-4
layer-7
		variables

trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
 _jit_compiled_convolution_op*
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
 axis
	!gamma
"beta
#moving_mean
$moving_variance*
�
%	variables
&trainable_variables
'regularization_losses
(	keras_api
)__call__
**&call_and_return_all_conditional_losses* 
�
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses

1kernel
2bias
 3_jit_compiled_convolution_op*
�
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses* 
�
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses* 
�
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
D__call__
*E&call_and_return_all_conditional_losses

Fkernel
Gbias*
�
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
L__call__
*M&call_and_return_all_conditional_losses

Nkernel
Obias*
R
0
!1
"2
#3
$4
15
26
F7
G8
N9
O10*
C
0
!1
"2
13
24
F5
G6
N7
O8*
* 
�
Pnon_trainable_variables

Qlayers
Rmetrics
Slayer_regularization_losses
Tlayer_metrics
		variables

trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
Utrace_0
Vtrace_1
Wtrace_2
Xtrace_3* 
6
Ytrace_0
Ztrace_1
[trace_2
\trace_3* 
* 
�
]
_variables
^_iterations
__learning_rate
`_index_dict
a
_momentums
b_velocities
c_update_step_xla*

dserving_default* 

0*

0*
* 
�
enon_trainable_variables

flayers
gmetrics
hlayer_regularization_losses
ilayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

jtrace_0* 

ktrace_0* 
a[
VARIABLE_VALUEconv2d_106/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
!0
"1
#2
$3*

!0
"1*
* 
�
lnon_trainable_variables

mlayers
nmetrics
olayer_regularization_losses
player_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

qtrace_0
rtrace_1* 

strace_0
ttrace_1* 
* 
ke
VARIABLE_VALUEbatch_normalization_29/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_29/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_29/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_29/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
unon_trainable_variables

vlayers
wmetrics
xlayer_regularization_losses
ylayer_metrics
%	variables
&trainable_variables
'regularization_losses
)__call__
**&call_and_return_all_conditional_losses
&*"call_and_return_conditional_losses* 

ztrace_0* 

{trace_0* 

10
21*

10
21*
* 
�
|non_trainable_variables

}layers
~metrics
layer_regularization_losses
�layer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
a[
VARIABLE_VALUEconv2d_107/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_107/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

F0
G1*

F0
G1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
@	variables
Atrainable_variables
Bregularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEdense_83/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_83/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

N0
O1*

N0
O1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
H	variables
Itrainable_variables
Jregularization_losses
L__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEdense_84/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_84/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*

#0
$1*
<
0
1
2
3
4
5
6
7*

�0
�1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
�
^0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
L
�0
�1
�2
�3
�4
�5
�6
�7
�8*
L
�0
�1
�2
�3
�4
�5
�6
�7
�8*
* 
* 
* 
* 
* 
* 
* 
* 
* 

#0
$1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
�	variables
�	keras_api

�total

�count*
M
�	variables
�	keras_api

�total

�count
�
_fn_kwargs*
c]
VARIABLE_VALUEAdam/m/conv2d_106/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/v/conv2d_106/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE#Adam/m/batch_normalization_29/gamma1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE#Adam/v/batch_normalization_29/gamma1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE"Adam/m/batch_normalization_29/beta1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE"Adam/v/batch_normalization_29/beta1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/m/conv2d_107/kernel1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/v/conv2d_107/kernel1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_107/bias1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv2d_107/bias2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/dense_83/kernel2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/dense_83/kernel2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/dense_83/bias2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/dense_83/bias2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/dense_84/kernel2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/dense_84/kernel2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/dense_84/bias2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/dense_84/bias2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv2d_106/kernel/Read/ReadVariableOp0batch_normalization_29/gamma/Read/ReadVariableOp/batch_normalization_29/beta/Read/ReadVariableOp6batch_normalization_29/moving_mean/Read/ReadVariableOp:batch_normalization_29/moving_variance/Read/ReadVariableOp%conv2d_107/kernel/Read/ReadVariableOp#conv2d_107/bias/Read/ReadVariableOp#dense_83/kernel/Read/ReadVariableOp!dense_83/bias/Read/ReadVariableOp#dense_84/kernel/Read/ReadVariableOp!dense_84/bias/Read/ReadVariableOpiteration/Read/ReadVariableOp!learning_rate/Read/ReadVariableOp,Adam/m/conv2d_106/kernel/Read/ReadVariableOp,Adam/v/conv2d_106/kernel/Read/ReadVariableOp7Adam/m/batch_normalization_29/gamma/Read/ReadVariableOp7Adam/v/batch_normalization_29/gamma/Read/ReadVariableOp6Adam/m/batch_normalization_29/beta/Read/ReadVariableOp6Adam/v/batch_normalization_29/beta/Read/ReadVariableOp,Adam/m/conv2d_107/kernel/Read/ReadVariableOp,Adam/v/conv2d_107/kernel/Read/ReadVariableOp*Adam/m/conv2d_107/bias/Read/ReadVariableOp*Adam/v/conv2d_107/bias/Read/ReadVariableOp*Adam/m/dense_83/kernel/Read/ReadVariableOp*Adam/v/dense_83/kernel/Read/ReadVariableOp(Adam/m/dense_83/bias/Read/ReadVariableOp(Adam/v/dense_83/bias/Read/ReadVariableOp*Adam/m/dense_84/kernel/Read/ReadVariableOp*Adam/v/dense_84/kernel/Read/ReadVariableOp(Adam/m/dense_84/bias/Read/ReadVariableOp(Adam/v/dense_84/bias/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpConst*0
Tin)
'2%	*
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
GPU 2J 8� *(
f#R!
__inference__traced_save_111743
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_106/kernelbatch_normalization_29/gammabatch_normalization_29/beta"batch_normalization_29/moving_mean&batch_normalization_29/moving_varianceconv2d_107/kernelconv2d_107/biasdense_83/kerneldense_83/biasdense_84/kerneldense_84/bias	iterationlearning_rateAdam/m/conv2d_106/kernelAdam/v/conv2d_106/kernel#Adam/m/batch_normalization_29/gamma#Adam/v/batch_normalization_29/gamma"Adam/m/batch_normalization_29/beta"Adam/v/batch_normalization_29/betaAdam/m/conv2d_107/kernelAdam/v/conv2d_107/kernelAdam/m/conv2d_107/biasAdam/v/conv2d_107/biasAdam/m/dense_83/kernelAdam/v/dense_83/kernelAdam/m/dense_83/biasAdam/v/dense_83/biasAdam/m/dense_84/kernelAdam/v/dense_84/kernelAdam/m/dense_84/biasAdam/v/dense_84/biastotal_1count_1totalcount*/
Tin(
&2$*
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
GPU 2J 8� *+
f&R$
"__inference__traced_restore_111858��
�
b
F__inference_flatten_40_layer_call_and_return_conditional_losses_110976

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"�����  ^
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:�����������Z
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������??:W S
/
_output_shapes
:���������??
 
_user_specified_nameinputs
�
�
)__inference_dense_83_layer_call_fn_111584

inputs
unknown:
�� 
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_83_layer_call_and_return_conditional_losses_110989o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:��������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:�����������
 
_user_specified_nameinputs
�'
�
I__inference_sequential_46_layer_call_and_return_conditional_losses_111237
conv2d_106_input,
conv2d_106_111206:�,
batch_normalization_29_111209:	�,
batch_normalization_29_111211:	�,
batch_normalization_29_111213:	�,
batch_normalization_29_111215:	�,
conv2d_107_111219:�
conv2d_107_111221:#
dense_83_111226:
�� 
dense_83_111228: !
dense_84_111231: 
dense_84_111233:
identity��.batch_normalization_29/StatefulPartitionedCall�"conv2d_106/StatefulPartitionedCall�"conv2d_107/StatefulPartitionedCall� dense_83/StatefulPartitionedCall� dense_84/StatefulPartitionedCall�
"conv2d_106/StatefulPartitionedCallStatefulPartitionedCallconv2d_106_inputconv2d_106_111206*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:������������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_conv2d_106_layer_call_and_return_conditional_losses_110932�
.batch_normalization_29/StatefulPartitionedCallStatefulPartitionedCall+conv2d_106/StatefulPartitionedCall:output:0batch_normalization_29_111209batch_normalization_29_111211batch_normalization_29_111213batch_normalization_29_111215*
Tin	
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:������������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *[
fVRT
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_110864�
re_lu_29/PartitionedCallPartitionedCall7batch_normalization_29/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_re_lu_29_layer_call_and_return_conditional_losses_110950�
"conv2d_107/StatefulPartitionedCallStatefulPartitionedCall!re_lu_29/PartitionedCall:output:0conv2d_107_111219conv2d_107_111221*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������~~*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_conv2d_107_layer_call_and_return_conditional_losses_110963�
 max_pooling2d_63/PartitionedCallPartitionedCall+conv2d_107/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������??* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_max_pooling2d_63_layer_call_and_return_conditional_losses_110915�
flatten_40/PartitionedCallPartitionedCall)max_pooling2d_63/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_flatten_40_layer_call_and_return_conditional_losses_110976�
 dense_83/StatefulPartitionedCallStatefulPartitionedCall#flatten_40/PartitionedCall:output:0dense_83_111226dense_83_111228*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_83_layer_call_and_return_conditional_losses_110989�
 dense_84/StatefulPartitionedCallStatefulPartitionedCall)dense_83/StatefulPartitionedCall:output:0dense_84_111231dense_84_111233*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_84_layer_call_and_return_conditional_losses_111006x
IdentityIdentity)dense_84/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp/^batch_normalization_29/StatefulPartitionedCall#^conv2d_106/StatefulPartitionedCall#^conv2d_107/StatefulPartitionedCall!^dense_83/StatefulPartitionedCall!^dense_84/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:�����������: : : : : : : : : : : 2`
.batch_normalization_29/StatefulPartitionedCall.batch_normalization_29/StatefulPartitionedCall2H
"conv2d_106/StatefulPartitionedCall"conv2d_106/StatefulPartitionedCall2H
"conv2d_107/StatefulPartitionedCall"conv2d_107/StatefulPartitionedCall2D
 dense_83/StatefulPartitionedCall dense_83/StatefulPartitionedCall2D
 dense_84/StatefulPartitionedCall dense_84/StatefulPartitionedCall:c _
1
_output_shapes
:�����������
*
_user_specified_nameconv2d_106_input
�
`
D__inference_re_lu_29_layer_call_and_return_conditional_losses_111534

inputs
identityQ
ReluReluinputs*
T0*2
_output_shapes 
:������������e
IdentityIdentityRelu:activations:0*
T0*2
_output_shapes 
:������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:������������:Z V
2
_output_shapes 
:������������
 
_user_specified_nameinputs
�	
�
7__inference_batch_normalization_29_layer_call_fn_111475

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,����������������������������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *[
fVRT
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_110864�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,����������������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�

�
D__inference_dense_84_layer_call_and_return_conditional_losses_111615

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:���������Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
b
F__inference_flatten_40_layer_call_and_return_conditional_losses_111575

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"�����  ^
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:�����������Z
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������??:W S
/
_output_shapes
:���������??
 
_user_specified_nameinputs
�
`
D__inference_re_lu_29_layer_call_and_return_conditional_losses_110950

inputs
identityQ
ReluReluinputs*
T0*2
_output_shapes 
:������������e
IdentityIdentityRelu:activations:0*
T0*2
_output_shapes 
:������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:������������:Z V
2
_output_shapes 
:������������
 
_user_specified_nameinputs
�

�
D__inference_dense_84_layer_call_and_return_conditional_losses_111006

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:���������Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�

�
.__inference_sequential_46_layer_call_fn_111356

inputs"
unknown:�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
	unknown_3:	�$
	unknown_4:�
	unknown_5:
	unknown_6:
�� 
	unknown_7: 
	unknown_8: 
	unknown_9:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*+
_read_only_resource_inputs
		
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_sequential_46_layer_call_and_return_conditional_losses_111151o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:�����������: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�D
�
!__inference__wrapped_model_110842
conv2d_106_inputR
7sequential_46_conv2d_106_conv2d_readvariableop_resource:�K
<sequential_46_batch_normalization_29_readvariableop_resource:	�M
>sequential_46_batch_normalization_29_readvariableop_1_resource:	�\
Msequential_46_batch_normalization_29_fusedbatchnormv3_readvariableop_resource:	�^
Osequential_46_batch_normalization_29_fusedbatchnormv3_readvariableop_1_resource:	�R
7sequential_46_conv2d_107_conv2d_readvariableop_resource:�F
8sequential_46_conv2d_107_biasadd_readvariableop_resource:I
5sequential_46_dense_83_matmul_readvariableop_resource:
�� D
6sequential_46_dense_83_biasadd_readvariableop_resource: G
5sequential_46_dense_84_matmul_readvariableop_resource: D
6sequential_46_dense_84_biasadd_readvariableop_resource:
identity��Dsequential_46/batch_normalization_29/FusedBatchNormV3/ReadVariableOp�Fsequential_46/batch_normalization_29/FusedBatchNormV3/ReadVariableOp_1�3sequential_46/batch_normalization_29/ReadVariableOp�5sequential_46/batch_normalization_29/ReadVariableOp_1�.sequential_46/conv2d_106/Conv2D/ReadVariableOp�/sequential_46/conv2d_107/BiasAdd/ReadVariableOp�.sequential_46/conv2d_107/Conv2D/ReadVariableOp�-sequential_46/dense_83/BiasAdd/ReadVariableOp�,sequential_46/dense_83/MatMul/ReadVariableOp�-sequential_46/dense_84/BiasAdd/ReadVariableOp�,sequential_46/dense_84/MatMul/ReadVariableOp�
.sequential_46/conv2d_106/Conv2D/ReadVariableOpReadVariableOp7sequential_46_conv2d_106_conv2d_readvariableop_resource*'
_output_shapes
:�*
dtype0�
sequential_46/conv2d_106/Conv2DConv2Dconv2d_106_input6sequential_46/conv2d_106/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:������������*
paddingSAME*
strides
�
3sequential_46/batch_normalization_29/ReadVariableOpReadVariableOp<sequential_46_batch_normalization_29_readvariableop_resource*
_output_shapes	
:�*
dtype0�
5sequential_46/batch_normalization_29/ReadVariableOp_1ReadVariableOp>sequential_46_batch_normalization_29_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
Dsequential_46/batch_normalization_29/FusedBatchNormV3/ReadVariableOpReadVariableOpMsequential_46_batch_normalization_29_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Fsequential_46/batch_normalization_29/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpOsequential_46_batch_normalization_29_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
5sequential_46/batch_normalization_29/FusedBatchNormV3FusedBatchNormV3(sequential_46/conv2d_106/Conv2D:output:0;sequential_46/batch_normalization_29/ReadVariableOp:value:0=sequential_46/batch_normalization_29/ReadVariableOp_1:value:0Lsequential_46/batch_normalization_29/FusedBatchNormV3/ReadVariableOp:value:0Nsequential_46/batch_normalization_29/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*R
_output_shapes@
>:������������:�:�:�:�:*
epsilon%o�:*
is_training( �
sequential_46/re_lu_29/ReluRelu9sequential_46/batch_normalization_29/FusedBatchNormV3:y:0*
T0*2
_output_shapes 
:�������������
.sequential_46/conv2d_107/Conv2D/ReadVariableOpReadVariableOp7sequential_46_conv2d_107_conv2d_readvariableop_resource*'
_output_shapes
:�*
dtype0�
sequential_46/conv2d_107/Conv2DConv2D)sequential_46/re_lu_29/Relu:activations:06sequential_46/conv2d_107/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������~~*
paddingVALID*
strides
�
/sequential_46/conv2d_107/BiasAdd/ReadVariableOpReadVariableOp8sequential_46_conv2d_107_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
 sequential_46/conv2d_107/BiasAddBiasAdd(sequential_46/conv2d_107/Conv2D:output:07sequential_46/conv2d_107/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������~~�
sequential_46/conv2d_107/ReluRelu)sequential_46/conv2d_107/BiasAdd:output:0*
T0*/
_output_shapes
:���������~~�
&sequential_46/max_pooling2d_63/MaxPoolMaxPool+sequential_46/conv2d_107/Relu:activations:0*/
_output_shapes
:���������??*
ksize
*
paddingVALID*
strides
o
sequential_46/flatten_40/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����  �
 sequential_46/flatten_40/ReshapeReshape/sequential_46/max_pooling2d_63/MaxPool:output:0'sequential_46/flatten_40/Const:output:0*
T0*)
_output_shapes
:������������
,sequential_46/dense_83/MatMul/ReadVariableOpReadVariableOp5sequential_46_dense_83_matmul_readvariableop_resource* 
_output_shapes
:
�� *
dtype0�
sequential_46/dense_83/MatMulMatMul)sequential_46/flatten_40/Reshape:output:04sequential_46/dense_83/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
-sequential_46/dense_83/BiasAdd/ReadVariableOpReadVariableOp6sequential_46_dense_83_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
sequential_46/dense_83/BiasAddBiasAdd'sequential_46/dense_83/MatMul:product:05sequential_46/dense_83/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� ~
sequential_46/dense_83/ReluRelu'sequential_46/dense_83/BiasAdd:output:0*
T0*'
_output_shapes
:��������� �
,sequential_46/dense_84/MatMul/ReadVariableOpReadVariableOp5sequential_46_dense_84_matmul_readvariableop_resource*
_output_shapes

: *
dtype0�
sequential_46/dense_84/MatMulMatMul)sequential_46/dense_83/Relu:activations:04sequential_46/dense_84/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
-sequential_46/dense_84/BiasAdd/ReadVariableOpReadVariableOp6sequential_46_dense_84_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_46/dense_84/BiasAddBiasAdd'sequential_46/dense_84/MatMul:product:05sequential_46/dense_84/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
sequential_46/dense_84/SigmoidSigmoid'sequential_46/dense_84/BiasAdd:output:0*
T0*'
_output_shapes
:���������q
IdentityIdentity"sequential_46/dense_84/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOpE^sequential_46/batch_normalization_29/FusedBatchNormV3/ReadVariableOpG^sequential_46/batch_normalization_29/FusedBatchNormV3/ReadVariableOp_14^sequential_46/batch_normalization_29/ReadVariableOp6^sequential_46/batch_normalization_29/ReadVariableOp_1/^sequential_46/conv2d_106/Conv2D/ReadVariableOp0^sequential_46/conv2d_107/BiasAdd/ReadVariableOp/^sequential_46/conv2d_107/Conv2D/ReadVariableOp.^sequential_46/dense_83/BiasAdd/ReadVariableOp-^sequential_46/dense_83/MatMul/ReadVariableOp.^sequential_46/dense_84/BiasAdd/ReadVariableOp-^sequential_46/dense_84/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:�����������: : : : : : : : : : : 2�
Dsequential_46/batch_normalization_29/FusedBatchNormV3/ReadVariableOpDsequential_46/batch_normalization_29/FusedBatchNormV3/ReadVariableOp2�
Fsequential_46/batch_normalization_29/FusedBatchNormV3/ReadVariableOp_1Fsequential_46/batch_normalization_29/FusedBatchNormV3/ReadVariableOp_12j
3sequential_46/batch_normalization_29/ReadVariableOp3sequential_46/batch_normalization_29/ReadVariableOp2n
5sequential_46/batch_normalization_29/ReadVariableOp_15sequential_46/batch_normalization_29/ReadVariableOp_12`
.sequential_46/conv2d_106/Conv2D/ReadVariableOp.sequential_46/conv2d_106/Conv2D/ReadVariableOp2b
/sequential_46/conv2d_107/BiasAdd/ReadVariableOp/sequential_46/conv2d_107/BiasAdd/ReadVariableOp2`
.sequential_46/conv2d_107/Conv2D/ReadVariableOp.sequential_46/conv2d_107/Conv2D/ReadVariableOp2^
-sequential_46/dense_83/BiasAdd/ReadVariableOp-sequential_46/dense_83/BiasAdd/ReadVariableOp2\
,sequential_46/dense_83/MatMul/ReadVariableOp,sequential_46/dense_83/MatMul/ReadVariableOp2^
-sequential_46/dense_84/BiasAdd/ReadVariableOp-sequential_46/dense_84/BiasAdd/ReadVariableOp2\
,sequential_46/dense_84/MatMul/ReadVariableOp,sequential_46/dense_84/MatMul/ReadVariableOp:c _
1
_output_shapes
:�����������
*
_user_specified_nameconv2d_106_input
�>
�

I__inference_sequential_46_layer_call_and_return_conditional_losses_111448

inputsD
)conv2d_106_conv2d_readvariableop_resource:�=
.batch_normalization_29_readvariableop_resource:	�?
0batch_normalization_29_readvariableop_1_resource:	�N
?batch_normalization_29_fusedbatchnormv3_readvariableop_resource:	�P
Abatch_normalization_29_fusedbatchnormv3_readvariableop_1_resource:	�D
)conv2d_107_conv2d_readvariableop_resource:�8
*conv2d_107_biasadd_readvariableop_resource:;
'dense_83_matmul_readvariableop_resource:
�� 6
(dense_83_biasadd_readvariableop_resource: 9
'dense_84_matmul_readvariableop_resource: 6
(dense_84_biasadd_readvariableop_resource:
identity��%batch_normalization_29/AssignNewValue�'batch_normalization_29/AssignNewValue_1�6batch_normalization_29/FusedBatchNormV3/ReadVariableOp�8batch_normalization_29/FusedBatchNormV3/ReadVariableOp_1�%batch_normalization_29/ReadVariableOp�'batch_normalization_29/ReadVariableOp_1� conv2d_106/Conv2D/ReadVariableOp�!conv2d_107/BiasAdd/ReadVariableOp� conv2d_107/Conv2D/ReadVariableOp�dense_83/BiasAdd/ReadVariableOp�dense_83/MatMul/ReadVariableOp�dense_84/BiasAdd/ReadVariableOp�dense_84/MatMul/ReadVariableOp�
 conv2d_106/Conv2D/ReadVariableOpReadVariableOp)conv2d_106_conv2d_readvariableop_resource*'
_output_shapes
:�*
dtype0�
conv2d_106/Conv2DConv2Dinputs(conv2d_106/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:������������*
paddingSAME*
strides
�
%batch_normalization_29/ReadVariableOpReadVariableOp.batch_normalization_29_readvariableop_resource*
_output_shapes	
:�*
dtype0�
'batch_normalization_29/ReadVariableOp_1ReadVariableOp0batch_normalization_29_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
6batch_normalization_29/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_29_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
8batch_normalization_29/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_29_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
'batch_normalization_29/FusedBatchNormV3FusedBatchNormV3conv2d_106/Conv2D:output:0-batch_normalization_29/ReadVariableOp:value:0/batch_normalization_29/ReadVariableOp_1:value:0>batch_normalization_29/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_29/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*R
_output_shapes@
>:������������:�:�:�:�:*
epsilon%o�:*
exponential_avg_factor%
�#<�
%batch_normalization_29/AssignNewValueAssignVariableOp?batch_normalization_29_fusedbatchnormv3_readvariableop_resource4batch_normalization_29/FusedBatchNormV3:batch_mean:07^batch_normalization_29/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
'batch_normalization_29/AssignNewValue_1AssignVariableOpAbatch_normalization_29_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_29/FusedBatchNormV3:batch_variance:09^batch_normalization_29/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(
re_lu_29/ReluRelu+batch_normalization_29/FusedBatchNormV3:y:0*
T0*2
_output_shapes 
:�������������
 conv2d_107/Conv2D/ReadVariableOpReadVariableOp)conv2d_107_conv2d_readvariableop_resource*'
_output_shapes
:�*
dtype0�
conv2d_107/Conv2DConv2Dre_lu_29/Relu:activations:0(conv2d_107/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������~~*
paddingVALID*
strides
�
!conv2d_107/BiasAdd/ReadVariableOpReadVariableOp*conv2d_107_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_107/BiasAddBiasAddconv2d_107/Conv2D:output:0)conv2d_107/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������~~n
conv2d_107/ReluReluconv2d_107/BiasAdd:output:0*
T0*/
_output_shapes
:���������~~�
max_pooling2d_63/MaxPoolMaxPoolconv2d_107/Relu:activations:0*/
_output_shapes
:���������??*
ksize
*
paddingVALID*
strides
a
flatten_40/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����  �
flatten_40/ReshapeReshape!max_pooling2d_63/MaxPool:output:0flatten_40/Const:output:0*
T0*)
_output_shapes
:������������
dense_83/MatMul/ReadVariableOpReadVariableOp'dense_83_matmul_readvariableop_resource* 
_output_shapes
:
�� *
dtype0�
dense_83/MatMulMatMulflatten_40/Reshape:output:0&dense_83/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
dense_83/BiasAdd/ReadVariableOpReadVariableOp(dense_83_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
dense_83/BiasAddBiasAdddense_83/MatMul:product:0'dense_83/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� b
dense_83/ReluReludense_83/BiasAdd:output:0*
T0*'
_output_shapes
:��������� �
dense_84/MatMul/ReadVariableOpReadVariableOp'dense_84_matmul_readvariableop_resource*
_output_shapes

: *
dtype0�
dense_84/MatMulMatMuldense_83/Relu:activations:0&dense_84/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_84/BiasAdd/ReadVariableOpReadVariableOp(dense_84_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_84/BiasAddBiasAdddense_84/MatMul:product:0'dense_84/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������h
dense_84/SigmoidSigmoiddense_84/BiasAdd:output:0*
T0*'
_output_shapes
:���������c
IdentityIdentitydense_84/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp&^batch_normalization_29/AssignNewValue(^batch_normalization_29/AssignNewValue_17^batch_normalization_29/FusedBatchNormV3/ReadVariableOp9^batch_normalization_29/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_29/ReadVariableOp(^batch_normalization_29/ReadVariableOp_1!^conv2d_106/Conv2D/ReadVariableOp"^conv2d_107/BiasAdd/ReadVariableOp!^conv2d_107/Conv2D/ReadVariableOp ^dense_83/BiasAdd/ReadVariableOp^dense_83/MatMul/ReadVariableOp ^dense_84/BiasAdd/ReadVariableOp^dense_84/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:�����������: : : : : : : : : : : 2N
%batch_normalization_29/AssignNewValue%batch_normalization_29/AssignNewValue2R
'batch_normalization_29/AssignNewValue_1'batch_normalization_29/AssignNewValue_12p
6batch_normalization_29/FusedBatchNormV3/ReadVariableOp6batch_normalization_29/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_29/FusedBatchNormV3/ReadVariableOp_18batch_normalization_29/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_29/ReadVariableOp%batch_normalization_29/ReadVariableOp2R
'batch_normalization_29/ReadVariableOp_1'batch_normalization_29/ReadVariableOp_12D
 conv2d_106/Conv2D/ReadVariableOp conv2d_106/Conv2D/ReadVariableOp2F
!conv2d_107/BiasAdd/ReadVariableOp!conv2d_107/BiasAdd/ReadVariableOp2D
 conv2d_107/Conv2D/ReadVariableOp conv2d_107/Conv2D/ReadVariableOp2B
dense_83/BiasAdd/ReadVariableOpdense_83/BiasAdd/ReadVariableOp2@
dense_83/MatMul/ReadVariableOpdense_83/MatMul/ReadVariableOp2B
dense_84/BiasAdd/ReadVariableOpdense_84/BiasAdd/ReadVariableOp2@
dense_84/MatMul/ReadVariableOpdense_84/MatMul/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
h
L__inference_max_pooling2d_63_layer_call_and_return_conditional_losses_110915

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_110864

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%o�:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�	
�
7__inference_batch_normalization_29_layer_call_fn_111488

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,����������������������������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *[
fVRT
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_110895�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,����������������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�
�
F__inference_conv2d_107_layer_call_and_return_conditional_losses_110963

inputs9
conv2d_readvariableop_resource:�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:�*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������~~*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������~~X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������~~i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������~~w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":������������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Z V
2
_output_shapes 
:������������
 
_user_specified_nameinputs
�I
�
__inference__traced_save_111743
file_prefix0
,savev2_conv2d_106_kernel_read_readvariableop;
7savev2_batch_normalization_29_gamma_read_readvariableop:
6savev2_batch_normalization_29_beta_read_readvariableopA
=savev2_batch_normalization_29_moving_mean_read_readvariableopE
Asavev2_batch_normalization_29_moving_variance_read_readvariableop0
,savev2_conv2d_107_kernel_read_readvariableop.
*savev2_conv2d_107_bias_read_readvariableop.
*savev2_dense_83_kernel_read_readvariableop,
(savev2_dense_83_bias_read_readvariableop.
*savev2_dense_84_kernel_read_readvariableop,
(savev2_dense_84_bias_read_readvariableop(
$savev2_iteration_read_readvariableop	,
(savev2_learning_rate_read_readvariableop7
3savev2_adam_m_conv2d_106_kernel_read_readvariableop7
3savev2_adam_v_conv2d_106_kernel_read_readvariableopB
>savev2_adam_m_batch_normalization_29_gamma_read_readvariableopB
>savev2_adam_v_batch_normalization_29_gamma_read_readvariableopA
=savev2_adam_m_batch_normalization_29_beta_read_readvariableopA
=savev2_adam_v_batch_normalization_29_beta_read_readvariableop7
3savev2_adam_m_conv2d_107_kernel_read_readvariableop7
3savev2_adam_v_conv2d_107_kernel_read_readvariableop5
1savev2_adam_m_conv2d_107_bias_read_readvariableop5
1savev2_adam_v_conv2d_107_bias_read_readvariableop5
1savev2_adam_m_dense_83_kernel_read_readvariableop5
1savev2_adam_v_dense_83_kernel_read_readvariableop3
/savev2_adam_m_dense_83_bias_read_readvariableop3
/savev2_adam_v_dense_83_bias_read_readvariableop5
1savev2_adam_m_dense_84_kernel_read_readvariableop5
1savev2_adam_v_dense_84_kernel_read_readvariableop3
/savev2_adam_m_dense_84_bias_read_readvariableop3
/savev2_adam_v_dense_84_bias_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop
savev2_const

identity_1��MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:$*
dtype0*�
value�B�$B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:$*
dtype0*[
valueRBP$B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv2d_106_kernel_read_readvariableop7savev2_batch_normalization_29_gamma_read_readvariableop6savev2_batch_normalization_29_beta_read_readvariableop=savev2_batch_normalization_29_moving_mean_read_readvariableopAsavev2_batch_normalization_29_moving_variance_read_readvariableop,savev2_conv2d_107_kernel_read_readvariableop*savev2_conv2d_107_bias_read_readvariableop*savev2_dense_83_kernel_read_readvariableop(savev2_dense_83_bias_read_readvariableop*savev2_dense_84_kernel_read_readvariableop(savev2_dense_84_bias_read_readvariableop$savev2_iteration_read_readvariableop(savev2_learning_rate_read_readvariableop3savev2_adam_m_conv2d_106_kernel_read_readvariableop3savev2_adam_v_conv2d_106_kernel_read_readvariableop>savev2_adam_m_batch_normalization_29_gamma_read_readvariableop>savev2_adam_v_batch_normalization_29_gamma_read_readvariableop=savev2_adam_m_batch_normalization_29_beta_read_readvariableop=savev2_adam_v_batch_normalization_29_beta_read_readvariableop3savev2_adam_m_conv2d_107_kernel_read_readvariableop3savev2_adam_v_conv2d_107_kernel_read_readvariableop1savev2_adam_m_conv2d_107_bias_read_readvariableop1savev2_adam_v_conv2d_107_bias_read_readvariableop1savev2_adam_m_dense_83_kernel_read_readvariableop1savev2_adam_v_dense_83_kernel_read_readvariableop/savev2_adam_m_dense_83_bias_read_readvariableop/savev2_adam_v_dense_83_bias_read_readvariableop1savev2_adam_m_dense_84_kernel_read_readvariableop1savev2_adam_v_dense_84_kernel_read_readvariableop/savev2_adam_m_dense_84_bias_read_readvariableop/savev2_adam_v_dense_84_bias_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopsavev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *2
dtypes(
&2$	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*�
_input_shapes�
�: :�:�:�:�:�:�::
�� : : :: : :�:�:�:�:�:�:�:�:::
�� :
�� : : : : ::: : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:-)
'
_output_shapes
:�:!

_output_shapes	
:�:!

_output_shapes	
:�:!

_output_shapes	
:�:!

_output_shapes	
:�:-)
'
_output_shapes
:�: 

_output_shapes
::&"
 
_output_shapes
:
�� : 	

_output_shapes
: :$
 

_output_shapes

: : 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:�:-)
'
_output_shapes
:�:!

_output_shapes	
:�:!

_output_shapes	
:�:!

_output_shapes	
:�:!

_output_shapes	
:�:-)
'
_output_shapes
:�:-)
'
_output_shapes
:�: 

_output_shapes
:: 

_output_shapes
::&"
 
_output_shapes
:
�� :&"
 
_output_shapes
:
�� : 

_output_shapes
: : 

_output_shapes
: :$ 

_output_shapes

: :$ 

_output_shapes

: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
: :!

_output_shapes
: :"

_output_shapes
: :#

_output_shapes
: :$

_output_shapes
: 
�

�
D__inference_dense_83_layer_call_and_return_conditional_losses_110989

inputs2
matmul_readvariableop_resource:
�� -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
�� *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:��������� a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:��������� w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_110895

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�
�
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_111506

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%o�:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�
�
+__inference_conv2d_106_layer_call_fn_111455

inputs"
unknown:�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:������������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_conv2d_106_layer_call_and_return_conditional_losses_110932z
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*2
_output_shapes 
:������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:�����������: 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
.__inference_sequential_46_layer_call_fn_111203
conv2d_106_input"
unknown:�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
	unknown_3:	�$
	unknown_4:�
	unknown_5:
	unknown_6:
�� 
	unknown_7: 
	unknown_8: 
	unknown_9:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallconv2d_106_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*+
_read_only_resource_inputs
		
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_sequential_46_layer_call_and_return_conditional_losses_111151o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:�����������: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:c _
1
_output_shapes
:�����������
*
_user_specified_nameconv2d_106_input
�
�
F__inference_conv2d_106_layer_call_and_return_conditional_losses_110932

inputs9
conv2d_readvariableop_resource:�
identity��Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:�*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:������������*
paddingSAME*
strides
i
IdentityIdentityConv2D:output:0^NoOp*
T0*2
_output_shapes 
:������������^
NoOpNoOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:�����������: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�

�
.__inference_sequential_46_layer_call_fn_111329

inputs"
unknown:�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
	unknown_3:	�$
	unknown_4:�
	unknown_5:
	unknown_6:
�� 
	unknown_7: 
	unknown_8: 
	unknown_9:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_sequential_46_layer_call_and_return_conditional_losses_111013o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:�����������: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�

�
$__inference_signature_wrapper_111302
conv2d_106_input"
unknown:�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
	unknown_3:	�$
	unknown_4:�
	unknown_5:
	unknown_6:
�� 
	unknown_7: 
	unknown_8: 
	unknown_9:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallconv2d_106_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� **
f%R#
!__inference__wrapped_model_110842o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:�����������: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:c _
1
_output_shapes
:�����������
*
_user_specified_nameconv2d_106_input
�
E
)__inference_re_lu_29_layer_call_fn_111529

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_re_lu_29_layer_call_and_return_conditional_losses_110950k
IdentityIdentityPartitionedCall:output:0*
T0*2
_output_shapes 
:������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:������������:Z V
2
_output_shapes 
:������������
 
_user_specified_nameinputs
�7
�	
I__inference_sequential_46_layer_call_and_return_conditional_losses_111402

inputsD
)conv2d_106_conv2d_readvariableop_resource:�=
.batch_normalization_29_readvariableop_resource:	�?
0batch_normalization_29_readvariableop_1_resource:	�N
?batch_normalization_29_fusedbatchnormv3_readvariableop_resource:	�P
Abatch_normalization_29_fusedbatchnormv3_readvariableop_1_resource:	�D
)conv2d_107_conv2d_readvariableop_resource:�8
*conv2d_107_biasadd_readvariableop_resource:;
'dense_83_matmul_readvariableop_resource:
�� 6
(dense_83_biasadd_readvariableop_resource: 9
'dense_84_matmul_readvariableop_resource: 6
(dense_84_biasadd_readvariableop_resource:
identity��6batch_normalization_29/FusedBatchNormV3/ReadVariableOp�8batch_normalization_29/FusedBatchNormV3/ReadVariableOp_1�%batch_normalization_29/ReadVariableOp�'batch_normalization_29/ReadVariableOp_1� conv2d_106/Conv2D/ReadVariableOp�!conv2d_107/BiasAdd/ReadVariableOp� conv2d_107/Conv2D/ReadVariableOp�dense_83/BiasAdd/ReadVariableOp�dense_83/MatMul/ReadVariableOp�dense_84/BiasAdd/ReadVariableOp�dense_84/MatMul/ReadVariableOp�
 conv2d_106/Conv2D/ReadVariableOpReadVariableOp)conv2d_106_conv2d_readvariableop_resource*'
_output_shapes
:�*
dtype0�
conv2d_106/Conv2DConv2Dinputs(conv2d_106/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:������������*
paddingSAME*
strides
�
%batch_normalization_29/ReadVariableOpReadVariableOp.batch_normalization_29_readvariableop_resource*
_output_shapes	
:�*
dtype0�
'batch_normalization_29/ReadVariableOp_1ReadVariableOp0batch_normalization_29_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
6batch_normalization_29/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_29_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
8batch_normalization_29/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_29_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
'batch_normalization_29/FusedBatchNormV3FusedBatchNormV3conv2d_106/Conv2D:output:0-batch_normalization_29/ReadVariableOp:value:0/batch_normalization_29/ReadVariableOp_1:value:0>batch_normalization_29/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_29/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*R
_output_shapes@
>:������������:�:�:�:�:*
epsilon%o�:*
is_training( 
re_lu_29/ReluRelu+batch_normalization_29/FusedBatchNormV3:y:0*
T0*2
_output_shapes 
:�������������
 conv2d_107/Conv2D/ReadVariableOpReadVariableOp)conv2d_107_conv2d_readvariableop_resource*'
_output_shapes
:�*
dtype0�
conv2d_107/Conv2DConv2Dre_lu_29/Relu:activations:0(conv2d_107/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������~~*
paddingVALID*
strides
�
!conv2d_107/BiasAdd/ReadVariableOpReadVariableOp*conv2d_107_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_107/BiasAddBiasAddconv2d_107/Conv2D:output:0)conv2d_107/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������~~n
conv2d_107/ReluReluconv2d_107/BiasAdd:output:0*
T0*/
_output_shapes
:���������~~�
max_pooling2d_63/MaxPoolMaxPoolconv2d_107/Relu:activations:0*/
_output_shapes
:���������??*
ksize
*
paddingVALID*
strides
a
flatten_40/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����  �
flatten_40/ReshapeReshape!max_pooling2d_63/MaxPool:output:0flatten_40/Const:output:0*
T0*)
_output_shapes
:������������
dense_83/MatMul/ReadVariableOpReadVariableOp'dense_83_matmul_readvariableop_resource* 
_output_shapes
:
�� *
dtype0�
dense_83/MatMulMatMulflatten_40/Reshape:output:0&dense_83/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
dense_83/BiasAdd/ReadVariableOpReadVariableOp(dense_83_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
dense_83/BiasAddBiasAdddense_83/MatMul:product:0'dense_83/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� b
dense_83/ReluReludense_83/BiasAdd:output:0*
T0*'
_output_shapes
:��������� �
dense_84/MatMul/ReadVariableOpReadVariableOp'dense_84_matmul_readvariableop_resource*
_output_shapes

: *
dtype0�
dense_84/MatMulMatMuldense_83/Relu:activations:0&dense_84/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_84/BiasAdd/ReadVariableOpReadVariableOp(dense_84_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_84/BiasAddBiasAdddense_84/MatMul:product:0'dense_84/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������h
dense_84/SigmoidSigmoiddense_84/BiasAdd:output:0*
T0*'
_output_shapes
:���������c
IdentityIdentitydense_84/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp7^batch_normalization_29/FusedBatchNormV3/ReadVariableOp9^batch_normalization_29/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_29/ReadVariableOp(^batch_normalization_29/ReadVariableOp_1!^conv2d_106/Conv2D/ReadVariableOp"^conv2d_107/BiasAdd/ReadVariableOp!^conv2d_107/Conv2D/ReadVariableOp ^dense_83/BiasAdd/ReadVariableOp^dense_83/MatMul/ReadVariableOp ^dense_84/BiasAdd/ReadVariableOp^dense_84/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:�����������: : : : : : : : : : : 2p
6batch_normalization_29/FusedBatchNormV3/ReadVariableOp6batch_normalization_29/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_29/FusedBatchNormV3/ReadVariableOp_18batch_normalization_29/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_29/ReadVariableOp%batch_normalization_29/ReadVariableOp2R
'batch_normalization_29/ReadVariableOp_1'batch_normalization_29/ReadVariableOp_12D
 conv2d_106/Conv2D/ReadVariableOp conv2d_106/Conv2D/ReadVariableOp2F
!conv2d_107/BiasAdd/ReadVariableOp!conv2d_107/BiasAdd/ReadVariableOp2D
 conv2d_107/Conv2D/ReadVariableOp conv2d_107/Conv2D/ReadVariableOp2B
dense_83/BiasAdd/ReadVariableOpdense_83/BiasAdd/ReadVariableOp2@
dense_83/MatMul/ReadVariableOpdense_83/MatMul/ReadVariableOp2B
dense_84/BiasAdd/ReadVariableOpdense_84/BiasAdd/ReadVariableOp2@
dense_84/MatMul/ReadVariableOpdense_84/MatMul/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
��
�
"__inference__traced_restore_111858
file_prefix=
"assignvariableop_conv2d_106_kernel:�>
/assignvariableop_1_batch_normalization_29_gamma:	�=
.assignvariableop_2_batch_normalization_29_beta:	�D
5assignvariableop_3_batch_normalization_29_moving_mean:	�H
9assignvariableop_4_batch_normalization_29_moving_variance:	�?
$assignvariableop_5_conv2d_107_kernel:�0
"assignvariableop_6_conv2d_107_bias:6
"assignvariableop_7_dense_83_kernel:
�� .
 assignvariableop_8_dense_83_bias: 4
"assignvariableop_9_dense_84_kernel: /
!assignvariableop_10_dense_84_bias:'
assignvariableop_11_iteration:	 +
!assignvariableop_12_learning_rate: G
,assignvariableop_13_adam_m_conv2d_106_kernel:�G
,assignvariableop_14_adam_v_conv2d_106_kernel:�F
7assignvariableop_15_adam_m_batch_normalization_29_gamma:	�F
7assignvariableop_16_adam_v_batch_normalization_29_gamma:	�E
6assignvariableop_17_adam_m_batch_normalization_29_beta:	�E
6assignvariableop_18_adam_v_batch_normalization_29_beta:	�G
,assignvariableop_19_adam_m_conv2d_107_kernel:�G
,assignvariableop_20_adam_v_conv2d_107_kernel:�8
*assignvariableop_21_adam_m_conv2d_107_bias:8
*assignvariableop_22_adam_v_conv2d_107_bias:>
*assignvariableop_23_adam_m_dense_83_kernel:
�� >
*assignvariableop_24_adam_v_dense_83_kernel:
�� 6
(assignvariableop_25_adam_m_dense_83_bias: 6
(assignvariableop_26_adam_v_dense_83_bias: <
*assignvariableop_27_adam_m_dense_84_kernel: <
*assignvariableop_28_adam_v_dense_84_kernel: 6
(assignvariableop_29_adam_m_dense_84_bias:6
(assignvariableop_30_adam_v_dense_84_bias:%
assignvariableop_31_total_1: %
assignvariableop_32_count_1: #
assignvariableop_33_total: #
assignvariableop_34_count: 
identity_36��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:$*
dtype0*�
value�B�$B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:$*
dtype0*[
valueRBP$B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::::*2
dtypes(
&2$	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp"assignvariableop_conv2d_106_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp/assignvariableop_1_batch_normalization_29_gammaIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp.assignvariableop_2_batch_normalization_29_betaIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp5assignvariableop_3_batch_normalization_29_moving_meanIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp9assignvariableop_4_batch_normalization_29_moving_varianceIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp$assignvariableop_5_conv2d_107_kernelIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp"assignvariableop_6_conv2d_107_biasIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp"assignvariableop_7_dense_83_kernelIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp assignvariableop_8_dense_83_biasIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp"assignvariableop_9_dense_84_kernelIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp!assignvariableop_10_dense_84_biasIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_11AssignVariableOpassignvariableop_11_iterationIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp!assignvariableop_12_learning_rateIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp,assignvariableop_13_adam_m_conv2d_106_kernelIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp,assignvariableop_14_adam_v_conv2d_106_kernelIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp7assignvariableop_15_adam_m_batch_normalization_29_gammaIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp7assignvariableop_16_adam_v_batch_normalization_29_gammaIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp6assignvariableop_17_adam_m_batch_normalization_29_betaIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp6assignvariableop_18_adam_v_batch_normalization_29_betaIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp,assignvariableop_19_adam_m_conv2d_107_kernelIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp,assignvariableop_20_adam_v_conv2d_107_kernelIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp*assignvariableop_21_adam_m_conv2d_107_biasIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp*assignvariableop_22_adam_v_conv2d_107_biasIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp*assignvariableop_23_adam_m_dense_83_kernelIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp*assignvariableop_24_adam_v_dense_83_kernelIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp(assignvariableop_25_adam_m_dense_83_biasIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp(assignvariableop_26_adam_v_dense_83_biasIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp*assignvariableop_27_adam_m_dense_84_kernelIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp*assignvariableop_28_adam_v_dense_84_kernelIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp(assignvariableop_29_adam_m_dense_84_biasIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_v_dense_84_biasIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOpassignvariableop_31_total_1Identity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOpassignvariableop_32_count_1Identity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOpassignvariableop_33_totalIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOpassignvariableop_34_countIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_35Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_36IdentityIdentity_35:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_36Identity_36:output:0*[
_input_shapesJ
H: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�
F__inference_conv2d_106_layer_call_and_return_conditional_losses_111462

inputs9
conv2d_readvariableop_resource:�
identity��Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:�*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:������������*
paddingSAME*
strides
i
IdentityIdentityConv2D:output:0^NoOp*
T0*2
_output_shapes 
:������������^
NoOpNoOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:�����������: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
h
L__inference_max_pooling2d_63_layer_call_and_return_conditional_losses_111564

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�

�
D__inference_dense_83_layer_call_and_return_conditional_losses_111595

inputs2
matmul_readvariableop_resource:
�� -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
�� *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:��������� a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:��������� w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_111524

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�
�
)__inference_dense_84_layer_call_fn_111604

inputs
unknown: 
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_84_layer_call_and_return_conditional_losses_111006o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:��������� : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
F__inference_conv2d_107_layer_call_and_return_conditional_losses_111554

inputs9
conv2d_readvariableop_resource:�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:�*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������~~*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������~~X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������~~i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������~~w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":������������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Z V
2
_output_shapes 
:������������
 
_user_specified_nameinputs
�'
�
I__inference_sequential_46_layer_call_and_return_conditional_losses_111271
conv2d_106_input,
conv2d_106_111240:�,
batch_normalization_29_111243:	�,
batch_normalization_29_111245:	�,
batch_normalization_29_111247:	�,
batch_normalization_29_111249:	�,
conv2d_107_111253:�
conv2d_107_111255:#
dense_83_111260:
�� 
dense_83_111262: !
dense_84_111265: 
dense_84_111267:
identity��.batch_normalization_29/StatefulPartitionedCall�"conv2d_106/StatefulPartitionedCall�"conv2d_107/StatefulPartitionedCall� dense_83/StatefulPartitionedCall� dense_84/StatefulPartitionedCall�
"conv2d_106/StatefulPartitionedCallStatefulPartitionedCallconv2d_106_inputconv2d_106_111240*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:������������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_conv2d_106_layer_call_and_return_conditional_losses_110932�
.batch_normalization_29/StatefulPartitionedCallStatefulPartitionedCall+conv2d_106/StatefulPartitionedCall:output:0batch_normalization_29_111243batch_normalization_29_111245batch_normalization_29_111247batch_normalization_29_111249*
Tin	
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:������������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *[
fVRT
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_110895�
re_lu_29/PartitionedCallPartitionedCall7batch_normalization_29/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_re_lu_29_layer_call_and_return_conditional_losses_110950�
"conv2d_107/StatefulPartitionedCallStatefulPartitionedCall!re_lu_29/PartitionedCall:output:0conv2d_107_111253conv2d_107_111255*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������~~*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_conv2d_107_layer_call_and_return_conditional_losses_110963�
 max_pooling2d_63/PartitionedCallPartitionedCall+conv2d_107/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������??* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_max_pooling2d_63_layer_call_and_return_conditional_losses_110915�
flatten_40/PartitionedCallPartitionedCall)max_pooling2d_63/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_flatten_40_layer_call_and_return_conditional_losses_110976�
 dense_83/StatefulPartitionedCallStatefulPartitionedCall#flatten_40/PartitionedCall:output:0dense_83_111260dense_83_111262*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_83_layer_call_and_return_conditional_losses_110989�
 dense_84/StatefulPartitionedCallStatefulPartitionedCall)dense_83/StatefulPartitionedCall:output:0dense_84_111265dense_84_111267*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_84_layer_call_and_return_conditional_losses_111006x
IdentityIdentity)dense_84/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp/^batch_normalization_29/StatefulPartitionedCall#^conv2d_106/StatefulPartitionedCall#^conv2d_107/StatefulPartitionedCall!^dense_83/StatefulPartitionedCall!^dense_84/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:�����������: : : : : : : : : : : 2`
.batch_normalization_29/StatefulPartitionedCall.batch_normalization_29/StatefulPartitionedCall2H
"conv2d_106/StatefulPartitionedCall"conv2d_106/StatefulPartitionedCall2H
"conv2d_107/StatefulPartitionedCall"conv2d_107/StatefulPartitionedCall2D
 dense_83/StatefulPartitionedCall dense_83/StatefulPartitionedCall2D
 dense_84/StatefulPartitionedCall dense_84/StatefulPartitionedCall:c _
1
_output_shapes
:�����������
*
_user_specified_nameconv2d_106_input
�&
�
I__inference_sequential_46_layer_call_and_return_conditional_losses_111151

inputs,
conv2d_106_111120:�,
batch_normalization_29_111123:	�,
batch_normalization_29_111125:	�,
batch_normalization_29_111127:	�,
batch_normalization_29_111129:	�,
conv2d_107_111133:�
conv2d_107_111135:#
dense_83_111140:
�� 
dense_83_111142: !
dense_84_111145: 
dense_84_111147:
identity��.batch_normalization_29/StatefulPartitionedCall�"conv2d_106/StatefulPartitionedCall�"conv2d_107/StatefulPartitionedCall� dense_83/StatefulPartitionedCall� dense_84/StatefulPartitionedCall�
"conv2d_106/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_106_111120*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:������������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_conv2d_106_layer_call_and_return_conditional_losses_110932�
.batch_normalization_29/StatefulPartitionedCallStatefulPartitionedCall+conv2d_106/StatefulPartitionedCall:output:0batch_normalization_29_111123batch_normalization_29_111125batch_normalization_29_111127batch_normalization_29_111129*
Tin	
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:������������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *[
fVRT
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_110895�
re_lu_29/PartitionedCallPartitionedCall7batch_normalization_29/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_re_lu_29_layer_call_and_return_conditional_losses_110950�
"conv2d_107/StatefulPartitionedCallStatefulPartitionedCall!re_lu_29/PartitionedCall:output:0conv2d_107_111133conv2d_107_111135*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������~~*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_conv2d_107_layer_call_and_return_conditional_losses_110963�
 max_pooling2d_63/PartitionedCallPartitionedCall+conv2d_107/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������??* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_max_pooling2d_63_layer_call_and_return_conditional_losses_110915�
flatten_40/PartitionedCallPartitionedCall)max_pooling2d_63/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_flatten_40_layer_call_and_return_conditional_losses_110976�
 dense_83/StatefulPartitionedCallStatefulPartitionedCall#flatten_40/PartitionedCall:output:0dense_83_111140dense_83_111142*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_83_layer_call_and_return_conditional_losses_110989�
 dense_84/StatefulPartitionedCallStatefulPartitionedCall)dense_83/StatefulPartitionedCall:output:0dense_84_111145dense_84_111147*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_84_layer_call_and_return_conditional_losses_111006x
IdentityIdentity)dense_84/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp/^batch_normalization_29/StatefulPartitionedCall#^conv2d_106/StatefulPartitionedCall#^conv2d_107/StatefulPartitionedCall!^dense_83/StatefulPartitionedCall!^dense_84/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:�����������: : : : : : : : : : : 2`
.batch_normalization_29/StatefulPartitionedCall.batch_normalization_29/StatefulPartitionedCall2H
"conv2d_106/StatefulPartitionedCall"conv2d_106/StatefulPartitionedCall2H
"conv2d_107/StatefulPartitionedCall"conv2d_107/StatefulPartitionedCall2D
 dense_83/StatefulPartitionedCall dense_83/StatefulPartitionedCall2D
 dense_84/StatefulPartitionedCall dense_84/StatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
.__inference_sequential_46_layer_call_fn_111038
conv2d_106_input"
unknown:�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
	unknown_3:	�$
	unknown_4:�
	unknown_5:
	unknown_6:
�� 
	unknown_7: 
	unknown_8: 
	unknown_9:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallconv2d_106_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_sequential_46_layer_call_and_return_conditional_losses_111013o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:�����������: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:c _
1
_output_shapes
:�����������
*
_user_specified_nameconv2d_106_input
�
�
+__inference_conv2d_107_layer_call_fn_111543

inputs"
unknown:�
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������~~*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_conv2d_107_layer_call_and_return_conditional_losses_110963w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������~~`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":������������: : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
2
_output_shapes 
:������������
 
_user_specified_nameinputs
�&
�
I__inference_sequential_46_layer_call_and_return_conditional_losses_111013

inputs,
conv2d_106_110933:�,
batch_normalization_29_110936:	�,
batch_normalization_29_110938:	�,
batch_normalization_29_110940:	�,
batch_normalization_29_110942:	�,
conv2d_107_110964:�
conv2d_107_110966:#
dense_83_110990:
�� 
dense_83_110992: !
dense_84_111007: 
dense_84_111009:
identity��.batch_normalization_29/StatefulPartitionedCall�"conv2d_106/StatefulPartitionedCall�"conv2d_107/StatefulPartitionedCall� dense_83/StatefulPartitionedCall� dense_84/StatefulPartitionedCall�
"conv2d_106/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_106_110933*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:������������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_conv2d_106_layer_call_and_return_conditional_losses_110932�
.batch_normalization_29/StatefulPartitionedCallStatefulPartitionedCall+conv2d_106/StatefulPartitionedCall:output:0batch_normalization_29_110936batch_normalization_29_110938batch_normalization_29_110940batch_normalization_29_110942*
Tin	
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:������������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *[
fVRT
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_110864�
re_lu_29/PartitionedCallPartitionedCall7batch_normalization_29/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_re_lu_29_layer_call_and_return_conditional_losses_110950�
"conv2d_107/StatefulPartitionedCallStatefulPartitionedCall!re_lu_29/PartitionedCall:output:0conv2d_107_110964conv2d_107_110966*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������~~*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_conv2d_107_layer_call_and_return_conditional_losses_110963�
 max_pooling2d_63/PartitionedCallPartitionedCall+conv2d_107/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������??* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_max_pooling2d_63_layer_call_and_return_conditional_losses_110915�
flatten_40/PartitionedCallPartitionedCall)max_pooling2d_63/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_flatten_40_layer_call_and_return_conditional_losses_110976�
 dense_83/StatefulPartitionedCallStatefulPartitionedCall#flatten_40/PartitionedCall:output:0dense_83_110990dense_83_110992*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_83_layer_call_and_return_conditional_losses_110989�
 dense_84/StatefulPartitionedCallStatefulPartitionedCall)dense_83/StatefulPartitionedCall:output:0dense_84_111007dense_84_111009*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_84_layer_call_and_return_conditional_losses_111006x
IdentityIdentity)dense_84/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp/^batch_normalization_29/StatefulPartitionedCall#^conv2d_106/StatefulPartitionedCall#^conv2d_107/StatefulPartitionedCall!^dense_83/StatefulPartitionedCall!^dense_84/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:�����������: : : : : : : : : : : 2`
.batch_normalization_29/StatefulPartitionedCall.batch_normalization_29/StatefulPartitionedCall2H
"conv2d_106/StatefulPartitionedCall"conv2d_106/StatefulPartitionedCall2H
"conv2d_107/StatefulPartitionedCall"conv2d_107/StatefulPartitionedCall2D
 dense_83/StatefulPartitionedCall dense_83/StatefulPartitionedCall2D
 dense_84/StatefulPartitionedCall dense_84/StatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
G
+__inference_flatten_40_layer_call_fn_111569

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_flatten_40_layer_call_and_return_conditional_losses_110976b
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������??:W S
/
_output_shapes
:���������??
 
_user_specified_nameinputs
�
M
1__inference_max_pooling2d_63_layer_call_fn_111559

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_max_pooling2d_63_layer_call_and_return_conditional_losses_110915�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs"�
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
W
conv2d_106_inputC
"serving_default_conv2d_106_input:0�����������<
dense_840
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer-5
layer_with_weights-3
layer-6
layer_with_weights-4
layer-7
		variables

trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
 _jit_compiled_convolution_op"
_tf_keras_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
 axis
	!gamma
"beta
#moving_mean
$moving_variance"
_tf_keras_layer
�
%	variables
&trainable_variables
'regularization_losses
(	keras_api
)__call__
**&call_and_return_all_conditional_losses"
_tf_keras_layer
�
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses

1kernel
2bias
 3_jit_compiled_convolution_op"
_tf_keras_layer
�
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses"
_tf_keras_layer
�
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses"
_tf_keras_layer
�
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
D__call__
*E&call_and_return_all_conditional_losses

Fkernel
Gbias"
_tf_keras_layer
�
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
L__call__
*M&call_and_return_all_conditional_losses

Nkernel
Obias"
_tf_keras_layer
n
0
!1
"2
#3
$4
15
26
F7
G8
N9
O10"
trackable_list_wrapper
_
0
!1
"2
13
24
F5
G6
N7
O8"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Pnon_trainable_variables

Qlayers
Rmetrics
Slayer_regularization_losses
Tlayer_metrics
		variables

trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
Utrace_0
Vtrace_1
Wtrace_2
Xtrace_32�
.__inference_sequential_46_layer_call_fn_111038
.__inference_sequential_46_layer_call_fn_111329
.__inference_sequential_46_layer_call_fn_111356
.__inference_sequential_46_layer_call_fn_111203�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zUtrace_0zVtrace_1zWtrace_2zXtrace_3
�
Ytrace_0
Ztrace_1
[trace_2
\trace_32�
I__inference_sequential_46_layer_call_and_return_conditional_losses_111402
I__inference_sequential_46_layer_call_and_return_conditional_losses_111448
I__inference_sequential_46_layer_call_and_return_conditional_losses_111237
I__inference_sequential_46_layer_call_and_return_conditional_losses_111271�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zYtrace_0zZtrace_1z[trace_2z\trace_3
�B�
!__inference__wrapped_model_110842conv2d_106_input"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
]
_variables
^_iterations
__learning_rate
`_index_dict
a
_momentums
b_velocities
c_update_step_xla"
experimentalOptimizer
,
dserving_default"
signature_map
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
�
enon_trainable_variables

flayers
gmetrics
hlayer_regularization_losses
ilayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
jtrace_02�
+__inference_conv2d_106_layer_call_fn_111455�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zjtrace_0
�
ktrace_02�
F__inference_conv2d_106_layer_call_and_return_conditional_losses_111462�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zktrace_0
,:*�2conv2d_106/kernel
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
<
!0
"1
#2
$3"
trackable_list_wrapper
.
!0
"1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
lnon_trainable_variables

mlayers
nmetrics
olayer_regularization_losses
player_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
qtrace_0
rtrace_12�
7__inference_batch_normalization_29_layer_call_fn_111475
7__inference_batch_normalization_29_layer_call_fn_111488�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zqtrace_0zrtrace_1
�
strace_0
ttrace_12�
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_111506
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_111524�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zstrace_0zttrace_1
 "
trackable_list_wrapper
+:)�2batch_normalization_29/gamma
*:(�2batch_normalization_29/beta
3:1� (2"batch_normalization_29/moving_mean
7:5� (2&batch_normalization_29/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
unon_trainable_variables

vlayers
wmetrics
xlayer_regularization_losses
ylayer_metrics
%	variables
&trainable_variables
'regularization_losses
)__call__
**&call_and_return_all_conditional_losses
&*"call_and_return_conditional_losses"
_generic_user_object
�
ztrace_02�
)__inference_re_lu_29_layer_call_fn_111529�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zztrace_0
�
{trace_02�
D__inference_re_lu_29_layer_call_and_return_conditional_losses_111534�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z{trace_0
.
10
21"
trackable_list_wrapper
.
10
21"
trackable_list_wrapper
 "
trackable_list_wrapper
�
|non_trainable_variables

}layers
~metrics
layer_regularization_losses
�layer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
+__inference_conv2d_107_layer_call_fn_111543�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
F__inference_conv2d_107_layer_call_and_return_conditional_losses_111554�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
,:*�2conv2d_107/kernel
:2conv2d_107/bias
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
1__inference_max_pooling2d_63_layer_call_fn_111559�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
L__inference_max_pooling2d_63_layer_call_and_return_conditional_losses_111564�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
+__inference_flatten_40_layer_call_fn_111569�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
F__inference_flatten_40_layer_call_and_return_conditional_losses_111575�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
F0
G1"
trackable_list_wrapper
.
F0
G1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
@	variables
Atrainable_variables
Bregularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_dense_83_layer_call_fn_111584�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
D__inference_dense_83_layer_call_and_return_conditional_losses_111595�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
#:!
�� 2dense_83/kernel
: 2dense_83/bias
.
N0
O1"
trackable_list_wrapper
.
N0
O1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
H	variables
Itrainable_variables
Jregularization_losses
L__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_dense_84_layer_call_fn_111604�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
D__inference_dense_84_layer_call_and_return_conditional_losses_111615�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
!: 2dense_84/kernel
:2dense_84/bias
.
#0
$1"
trackable_list_wrapper
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
.__inference_sequential_46_layer_call_fn_111038conv2d_106_input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
.__inference_sequential_46_layer_call_fn_111329inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
.__inference_sequential_46_layer_call_fn_111356inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
.__inference_sequential_46_layer_call_fn_111203conv2d_106_input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
I__inference_sequential_46_layer_call_and_return_conditional_losses_111402inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
I__inference_sequential_46_layer_call_and_return_conditional_losses_111448inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
I__inference_sequential_46_layer_call_and_return_conditional_losses_111237conv2d_106_input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
I__inference_sequential_46_layer_call_and_return_conditional_losses_111271conv2d_106_input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
^0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
h
�0
�1
�2
�3
�4
�5
�6
�7
�8"
trackable_list_wrapper
h
�0
�1
�2
�3
�4
�5
�6
�7
�8"
trackable_list_wrapper
�2��
���
FullArgSpec2
args*�'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
�B�
$__inference_signature_wrapper_111302conv2d_106_input"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
+__inference_conv2d_106_layer_call_fn_111455inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_conv2d_106_layer_call_and_return_conditional_losses_111462inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
#0
$1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
7__inference_batch_normalization_29_layer_call_fn_111475inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
7__inference_batch_normalization_29_layer_call_fn_111488inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_111506inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_111524inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
)__inference_re_lu_29_layer_call_fn_111529inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_re_lu_29_layer_call_and_return_conditional_losses_111534inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
+__inference_conv2d_107_layer_call_fn_111543inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_conv2d_107_layer_call_and_return_conditional_losses_111554inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
1__inference_max_pooling2d_63_layer_call_fn_111559inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
L__inference_max_pooling2d_63_layer_call_and_return_conditional_losses_111564inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
+__inference_flatten_40_layer_call_fn_111569inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_flatten_40_layer_call_and_return_conditional_losses_111575inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
)__inference_dense_83_layer_call_fn_111584inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_dense_83_layer_call_and_return_conditional_losses_111595inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
)__inference_dense_84_layer_call_fn_111604inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_dense_84_layer_call_and_return_conditional_losses_111615inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
c
�	variables
�	keras_api

�total

�count
�
_fn_kwargs"
_tf_keras_metric
1:/�2Adam/m/conv2d_106/kernel
1:/�2Adam/v/conv2d_106/kernel
0:.�2#Adam/m/batch_normalization_29/gamma
0:.�2#Adam/v/batch_normalization_29/gamma
/:-�2"Adam/m/batch_normalization_29/beta
/:-�2"Adam/v/batch_normalization_29/beta
1:/�2Adam/m/conv2d_107/kernel
1:/�2Adam/v/conv2d_107/kernel
": 2Adam/m/conv2d_107/bias
": 2Adam/v/conv2d_107/bias
(:&
�� 2Adam/m/dense_83/kernel
(:&
�� 2Adam/v/dense_83/kernel
 : 2Adam/m/dense_83/bias
 : 2Adam/v/dense_83/bias
&:$ 2Adam/m/dense_84/kernel
&:$ 2Adam/v/dense_84/kernel
 :2Adam/m/dense_84/bias
 :2Adam/v/dense_84/bias
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper�
!__inference__wrapped_model_110842�!"#$12FGNOC�@
9�6
4�1
conv2d_106_input�����������
� "3�0
.
dense_84"�
dense_84����������
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_111506�!"#$N�K
D�A
;�8
inputs,����������������������������
p 
� "G�D
=�:
tensor_0,����������������������������
� �
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_111524�!"#$N�K
D�A
;�8
inputs,����������������������������
p
� "G�D
=�:
tensor_0,����������������������������
� �
7__inference_batch_normalization_29_layer_call_fn_111475�!"#$N�K
D�A
;�8
inputs,����������������������������
p 
� "<�9
unknown,�����������������������������
7__inference_batch_normalization_29_layer_call_fn_111488�!"#$N�K
D�A
;�8
inputs,����������������������������
p
� "<�9
unknown,�����������������������������
F__inference_conv2d_106_layer_call_and_return_conditional_losses_111462w9�6
/�,
*�'
inputs�����������
� "7�4
-�*
tensor_0������������
� �
+__inference_conv2d_106_layer_call_fn_111455l9�6
/�,
*�'
inputs�����������
� ",�)
unknown�������������
F__inference_conv2d_107_layer_call_and_return_conditional_losses_111554v12:�7
0�-
+�(
inputs������������
� "4�1
*�'
tensor_0���������~~
� �
+__inference_conv2d_107_layer_call_fn_111543k12:�7
0�-
+�(
inputs������������
� ")�&
unknown���������~~�
D__inference_dense_83_layer_call_and_return_conditional_losses_111595eFG1�.
'�$
"�
inputs�����������
� ",�)
"�
tensor_0��������� 
� �
)__inference_dense_83_layer_call_fn_111584ZFG1�.
'�$
"�
inputs�����������
� "!�
unknown��������� �
D__inference_dense_84_layer_call_and_return_conditional_losses_111615cNO/�,
%�"
 �
inputs��������� 
� ",�)
"�
tensor_0���������
� �
)__inference_dense_84_layer_call_fn_111604XNO/�,
%�"
 �
inputs��������� 
� "!�
unknown����������
F__inference_flatten_40_layer_call_and_return_conditional_losses_111575i7�4
-�*
(�%
inputs���������??
� ".�+
$�!
tensor_0�����������
� �
+__inference_flatten_40_layer_call_fn_111569^7�4
-�*
(�%
inputs���������??
� "#� 
unknown������������
L__inference_max_pooling2d_63_layer_call_and_return_conditional_losses_111564�R�O
H�E
C�@
inputs4������������������������������������
� "O�L
E�B
tensor_04������������������������������������
� �
1__inference_max_pooling2d_63_layer_call_fn_111559�R�O
H�E
C�@
inputs4������������������������������������
� "D�A
unknown4�������������������������������������
D__inference_re_lu_29_layer_call_and_return_conditional_losses_111534u:�7
0�-
+�(
inputs������������
� "7�4
-�*
tensor_0������������
� �
)__inference_re_lu_29_layer_call_fn_111529j:�7
0�-
+�(
inputs������������
� ",�)
unknown�������������
I__inference_sequential_46_layer_call_and_return_conditional_losses_111237�!"#$12FGNOK�H
A�>
4�1
conv2d_106_input�����������
p 

 
� ",�)
"�
tensor_0���������
� �
I__inference_sequential_46_layer_call_and_return_conditional_losses_111271�!"#$12FGNOK�H
A�>
4�1
conv2d_106_input�����������
p

 
� ",�)
"�
tensor_0���������
� �
I__inference_sequential_46_layer_call_and_return_conditional_losses_111402~!"#$12FGNOA�>
7�4
*�'
inputs�����������
p 

 
� ",�)
"�
tensor_0���������
� �
I__inference_sequential_46_layer_call_and_return_conditional_losses_111448~!"#$12FGNOA�>
7�4
*�'
inputs�����������
p

 
� ",�)
"�
tensor_0���������
� �
.__inference_sequential_46_layer_call_fn_111038}!"#$12FGNOK�H
A�>
4�1
conv2d_106_input�����������
p 

 
� "!�
unknown����������
.__inference_sequential_46_layer_call_fn_111203}!"#$12FGNOK�H
A�>
4�1
conv2d_106_input�����������
p

 
� "!�
unknown����������
.__inference_sequential_46_layer_call_fn_111329s!"#$12FGNOA�>
7�4
*�'
inputs�����������
p 

 
� "!�
unknown����������
.__inference_sequential_46_layer_call_fn_111356s!"#$12FGNOA�>
7�4
*�'
inputs�����������
p

 
� "!�
unknown����������
$__inference_signature_wrapper_111302�!"#$12FGNOW�T
� 
M�J
H
conv2d_106_input4�1
conv2d_106_input�����������"3�0
.
dense_84"�
dense_84���������