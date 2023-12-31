��
��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
�
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
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
$
DisableCopyOnRead
resource�
.
Identity

input"T
output"T"	
Ttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
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
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.14.02v2.14.0-rc1-21-g4dacf3f368e8��
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
|
Adam/v/output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/v/output/bias
u
&Adam/v/output/bias/Read/ReadVariableOpReadVariableOpAdam/v/output/bias*
_output_shapes
:*
dtype0
|
Adam/m/output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/m/output/bias
u
&Adam/m/output/bias/Read/ReadVariableOpReadVariableOpAdam/m/output/bias*
_output_shapes
:*
dtype0
�
Adam/v/output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *%
shared_nameAdam/v/output/kernel
}
(Adam/v/output/kernel/Read/ReadVariableOpReadVariableOpAdam/v/output/kernel*
_output_shapes

: *
dtype0
�
Adam/m/output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *%
shared_nameAdam/m/output/kernel
}
(Adam/m/output/kernel/Read/ReadVariableOpReadVariableOpAdam/m/output/kernel*
_output_shapes

: *
dtype0
|
Adam/v/dense1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/v/dense1/bias
u
&Adam/v/dense1/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense1/bias*
_output_shapes
: *
dtype0
|
Adam/m/dense1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/m/dense1/bias
u
&Adam/m/dense1/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense1/bias*
_output_shapes
: *
dtype0
�
Adam/v/dense1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *%
shared_nameAdam/v/dense1/kernel
}
(Adam/v/dense1/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense1/kernel*
_output_shapes

:@ *
dtype0
�
Adam/m/dense1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *%
shared_nameAdam/m/dense1/kernel
}
(Adam/m/dense1/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense1/kernel*
_output_shapes

:@ *
dtype0
�
Adam/v/convolution_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@**
shared_nameAdam/v/convolution_6/bias
�
-Adam/v/convolution_6/bias/Read/ReadVariableOpReadVariableOpAdam/v/convolution_6/bias*
_output_shapes
:@*
dtype0
�
Adam/m/convolution_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@**
shared_nameAdam/m/convolution_6/bias
�
-Adam/m/convolution_6/bias/Read/ReadVariableOpReadVariableOpAdam/m/convolution_6/bias*
_output_shapes
:@*
dtype0
�
Adam/v/convolution_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*,
shared_nameAdam/v/convolution_6/kernel
�
/Adam/v/convolution_6/kernel/Read/ReadVariableOpReadVariableOpAdam/v/convolution_6/kernel*&
_output_shapes
:@@*
dtype0
�
Adam/m/convolution_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*,
shared_nameAdam/m/convolution_6/kernel
�
/Adam/m/convolution_6/kernel/Read/ReadVariableOpReadVariableOpAdam/m/convolution_6/kernel*&
_output_shapes
:@@*
dtype0
�
Adam/v/convolition_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@**
shared_nameAdam/v/convolition_5/bias
�
-Adam/v/convolition_5/bias/Read/ReadVariableOpReadVariableOpAdam/v/convolition_5/bias*
_output_shapes
:@*
dtype0
�
Adam/m/convolition_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@**
shared_nameAdam/m/convolition_5/bias
�
-Adam/m/convolition_5/bias/Read/ReadVariableOpReadVariableOpAdam/m/convolition_5/bias*
_output_shapes
:@*
dtype0
�
Adam/v/convolition_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*,
shared_nameAdam/v/convolition_5/kernel
�
/Adam/v/convolition_5/kernel/Read/ReadVariableOpReadVariableOpAdam/v/convolition_5/kernel*&
_output_shapes
: @*
dtype0
�
Adam/m/convolition_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*,
shared_nameAdam/m/convolition_5/kernel
�
/Adam/m/convolition_5/kernel/Read/ReadVariableOpReadVariableOpAdam/m/convolition_5/kernel*&
_output_shapes
: @*
dtype0
�
Adam/v/convolution_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: **
shared_nameAdam/v/convolution_4/bias
�
-Adam/v/convolution_4/bias/Read/ReadVariableOpReadVariableOpAdam/v/convolution_4/bias*
_output_shapes
: *
dtype0
�
Adam/m/convolution_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: **
shared_nameAdam/m/convolution_4/bias
�
-Adam/m/convolution_4/bias/Read/ReadVariableOpReadVariableOpAdam/m/convolution_4/bias*
_output_shapes
: *
dtype0
�
Adam/v/convolution_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *,
shared_nameAdam/v/convolution_4/kernel
�
/Adam/v/convolution_4/kernel/Read/ReadVariableOpReadVariableOpAdam/v/convolution_4/kernel*&
_output_shapes
:  *
dtype0
�
Adam/m/convolution_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *,
shared_nameAdam/m/convolution_4/kernel
�
/Adam/m/convolution_4/kernel/Read/ReadVariableOpReadVariableOpAdam/m/convolution_4/kernel*&
_output_shapes
:  *
dtype0
�
Adam/v/convolution_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: **
shared_nameAdam/v/convolution_3/bias
�
-Adam/v/convolution_3/bias/Read/ReadVariableOpReadVariableOpAdam/v/convolution_3/bias*
_output_shapes
: *
dtype0
�
Adam/m/convolution_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: **
shared_nameAdam/m/convolution_3/bias
�
-Adam/m/convolution_3/bias/Read/ReadVariableOpReadVariableOpAdam/m/convolution_3/bias*
_output_shapes
: *
dtype0
�
Adam/v/convolution_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_nameAdam/v/convolution_3/kernel
�
/Adam/v/convolution_3/kernel/Read/ReadVariableOpReadVariableOpAdam/v/convolution_3/kernel*&
_output_shapes
: *
dtype0
�
Adam/m/convolution_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_nameAdam/m/convolution_3/kernel
�
/Adam/m/convolution_3/kernel/Read/ReadVariableOpReadVariableOpAdam/m/convolution_3/kernel*&
_output_shapes
: *
dtype0
�
Adam/v/convolution_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameAdam/v/convolution_2/bias
�
-Adam/v/convolution_2/bias/Read/ReadVariableOpReadVariableOpAdam/v/convolution_2/bias*
_output_shapes
:*
dtype0
�
Adam/m/convolution_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameAdam/m/convolution_2/bias
�
-Adam/m/convolution_2/bias/Read/ReadVariableOpReadVariableOpAdam/m/convolution_2/bias*
_output_shapes
:*
dtype0
�
Adam/v/convolution_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_nameAdam/v/convolution_2/kernel
�
/Adam/v/convolution_2/kernel/Read/ReadVariableOpReadVariableOpAdam/v/convolution_2/kernel*&
_output_shapes
:*
dtype0
�
Adam/m/convolution_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_nameAdam/m/convolution_2/kernel
�
/Adam/m/convolution_2/kernel/Read/ReadVariableOpReadVariableOpAdam/m/convolution_2/kernel*&
_output_shapes
:*
dtype0
�
Adam/v/convoluton_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/v/convoluton_1/bias
�
,Adam/v/convoluton_1/bias/Read/ReadVariableOpReadVariableOpAdam/v/convoluton_1/bias*
_output_shapes
:*
dtype0
�
Adam/m/convoluton_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/m/convoluton_1/bias
�
,Adam/m/convoluton_1/bias/Read/ReadVariableOpReadVariableOpAdam/m/convoluton_1/bias*
_output_shapes
:*
dtype0
�
Adam/v/convoluton_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameAdam/v/convoluton_1/kernel
�
.Adam/v/convoluton_1/kernel/Read/ReadVariableOpReadVariableOpAdam/v/convoluton_1/kernel*&
_output_shapes
:*
dtype0
�
Adam/m/convoluton_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameAdam/m/convoluton_1/kernel
�
.Adam/m/convoluton_1/kernel/Read/ReadVariableOpReadVariableOpAdam/m/convoluton_1/kernel*&
_output_shapes
:*
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
n
output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameoutput/bias
g
output/bias/Read/ReadVariableOpReadVariableOpoutput/bias*
_output_shapes
:*
dtype0
v
output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *
shared_nameoutput/kernel
o
!output/kernel/Read/ReadVariableOpReadVariableOpoutput/kernel*
_output_shapes

: *
dtype0
n
dense1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense1/bias
g
dense1/bias/Read/ReadVariableOpReadVariableOpdense1/bias*
_output_shapes
: *
dtype0
v
dense1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *
shared_namedense1/kernel
o
!dense1/kernel/Read/ReadVariableOpReadVariableOpdense1/kernel*
_output_shapes

:@ *
dtype0
|
convolution_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*#
shared_nameconvolution_6/bias
u
&convolution_6/bias/Read/ReadVariableOpReadVariableOpconvolution_6/bias*
_output_shapes
:@*
dtype0
�
convolution_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*%
shared_nameconvolution_6/kernel
�
(convolution_6/kernel/Read/ReadVariableOpReadVariableOpconvolution_6/kernel*&
_output_shapes
:@@*
dtype0
|
convolition_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*#
shared_nameconvolition_5/bias
u
&convolition_5/bias/Read/ReadVariableOpReadVariableOpconvolition_5/bias*
_output_shapes
:@*
dtype0
�
convolition_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*%
shared_nameconvolition_5/kernel
�
(convolition_5/kernel/Read/ReadVariableOpReadVariableOpconvolition_5/kernel*&
_output_shapes
: @*
dtype0
|
convolution_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameconvolution_4/bias
u
&convolution_4/bias/Read/ReadVariableOpReadVariableOpconvolution_4/bias*
_output_shapes
: *
dtype0
�
convolution_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *%
shared_nameconvolution_4/kernel
�
(convolution_4/kernel/Read/ReadVariableOpReadVariableOpconvolution_4/kernel*&
_output_shapes
:  *
dtype0
|
convolution_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameconvolution_3/bias
u
&convolution_3/bias/Read/ReadVariableOpReadVariableOpconvolution_3/bias*
_output_shapes
: *
dtype0
�
convolution_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameconvolution_3/kernel
�
(convolution_3/kernel/Read/ReadVariableOpReadVariableOpconvolution_3/kernel*&
_output_shapes
: *
dtype0
|
convolution_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameconvolution_2/bias
u
&convolution_2/bias/Read/ReadVariableOpReadVariableOpconvolution_2/bias*
_output_shapes
:*
dtype0
�
convolution_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameconvolution_2/kernel
�
(convolution_2/kernel/Read/ReadVariableOpReadVariableOpconvolution_2/kernel*&
_output_shapes
:*
dtype0
z
convoluton_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconvoluton_1/bias
s
%convoluton_1/bias/Read/ReadVariableOpReadVariableOpconvoluton_1/bias*
_output_shapes
:*
dtype0
�
convoluton_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameconvoluton_1/kernel
�
'convoluton_1/kernel/Read/ReadVariableOpReadVariableOpconvoluton_1/kernel*&
_output_shapes
:*
dtype0
�
serving_default_inputsPlaceholder*/
_output_shapes
:���������``*
dtype0*$
shape:���������``
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_inputsconvoluton_1/kernelconvoluton_1/biasconvolution_2/kernelconvolution_2/biasconvolution_3/kernelconvolution_3/biasconvolution_4/kernelconvolution_4/biasconvolition_5/kernelconvolition_5/biasconvolution_6/kernelconvolution_6/biasdense1/kerneldense1/biasoutput/kerneloutput/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *+
f&R$
"__inference_signature_wrapper_6297

NoOpNoOp
ț
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*��
value��B� B�
�
layer-0
layer_with_weights-0
layer-1
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer-6
layer_with_weights-2
layer-7
	layer-8

layer-9
layer_with_weights-3
layer-10
layer-11
layer-12
layer_with_weights-4
layer-13
layer-14
layer-15
layer_with_weights-5
layer-16
layer-17
layer-18
layer-19
layer_with_weights-6
layer-20
layer_with_weights-7
layer-21
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
* 
�
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$__call__
*%&call_and_return_all_conditional_losses

&kernel
'bias
 (_jit_compiled_convolution_op*
�
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses* 
�
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses* 
�
5	variables
6trainable_variables
7regularization_losses
8	keras_api
9__call__
*:&call_and_return_all_conditional_losses

;kernel
<bias
 =_jit_compiled_convolution_op*
�
>	variables
?trainable_variables
@regularization_losses
A	keras_api
B__call__
*C&call_and_return_all_conditional_losses* 
�
D	variables
Etrainable_variables
Fregularization_losses
G	keras_api
H__call__
*I&call_and_return_all_conditional_losses* 
�
J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api
N__call__
*O&call_and_return_all_conditional_losses

Pkernel
Qbias
 R_jit_compiled_convolution_op*
�
S	variables
Ttrainable_variables
Uregularization_losses
V	keras_api
W__call__
*X&call_and_return_all_conditional_losses* 
�
Y	variables
Ztrainable_variables
[regularization_losses
\	keras_api
]__call__
*^&call_and_return_all_conditional_losses* 
�
_	variables
`trainable_variables
aregularization_losses
b	keras_api
c__call__
*d&call_and_return_all_conditional_losses

ekernel
fbias
 g_jit_compiled_convolution_op*
�
h	variables
itrainable_variables
jregularization_losses
k	keras_api
l__call__
*m&call_and_return_all_conditional_losses* 
�
n	variables
otrainable_variables
pregularization_losses
q	keras_api
r__call__
*s&call_and_return_all_conditional_losses* 
�
t	variables
utrainable_variables
vregularization_losses
w	keras_api
x__call__
*y&call_and_return_all_conditional_losses

zkernel
{bias
 |_jit_compiled_convolution_op*
�
}	variables
~trainable_variables
regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias*
�
&0
'1
;2
<3
P4
Q5
e6
f7
z8
{9
�10
�11
�12
�13
�14
�15*
�
&0
'1
;2
<3
P4
Q5
e6
f7
z8
{9
�10
�11
�12
�13
�14
�15*
d
�0
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
�11* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
�
�
_variables
�_iterations
�_learning_rate
�_index_dict
�
_momentums
�_velocities
�_update_step_xla*

�serving_default* 

&0
'1*

&0
'1*

�0
�1* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
 	variables
!trainable_variables
"regularization_losses
$__call__
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
c]
VARIABLE_VALUEconvoluton_1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEconvoluton_1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses* 
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
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

;0
<1*

;0
<1*

�0
�1* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
5	variables
6trainable_variables
7regularization_losses
9__call__
*:&call_and_return_all_conditional_losses
&:"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
d^
VARIABLE_VALUEconvolution_2/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEconvolution_2/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
>	variables
?trainable_variables
@regularization_losses
B__call__
*C&call_and_return_all_conditional_losses
&C"call_and_return_conditional_losses* 
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
D	variables
Etrainable_variables
Fregularization_losses
H__call__
*I&call_and_return_all_conditional_losses
&I"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

P0
Q1*

P0
Q1*

�0
�1* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
J	variables
Ktrainable_variables
Lregularization_losses
N__call__
*O&call_and_return_all_conditional_losses
&O"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
d^
VARIABLE_VALUEconvolution_3/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEconvolution_3/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
S	variables
Ttrainable_variables
Uregularization_losses
W__call__
*X&call_and_return_all_conditional_losses
&X"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
Y	variables
Ztrainable_variables
[regularization_losses
]__call__
*^&call_and_return_all_conditional_losses
&^"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

e0
f1*

e0
f1*

�0
�1* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
_	variables
`trainable_variables
aregularization_losses
c__call__
*d&call_and_return_all_conditional_losses
&d"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
d^
VARIABLE_VALUEconvolution_4/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEconvolution_4/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
h	variables
itrainable_variables
jregularization_losses
l__call__
*m&call_and_return_all_conditional_losses
&m"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
n	variables
otrainable_variables
pregularization_losses
r__call__
*s&call_and_return_all_conditional_losses
&s"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

z0
{1*

z0
{1*

�0
�1* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
t	variables
utrainable_variables
vregularization_losses
x__call__
*y&call_and_return_all_conditional_losses
&y"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
d^
VARIABLE_VALUEconvolition_5/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEconvolition_5/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
}	variables
~trainable_variables
regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

�0
�1*

�0
�1*

�0
�1* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
d^
VARIABLE_VALUEconvolution_6/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEconvolution_6/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
]W
VARIABLE_VALUEdense1/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEdense1/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
]W
VARIABLE_VALUEoutput/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEoutput/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE*

�trace_0* 

�trace_0* 

�trace_0* 

�trace_0* 

�trace_0* 

�trace_0* 

�trace_0* 

�trace_0* 

�trace_0* 

�trace_0* 

�trace_0* 

�trace_0* 
* 
�
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21*

�0
�1*
* 
* 
* 
* 
* 
* 
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29
�30
�31
�32*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15*
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15*
* 
* 
* 
* 
* 

�0
�1* 
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

�0
�1* 
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

�0
�1* 
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

�0
�1* 
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

�0
�1* 
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

�0
�1* 
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
�	variables
�	keras_api

�total

�count*
M
�	variables
�	keras_api

�total

�count
�
_fn_kwargs*
e_
VARIABLE_VALUEAdam/m/convoluton_1/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEAdam/v/convoluton_1/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/m/convoluton_1/bias1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/v/convoluton_1/bias1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUEAdam/m/convolution_2/kernel1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUEAdam/v/convolution_2/kernel1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUEAdam/m/convolution_2/bias1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUEAdam/v/convolution_2/bias1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUEAdam/m/convolution_3/kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEAdam/v/convolution_3/kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEAdam/m/convolution_3/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEAdam/v/convolution_3/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEAdam/m/convolution_4/kernel2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEAdam/v/convolution_4/kernel2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEAdam/m/convolution_4/bias2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEAdam/v/convolution_4/bias2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEAdam/m/convolition_5/kernel2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEAdam/v/convolition_5/kernel2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEAdam/m/convolition_5/bias2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEAdam/v/convolition_5/bias2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEAdam/m/convolution_6/kernel2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEAdam/v/convolution_6/kernel2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEAdam/m/convolution_6/bias2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEAdam/v/convolution_6/bias2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/dense1/kernel2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/dense1/kernel2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/m/dense1/bias2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/v/dense1/bias2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/output/kernel2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/output/kernel2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/m/output/bias2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/v/output/bias2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
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
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameconvoluton_1/kernelconvoluton_1/biasconvolution_2/kernelconvolution_2/biasconvolution_3/kernelconvolution_3/biasconvolution_4/kernelconvolution_4/biasconvolition_5/kernelconvolition_5/biasconvolution_6/kernelconvolution_6/biasdense1/kerneldense1/biasoutput/kerneloutput/bias	iterationlearning_rateAdam/m/convoluton_1/kernelAdam/v/convoluton_1/kernelAdam/m/convoluton_1/biasAdam/v/convoluton_1/biasAdam/m/convolution_2/kernelAdam/v/convolution_2/kernelAdam/m/convolution_2/biasAdam/v/convolution_2/biasAdam/m/convolution_3/kernelAdam/v/convolution_3/kernelAdam/m/convolution_3/biasAdam/v/convolution_3/biasAdam/m/convolution_4/kernelAdam/v/convolution_4/kernelAdam/m/convolution_4/biasAdam/v/convolution_4/biasAdam/m/convolition_5/kernelAdam/v/convolition_5/kernelAdam/m/convolition_5/biasAdam/v/convolition_5/biasAdam/m/convolution_6/kernelAdam/v/convolution_6/kernelAdam/m/convolution_6/biasAdam/v/convolution_6/biasAdam/m/dense1/kernelAdam/v/dense1/kernelAdam/m/dense1/biasAdam/v/dense1/biasAdam/m/output/kernelAdam/v/output/kernelAdam/m/output/biasAdam/v/output/biastotal_1count_1totalcountConst*C
Tin<
:28*
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
GPU 2J 8� *&
f!R
__inference__traced_save_7119
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconvoluton_1/kernelconvoluton_1/biasconvolution_2/kernelconvolution_2/biasconvolution_3/kernelconvolution_3/biasconvolution_4/kernelconvolution_4/biasconvolition_5/kernelconvolition_5/biasconvolution_6/kernelconvolution_6/biasdense1/kerneldense1/biasoutput/kerneloutput/bias	iterationlearning_rateAdam/m/convoluton_1/kernelAdam/v/convoluton_1/kernelAdam/m/convoluton_1/biasAdam/v/convoluton_1/biasAdam/m/convolution_2/kernelAdam/v/convolution_2/kernelAdam/m/convolution_2/biasAdam/v/convolution_2/biasAdam/m/convolution_3/kernelAdam/v/convolution_3/kernelAdam/m/convolution_3/biasAdam/v/convolution_3/biasAdam/m/convolution_4/kernelAdam/v/convolution_4/kernelAdam/m/convolution_4/biasAdam/v/convolution_4/biasAdam/m/convolition_5/kernelAdam/v/convolition_5/kernelAdam/m/convolition_5/biasAdam/v/convolition_5/biasAdam/m/convolution_6/kernelAdam/v/convolution_6/kernelAdam/m/convolution_6/biasAdam/v/convolution_6/biasAdam/m/dense1/kernelAdam/v/dense1/kernelAdam/m/dense1/biasAdam/v/dense1/biasAdam/m/output/kernelAdam/v/output/kernelAdam/m/output/biasAdam/v/output/biastotal_1count_1totalcount*B
Tin;
927*
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
GPU 2J 8� *)
f$R"
 __inference__traced_restore_7290��
�
�
G__inference_convolution_6_layer_call_and_return_conditional_losses_5823

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�4convolution_6/bias/Regularizer/L2Loss/ReadVariableOp�6convolution_6/kernel/Regularizer/L2Loss/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@�
6convolution_6/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
'convolution_6/kernel/Regularizer/L2LossL2Loss>convolution_6/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: k
&convolution_6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
$convolution_6/kernel/Regularizer/mulMul/convolution_6/kernel/Regularizer/mul/x:output:00convolution_6/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
4convolution_6/bias/Regularizer/L2Loss/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
%convolution_6/bias/Regularizer/L2LossL2Loss<convolution_6/bias/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: i
$convolution_6/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
"convolution_6/bias/Regularizer/mulMul-convolution_6/bias/Regularizer/mul/x:output:0.convolution_6/bias/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������@�
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp5^convolution_6/bias/Regularizer/L2Loss/ReadVariableOp7^convolution_6/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2l
4convolution_6/bias/Regularizer/L2Loss/ReadVariableOp4convolution_6/bias/Regularizer/L2Loss/ReadVariableOp2p
6convolution_6/kernel/Regularizer/L2Loss/ReadVariableOp6convolution_6/kernel/Regularizer/L2Loss/ReadVariableOp:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�	
�
__inference_loss_fn_10_6765Y
?convolution_6_kernel_regularizer_l2loss_readvariableop_resource:@@
identity��6convolution_6/kernel/Regularizer/L2Loss/ReadVariableOp�
6convolution_6/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp?convolution_6_kernel_regularizer_l2loss_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
'convolution_6/kernel/Regularizer/L2LossL2Loss>convolution_6/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: k
&convolution_6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
$convolution_6/kernel/Regularizer/mulMul/convolution_6/kernel/Regularizer/mul/x:output:00convolution_6/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: f
IdentityIdentity(convolution_6/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp7^convolution_6/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2p
6convolution_6/kernel/Regularizer/L2Loss/ReadVariableOp6convolution_6/kernel/Regularizer/L2Loss/ReadVariableOp:( $
"
_user_specified_name
resource
�
G
+__inference_activation_3_layer_call_fn_6471

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_activation_3_layer_call_and_return_conditional_losses_5743h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:��������� "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:��������� :W S
/
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
]
A__inference_flatten_layer_call_and_return_conditional_losses_5841

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����@   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:���������@X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
G
+__inference_activation_6_layer_call_fn_6612

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_activation_6_layer_call_and_return_conditional_losses_5833h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
G__inference_convolution_4_layer_call_and_return_conditional_losses_5763

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�4convolution_4/bias/Regularizer/L2Loss/ReadVariableOp�6convolution_4/kernel/Regularizer/L2Loss/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� �
6convolution_4/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0�
'convolution_4/kernel/Regularizer/L2LossL2Loss>convolution_4/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: k
&convolution_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
$convolution_4/kernel/Regularizer/mulMul/convolution_4/kernel/Regularizer/mul/x:output:00convolution_4/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
4convolution_4/bias/Regularizer/L2Loss/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
%convolution_4/bias/Regularizer/L2LossL2Loss<convolution_4/bias/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: i
$convolution_4/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
"convolution_4/bias/Regularizer/mulMul-convolution_4/bias/Regularizer/mul/x:output:0.convolution_4/bias/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:��������� �
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp5^convolution_4/bias/Regularizer/L2Loss/ReadVariableOp7^convolution_4/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2l
4convolution_4/bias/Regularizer/L2Loss/ReadVariableOp4convolution_4/bias/Regularizer/L2Loss/ReadVariableOp2p
6convolution_4/kernel/Regularizer/L2Loss/ReadVariableOp6convolution_4/kernel/Regularizer/L2Loss/ReadVariableOp:W S
/
_output_shapes
:��������� 
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
G
+__inference_activation_2_layer_call_fn_6424

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������00* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_activation_2_layer_call_and_return_conditional_losses_5713h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������00"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������00:W S
/
_output_shapes
:���������00
 
_user_specified_nameinputs
�
�
$__inference_model_layer_call_fn_6102

inputs!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3: 
	unknown_4: #
	unknown_5:  
	unknown_6: #
	unknown_7: @
	unknown_8:@#
	unknown_9:@@

unknown_10:@

unknown_11:@ 

unknown_12: 

unknown_13: 

unknown_14:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_model_layer_call_and_return_conditional_losses_6028o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:���������``: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������``
 
_user_specified_nameinputs:$ 

_user_specified_name6068:$ 

_user_specified_name6070:$ 

_user_specified_name6072:$ 

_user_specified_name6074:$ 

_user_specified_name6076:$ 

_user_specified_name6078:$ 

_user_specified_name6080:$ 

_user_specified_name6082:$	 

_user_specified_name6084:$
 

_user_specified_name6086:$ 

_user_specified_name6088:$ 

_user_specified_name6090:$ 

_user_specified_name6092:$ 

_user_specified_name6094:$ 

_user_specified_name6096:$ 

_user_specified_name6098
��
�
?__inference_model_layer_call_and_return_conditional_losses_6028

inputs+
convoluton_1_5926:
convoluton_1_5928:,
convolution_2_5933: 
convolution_2_5935:,
convolution_3_5940:  
convolution_3_5942: ,
convolution_4_5947:   
convolution_4_5949: ,
convolition_5_5954: @ 
convolition_5_5956:@,
convolution_6_5961:@@ 
convolution_6_5963:@
dense1_5969:@ 
dense1_5971: 
output_5974: 
output_5976:
identity��%convolition_5/StatefulPartitionedCall�4convolition_5/bias/Regularizer/L2Loss/ReadVariableOp�6convolition_5/kernel/Regularizer/L2Loss/ReadVariableOp�%convolution_2/StatefulPartitionedCall�4convolution_2/bias/Regularizer/L2Loss/ReadVariableOp�6convolution_2/kernel/Regularizer/L2Loss/ReadVariableOp�%convolution_3/StatefulPartitionedCall�4convolution_3/bias/Regularizer/L2Loss/ReadVariableOp�6convolution_3/kernel/Regularizer/L2Loss/ReadVariableOp�%convolution_4/StatefulPartitionedCall�4convolution_4/bias/Regularizer/L2Loss/ReadVariableOp�6convolution_4/kernel/Regularizer/L2Loss/ReadVariableOp�%convolution_6/StatefulPartitionedCall�4convolution_6/bias/Regularizer/L2Loss/ReadVariableOp�6convolution_6/kernel/Regularizer/L2Loss/ReadVariableOp�$convoluton_1/StatefulPartitionedCall�3convoluton_1/bias/Regularizer/L2Loss/ReadVariableOp�5convoluton_1/kernel/Regularizer/L2Loss/ReadVariableOp�dense1/StatefulPartitionedCall�output/StatefulPartitionedCall�
$convoluton_1/StatefulPartitionedCallStatefulPartitionedCallinputsconvoluton_1_5926convoluton_1_5928*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������``*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_convoluton_1_layer_call_and_return_conditional_losses_5673�
activation_1/PartitionedCallPartitionedCall-convoluton_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������``* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_activation_1_layer_call_and_return_conditional_losses_5683�
pooling_1/PartitionedCallPartitionedCall%activation_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������00* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_pooling_1_layer_call_and_return_conditional_losses_5598�
%convolution_2/StatefulPartitionedCallStatefulPartitionedCall"pooling_1/PartitionedCall:output:0convolution_2_5933convolution_2_5935*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������00*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_convolution_2_layer_call_and_return_conditional_losses_5703�
activation_2/PartitionedCallPartitionedCall.convolution_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������00* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_activation_2_layer_call_and_return_conditional_losses_5713�
pooling_2/PartitionedCallPartitionedCall%activation_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_pooling_2_layer_call_and_return_conditional_losses_5608�
%convolution_3/StatefulPartitionedCallStatefulPartitionedCall"pooling_2/PartitionedCall:output:0convolution_3_5940convolution_3_5942*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_convolution_3_layer_call_and_return_conditional_losses_5733�
activation_3/PartitionedCallPartitionedCall.convolution_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_activation_3_layer_call_and_return_conditional_losses_5743�
pooling_3/PartitionedCallPartitionedCall%activation_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_pooling_3_layer_call_and_return_conditional_losses_5618�
%convolution_4/StatefulPartitionedCallStatefulPartitionedCall"pooling_3/PartitionedCall:output:0convolution_4_5947convolution_4_5949*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_convolution_4_layer_call_and_return_conditional_losses_5763�
activation_4/PartitionedCallPartitionedCall.convolution_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_activation_4_layer_call_and_return_conditional_losses_5773�
pooling_4/PartitionedCallPartitionedCall%activation_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_pooling_4_layer_call_and_return_conditional_losses_5628�
%convolition_5/StatefulPartitionedCallStatefulPartitionedCall"pooling_4/PartitionedCall:output:0convolition_5_5954convolition_5_5956*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_convolition_5_layer_call_and_return_conditional_losses_5793�
activation_5/PartitionedCallPartitionedCall.convolition_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_activation_5_layer_call_and_return_conditional_losses_5803�
pooling_5/PartitionedCallPartitionedCall%activation_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_pooling_5_layer_call_and_return_conditional_losses_5638�
%convolution_6/StatefulPartitionedCallStatefulPartitionedCall"pooling_5/PartitionedCall:output:0convolution_6_5961convolution_6_5963*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_convolution_6_layer_call_and_return_conditional_losses_5823�
activation_6/PartitionedCallPartitionedCall.convolution_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_activation_6_layer_call_and_return_conditional_losses_5833�
pooling_6/PartitionedCallPartitionedCall%activation_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_pooling_6_layer_call_and_return_conditional_losses_5648�
flatten/PartitionedCallPartitionedCall"pooling_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_5841�
dense1/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense1_5969dense1_5971*
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
GPU 2J 8� *I
fDRB
@__inference_dense1_layer_call_and_return_conditional_losses_5852�
output/StatefulPartitionedCallStatefulPartitionedCall'dense1/StatefulPartitionedCall:output:0output_5974output_5976*
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
GPU 2J 8� *I
fDRB
@__inference_output_layer_call_and_return_conditional_losses_5868�
5convoluton_1/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconvoluton_1_5926*&
_output_shapes
:*
dtype0�
&convoluton_1/kernel/Regularizer/L2LossL2Loss=convoluton_1/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%convoluton_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
#convoluton_1/kernel/Regularizer/mulMul.convoluton_1/kernel/Regularizer/mul/x:output:0/convoluton_1/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
3convoluton_1/bias/Regularizer/L2Loss/ReadVariableOpReadVariableOpconvoluton_1_5928*
_output_shapes
:*
dtype0�
$convoluton_1/bias/Regularizer/L2LossL2Loss;convoluton_1/bias/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: h
#convoluton_1/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
!convoluton_1/bias/Regularizer/mulMul,convoluton_1/bias/Regularizer/mul/x:output:0-convoluton_1/bias/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
6convolution_2/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconvolution_2_5933*&
_output_shapes
:*
dtype0�
'convolution_2/kernel/Regularizer/L2LossL2Loss>convolution_2/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: k
&convolution_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
$convolution_2/kernel/Regularizer/mulMul/convolution_2/kernel/Regularizer/mul/x:output:00convolution_2/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
4convolution_2/bias/Regularizer/L2Loss/ReadVariableOpReadVariableOpconvolution_2_5935*
_output_shapes
:*
dtype0�
%convolution_2/bias/Regularizer/L2LossL2Loss<convolution_2/bias/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: i
$convolution_2/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
"convolution_2/bias/Regularizer/mulMul-convolution_2/bias/Regularizer/mul/x:output:0.convolution_2/bias/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
6convolution_3/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconvolution_3_5940*&
_output_shapes
: *
dtype0�
'convolution_3/kernel/Regularizer/L2LossL2Loss>convolution_3/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: k
&convolution_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
$convolution_3/kernel/Regularizer/mulMul/convolution_3/kernel/Regularizer/mul/x:output:00convolution_3/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
4convolution_3/bias/Regularizer/L2Loss/ReadVariableOpReadVariableOpconvolution_3_5942*
_output_shapes
: *
dtype0�
%convolution_3/bias/Regularizer/L2LossL2Loss<convolution_3/bias/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: i
$convolution_3/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
"convolution_3/bias/Regularizer/mulMul-convolution_3/bias/Regularizer/mul/x:output:0.convolution_3/bias/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
6convolution_4/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconvolution_4_5947*&
_output_shapes
:  *
dtype0�
'convolution_4/kernel/Regularizer/L2LossL2Loss>convolution_4/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: k
&convolution_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
$convolution_4/kernel/Regularizer/mulMul/convolution_4/kernel/Regularizer/mul/x:output:00convolution_4/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
4convolution_4/bias/Regularizer/L2Loss/ReadVariableOpReadVariableOpconvolution_4_5949*
_output_shapes
: *
dtype0�
%convolution_4/bias/Regularizer/L2LossL2Loss<convolution_4/bias/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: i
$convolution_4/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
"convolution_4/bias/Regularizer/mulMul-convolution_4/bias/Regularizer/mul/x:output:0.convolution_4/bias/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
6convolition_5/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconvolition_5_5954*&
_output_shapes
: @*
dtype0�
'convolition_5/kernel/Regularizer/L2LossL2Loss>convolition_5/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: k
&convolition_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
$convolition_5/kernel/Regularizer/mulMul/convolition_5/kernel/Regularizer/mul/x:output:00convolition_5/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
4convolition_5/bias/Regularizer/L2Loss/ReadVariableOpReadVariableOpconvolition_5_5956*
_output_shapes
:@*
dtype0�
%convolition_5/bias/Regularizer/L2LossL2Loss<convolition_5/bias/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: i
$convolition_5/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
"convolition_5/bias/Regularizer/mulMul-convolition_5/bias/Regularizer/mul/x:output:0.convolition_5/bias/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
6convolution_6/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconvolution_6_5961*&
_output_shapes
:@@*
dtype0�
'convolution_6/kernel/Regularizer/L2LossL2Loss>convolution_6/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: k
&convolution_6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
$convolution_6/kernel/Regularizer/mulMul/convolution_6/kernel/Regularizer/mul/x:output:00convolution_6/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
4convolution_6/bias/Regularizer/L2Loss/ReadVariableOpReadVariableOpconvolution_6_5963*
_output_shapes
:@*
dtype0�
%convolution_6/bias/Regularizer/L2LossL2Loss<convolution_6/bias/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: i
$convolution_6/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
"convolution_6/bias/Regularizer/mulMul-convolution_6/bias/Regularizer/mul/x:output:0.convolution_6/bias/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: v
IdentityIdentity'output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp&^convolition_5/StatefulPartitionedCall5^convolition_5/bias/Regularizer/L2Loss/ReadVariableOp7^convolition_5/kernel/Regularizer/L2Loss/ReadVariableOp&^convolution_2/StatefulPartitionedCall5^convolution_2/bias/Regularizer/L2Loss/ReadVariableOp7^convolution_2/kernel/Regularizer/L2Loss/ReadVariableOp&^convolution_3/StatefulPartitionedCall5^convolution_3/bias/Regularizer/L2Loss/ReadVariableOp7^convolution_3/kernel/Regularizer/L2Loss/ReadVariableOp&^convolution_4/StatefulPartitionedCall5^convolution_4/bias/Regularizer/L2Loss/ReadVariableOp7^convolution_4/kernel/Regularizer/L2Loss/ReadVariableOp&^convolution_6/StatefulPartitionedCall5^convolution_6/bias/Regularizer/L2Loss/ReadVariableOp7^convolution_6/kernel/Regularizer/L2Loss/ReadVariableOp%^convoluton_1/StatefulPartitionedCall4^convoluton_1/bias/Regularizer/L2Loss/ReadVariableOp6^convoluton_1/kernel/Regularizer/L2Loss/ReadVariableOp^dense1/StatefulPartitionedCall^output/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:���������``: : : : : : : : : : : : : : : : 2N
%convolition_5/StatefulPartitionedCall%convolition_5/StatefulPartitionedCall2l
4convolition_5/bias/Regularizer/L2Loss/ReadVariableOp4convolition_5/bias/Regularizer/L2Loss/ReadVariableOp2p
6convolition_5/kernel/Regularizer/L2Loss/ReadVariableOp6convolition_5/kernel/Regularizer/L2Loss/ReadVariableOp2N
%convolution_2/StatefulPartitionedCall%convolution_2/StatefulPartitionedCall2l
4convolution_2/bias/Regularizer/L2Loss/ReadVariableOp4convolution_2/bias/Regularizer/L2Loss/ReadVariableOp2p
6convolution_2/kernel/Regularizer/L2Loss/ReadVariableOp6convolution_2/kernel/Regularizer/L2Loss/ReadVariableOp2N
%convolution_3/StatefulPartitionedCall%convolution_3/StatefulPartitionedCall2l
4convolution_3/bias/Regularizer/L2Loss/ReadVariableOp4convolution_3/bias/Regularizer/L2Loss/ReadVariableOp2p
6convolution_3/kernel/Regularizer/L2Loss/ReadVariableOp6convolution_3/kernel/Regularizer/L2Loss/ReadVariableOp2N
%convolution_4/StatefulPartitionedCall%convolution_4/StatefulPartitionedCall2l
4convolution_4/bias/Regularizer/L2Loss/ReadVariableOp4convolution_4/bias/Regularizer/L2Loss/ReadVariableOp2p
6convolution_4/kernel/Regularizer/L2Loss/ReadVariableOp6convolution_4/kernel/Regularizer/L2Loss/ReadVariableOp2N
%convolution_6/StatefulPartitionedCall%convolution_6/StatefulPartitionedCall2l
4convolution_6/bias/Regularizer/L2Loss/ReadVariableOp4convolution_6/bias/Regularizer/L2Loss/ReadVariableOp2p
6convolution_6/kernel/Regularizer/L2Loss/ReadVariableOp6convolution_6/kernel/Regularizer/L2Loss/ReadVariableOp2L
$convoluton_1/StatefulPartitionedCall$convoluton_1/StatefulPartitionedCall2j
3convoluton_1/bias/Regularizer/L2Loss/ReadVariableOp3convoluton_1/bias/Regularizer/L2Loss/ReadVariableOp2n
5convoluton_1/kernel/Regularizer/L2Loss/ReadVariableOp5convoluton_1/kernel/Regularizer/L2Loss/ReadVariableOp2@
dense1/StatefulPartitionedCalldense1/StatefulPartitionedCall2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:W S
/
_output_shapes
:���������``
 
_user_specified_nameinputs:$ 

_user_specified_name5926:$ 

_user_specified_name5928:$ 

_user_specified_name5933:$ 

_user_specified_name5935:$ 

_user_specified_name5940:$ 

_user_specified_name5942:$ 

_user_specified_name5947:$ 

_user_specified_name5949:$	 

_user_specified_name5954:$
 

_user_specified_name5956:$ 

_user_specified_name5961:$ 

_user_specified_name5963:$ 

_user_specified_name5969:$ 

_user_specified_name5971:$ 

_user_specified_name5974:$ 

_user_specified_name5976
�
�
$__inference_model_layer_call_fn_6065

inputs!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3: 
	unknown_4: #
	unknown_5:  
	unknown_6: #
	unknown_7: @
	unknown_8:@#
	unknown_9:@@

unknown_10:@

unknown_11:@ 

unknown_12: 

unknown_13: 

unknown_14:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_model_layer_call_and_return_conditional_losses_5923o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:���������``: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������``
 
_user_specified_nameinputs:$ 

_user_specified_name6031:$ 

_user_specified_name6033:$ 

_user_specified_name6035:$ 

_user_specified_name6037:$ 

_user_specified_name6039:$ 

_user_specified_name6041:$ 

_user_specified_name6043:$ 

_user_specified_name6045:$	 

_user_specified_name6047:$
 

_user_specified_name6049:$ 

_user_specified_name6051:$ 

_user_specified_name6053:$ 

_user_specified_name6055:$ 

_user_specified_name6057:$ 

_user_specified_name6059:$ 

_user_specified_name6061
�
b
F__inference_activation_2_layer_call_and_return_conditional_losses_5713

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:���������00b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:���������00"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������00:W S
/
_output_shapes
:���������00
 
_user_specified_nameinputs
�
�
,__inference_convolution_3_layer_call_fn_6448

inputs!
unknown: 
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_convolution_3_layer_call_and_return_conditional_losses_5733w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:��������� <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs:$ 

_user_specified_name6442:$ 

_user_specified_name6444
�
�
G__inference_convolution_2_layer_call_and_return_conditional_losses_6419

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�4convolution_2/bias/Regularizer/L2Loss/ReadVariableOp�6convolution_2/kernel/Regularizer/L2Loss/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������00*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������00�
6convolution_2/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
'convolution_2/kernel/Regularizer/L2LossL2Loss>convolution_2/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: k
&convolution_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
$convolution_2/kernel/Regularizer/mulMul/convolution_2/kernel/Regularizer/mul/x:output:00convolution_2/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
4convolution_2/bias/Regularizer/L2Loss/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
%convolution_2/bias/Regularizer/L2LossL2Loss<convolution_2/bias/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: i
$convolution_2/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
"convolution_2/bias/Regularizer/mulMul-convolution_2/bias/Regularizer/mul/x:output:0.convolution_2/bias/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������00�
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp5^convolution_2/bias/Regularizer/L2Loss/ReadVariableOp7^convolution_2/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������00: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2l
4convolution_2/bias/Regularizer/L2Loss/ReadVariableOp4convolution_2/bias/Regularizer/L2Loss/ReadVariableOp2p
6convolution_2/kernel/Regularizer/L2Loss/ReadVariableOp6convolution_2/kernel/Regularizer/L2Loss/ReadVariableOp:W S
/
_output_shapes
:���������00
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
F__inference_convoluton_1_layer_call_and_return_conditional_losses_6372

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�3convoluton_1/bias/Regularizer/L2Loss/ReadVariableOp�5convoluton_1/kernel/Regularizer/L2Loss/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������``*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������``�
5convoluton_1/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
&convoluton_1/kernel/Regularizer/L2LossL2Loss=convoluton_1/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%convoluton_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
#convoluton_1/kernel/Regularizer/mulMul.convoluton_1/kernel/Regularizer/mul/x:output:0/convoluton_1/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
3convoluton_1/bias/Regularizer/L2Loss/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
$convoluton_1/bias/Regularizer/L2LossL2Loss;convoluton_1/bias/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: h
#convoluton_1/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
!convoluton_1/bias/Regularizer/mulMul,convoluton_1/bias/Regularizer/mul/x:output:0-convoluton_1/bias/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������``�
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp4^convoluton_1/bias/Regularizer/L2Loss/ReadVariableOp6^convoluton_1/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������``: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2j
3convoluton_1/bias/Regularizer/L2Loss/ReadVariableOp3convoluton_1/bias/Regularizer/L2Loss/ReadVariableOp2n
5convoluton_1/kernel/Regularizer/L2Loss/ReadVariableOp5convoluton_1/kernel/Regularizer/L2Loss/ReadVariableOp:W S
/
_output_shapes
:���������``
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
]
A__inference_flatten_layer_call_and_return_conditional_losses_6638

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����@   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:���������@X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
%__inference_output_layer_call_fn_6666

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
GPU 2J 8� *I
fDRB
@__inference_output_layer_call_and_return_conditional_losses_5868o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
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
 
_user_specified_nameinputs:$ 

_user_specified_name6660:$ 

_user_specified_name6662
�
_
C__inference_pooling_4_layer_call_and_return_conditional_losses_6533

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
__inference_loss_fn_5_6725K
=convolution_3_bias_regularizer_l2loss_readvariableop_resource: 
identity��4convolution_3/bias/Regularizer/L2Loss/ReadVariableOp�
4convolution_3/bias/Regularizer/L2Loss/ReadVariableOpReadVariableOp=convolution_3_bias_regularizer_l2loss_readvariableop_resource*
_output_shapes
: *
dtype0�
%convolution_3/bias/Regularizer/L2LossL2Loss<convolution_3/bias/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: i
$convolution_3/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
"convolution_3/bias/Regularizer/mulMul-convolution_3/bias/Regularizer/mul/x:output:0.convolution_3/bias/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: d
IdentityIdentity&convolution_3/bias/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: Y
NoOpNoOp5^convolution_3/bias/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2l
4convolution_3/bias/Regularizer/L2Loss/ReadVariableOp4convolution_3/bias/Regularizer/L2Loss/ReadVariableOp:( $
"
_user_specified_name
resource
�
D
(__inference_pooling_3_layer_call_fn_6481

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
GPU 2J 8� *L
fGRE
C__inference_pooling_3_layer_call_and_return_conditional_losses_5618�
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
 
_user_specified_nameinputs
�
_
C__inference_pooling_6_layer_call_and_return_conditional_losses_5648

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
__inference_loss_fn_4_6717Y
?convolution_3_kernel_regularizer_l2loss_readvariableop_resource: 
identity��6convolution_3/kernel/Regularizer/L2Loss/ReadVariableOp�
6convolution_3/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp?convolution_3_kernel_regularizer_l2loss_readvariableop_resource*&
_output_shapes
: *
dtype0�
'convolution_3/kernel/Regularizer/L2LossL2Loss>convolution_3/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: k
&convolution_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
$convolution_3/kernel/Regularizer/mulMul/convolution_3/kernel/Regularizer/mul/x:output:00convolution_3/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: f
IdentityIdentity(convolution_3/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp7^convolution_3/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2p
6convolution_3/kernel/Regularizer/L2Loss/ReadVariableOp6convolution_3/kernel/Regularizer/L2Loss/ReadVariableOp:( $
"
_user_specified_name
resource
�
_
C__inference_pooling_4_layer_call_and_return_conditional_losses_5628

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
�
D
(__inference_pooling_4_layer_call_fn_6528

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
GPU 2J 8� *L
fGRE
C__inference_pooling_4_layer_call_and_return_conditional_losses_5628�
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
 
_user_specified_nameinputs
�	
�
@__inference_dense1_layer_call_and_return_conditional_losses_6657

inputs0
matmul_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
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
:��������� _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:��������� S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�	
�
__inference_loss_fn_1_6693J
<convoluton_1_bias_regularizer_l2loss_readvariableop_resource:
identity��3convoluton_1/bias/Regularizer/L2Loss/ReadVariableOp�
3convoluton_1/bias/Regularizer/L2Loss/ReadVariableOpReadVariableOp<convoluton_1_bias_regularizer_l2loss_readvariableop_resource*
_output_shapes
:*
dtype0�
$convoluton_1/bias/Regularizer/L2LossL2Loss;convoluton_1/bias/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: h
#convoluton_1/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
!convoluton_1/bias/Regularizer/mulMul,convoluton_1/bias/Regularizer/mul/x:output:0-convoluton_1/bias/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: c
IdentityIdentity%convoluton_1/bias/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: X
NoOpNoOp4^convoluton_1/bias/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2j
3convoluton_1/bias/Regularizer/L2Loss/ReadVariableOp3convoluton_1/bias/Regularizer/L2Loss/ReadVariableOp:( $
"
_user_specified_name
resource
�
�
%__inference_dense1_layer_call_fn_6647

inputs
unknown:@ 
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
GPU 2J 8� *I
fDRB
@__inference_dense1_layer_call_and_return_conditional_losses_5852o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:��������� <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs:$ 

_user_specified_name6641:$ 

_user_specified_name6643
�
b
F__inference_activation_5_layer_call_and_return_conditional_losses_5803

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:���������@b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�	
�
__inference_loss_fn_11_6773K
=convolution_6_bias_regularizer_l2loss_readvariableop_resource:@
identity��4convolution_6/bias/Regularizer/L2Loss/ReadVariableOp�
4convolution_6/bias/Regularizer/L2Loss/ReadVariableOpReadVariableOp=convolution_6_bias_regularizer_l2loss_readvariableop_resource*
_output_shapes
:@*
dtype0�
%convolution_6/bias/Regularizer/L2LossL2Loss<convolution_6/bias/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: i
$convolution_6/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
"convolution_6/bias/Regularizer/mulMul-convolution_6/bias/Regularizer/mul/x:output:0.convolution_6/bias/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: d
IdentityIdentity&convolution_6/bias/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: Y
NoOpNoOp5^convolution_6/bias/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2l
4convolution_6/bias/Regularizer/L2Loss/ReadVariableOp4convolution_6/bias/Regularizer/L2Loss/ReadVariableOp:( $
"
_user_specified_name
resource
�
b
F__inference_activation_6_layer_call_and_return_conditional_losses_6617

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:���������@b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
_
C__inference_pooling_5_layer_call_and_return_conditional_losses_5638

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
@__inference_dense1_layer_call_and_return_conditional_losses_5852

inputs0
matmul_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
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
:��������� _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:��������� S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
G__inference_convolution_6_layer_call_and_return_conditional_losses_6607

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�4convolution_6/bias/Regularizer/L2Loss/ReadVariableOp�6convolution_6/kernel/Regularizer/L2Loss/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@�
6convolution_6/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
'convolution_6/kernel/Regularizer/L2LossL2Loss>convolution_6/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: k
&convolution_6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
$convolution_6/kernel/Regularizer/mulMul/convolution_6/kernel/Regularizer/mul/x:output:00convolution_6/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
4convolution_6/bias/Regularizer/L2Loss/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
%convolution_6/bias/Regularizer/L2LossL2Loss<convolution_6/bias/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: i
$convolution_6/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
"convolution_6/bias/Regularizer/mulMul-convolution_6/bias/Regularizer/mul/x:output:0.convolution_6/bias/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������@�
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp5^convolution_6/bias/Regularizer/L2Loss/ReadVariableOp7^convolution_6/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2l
4convolution_6/bias/Regularizer/L2Loss/ReadVariableOp4convolution_6/bias/Regularizer/L2Loss/ReadVariableOp2p
6convolution_6/kernel/Regularizer/L2Loss/ReadVariableOp6convolution_6/kernel/Regularizer/L2Loss/ReadVariableOp:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
G__inference_convolution_3_layer_call_and_return_conditional_losses_6466

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�4convolution_3/bias/Regularizer/L2Loss/ReadVariableOp�6convolution_3/kernel/Regularizer/L2Loss/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� �
6convolution_3/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
'convolution_3/kernel/Regularizer/L2LossL2Loss>convolution_3/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: k
&convolution_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
$convolution_3/kernel/Regularizer/mulMul/convolution_3/kernel/Regularizer/mul/x:output:00convolution_3/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
4convolution_3/bias/Regularizer/L2Loss/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
%convolution_3/bias/Regularizer/L2LossL2Loss<convolution_3/bias/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: i
$convolution_3/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
"convolution_3/bias/Regularizer/mulMul-convolution_3/bias/Regularizer/mul/x:output:0.convolution_3/bias/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:��������� �
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp5^convolution_3/bias/Regularizer/L2Loss/ReadVariableOp7^convolution_3/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2l
4convolution_3/bias/Regularizer/L2Loss/ReadVariableOp4convolution_3/bias/Regularizer/L2Loss/ReadVariableOp2p
6convolution_3/kernel/Regularizer/L2Loss/ReadVariableOp6convolution_3/kernel/Regularizer/L2Loss/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
D
(__inference_pooling_1_layer_call_fn_6387

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
GPU 2J 8� *L
fGRE
C__inference_pooling_1_layer_call_and_return_conditional_losses_5598�
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
 
_user_specified_nameinputs
�
b
F__inference_activation_1_layer_call_and_return_conditional_losses_5683

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:���������``b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:���������``"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������``:W S
/
_output_shapes
:���������``
 
_user_specified_nameinputs
�
_
C__inference_pooling_1_layer_call_and_return_conditional_losses_6392

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
�
�
G__inference_convolition_5_layer_call_and_return_conditional_losses_6560

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�4convolition_5/bias/Regularizer/L2Loss/ReadVariableOp�6convolition_5/kernel/Regularizer/L2Loss/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@�
6convolition_5/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
'convolition_5/kernel/Regularizer/L2LossL2Loss>convolition_5/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: k
&convolition_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
$convolition_5/kernel/Regularizer/mulMul/convolition_5/kernel/Regularizer/mul/x:output:00convolition_5/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
4convolition_5/bias/Regularizer/L2Loss/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
%convolition_5/bias/Regularizer/L2LossL2Loss<convolition_5/bias/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: i
$convolition_5/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
"convolition_5/bias/Regularizer/mulMul-convolition_5/bias/Regularizer/mul/x:output:0.convolition_5/bias/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������@�
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp5^convolition_5/bias/Regularizer/L2Loss/ReadVariableOp7^convolition_5/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2l
4convolition_5/bias/Regularizer/L2Loss/ReadVariableOp4convolition_5/bias/Regularizer/L2Loss/ReadVariableOp2p
6convolition_5/kernel/Regularizer/L2Loss/ReadVariableOp6convolition_5/kernel/Regularizer/L2Loss/ReadVariableOp:W S
/
_output_shapes
:��������� 
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�	
�
__inference_loss_fn_0_6685X
>convoluton_1_kernel_regularizer_l2loss_readvariableop_resource:
identity��5convoluton_1/kernel/Regularizer/L2Loss/ReadVariableOp�
5convoluton_1/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp>convoluton_1_kernel_regularizer_l2loss_readvariableop_resource*&
_output_shapes
:*
dtype0�
&convoluton_1/kernel/Regularizer/L2LossL2Loss=convoluton_1/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%convoluton_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
#convoluton_1/kernel/Regularizer/mulMul.convoluton_1/kernel/Regularizer/mul/x:output:0/convoluton_1/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: e
IdentityIdentity'convoluton_1/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: Z
NoOpNoOp6^convoluton_1/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2n
5convoluton_1/kernel/Regularizer/L2Loss/ReadVariableOp5convoluton_1/kernel/Regularizer/L2Loss/ReadVariableOp:( $
"
_user_specified_name
resource
�	
�
__inference_loss_fn_3_6709K
=convolution_2_bias_regularizer_l2loss_readvariableop_resource:
identity��4convolution_2/bias/Regularizer/L2Loss/ReadVariableOp�
4convolution_2/bias/Regularizer/L2Loss/ReadVariableOpReadVariableOp=convolution_2_bias_regularizer_l2loss_readvariableop_resource*
_output_shapes
:*
dtype0�
%convolution_2/bias/Regularizer/L2LossL2Loss<convolution_2/bias/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: i
$convolution_2/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
"convolution_2/bias/Regularizer/mulMul-convolution_2/bias/Regularizer/mul/x:output:0.convolution_2/bias/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: d
IdentityIdentity&convolution_2/bias/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: Y
NoOpNoOp5^convolution_2/bias/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2l
4convolution_2/bias/Regularizer/L2Loss/ReadVariableOp4convolution_2/bias/Regularizer/L2Loss/ReadVariableOp:( $
"
_user_specified_name
resource
�

�
@__inference_output_layer_call_and_return_conditional_losses_6677

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
:���������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
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
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
B
&__inference_flatten_layer_call_fn_6632

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_5841`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
_
C__inference_pooling_6_layer_call_and_return_conditional_losses_6627

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
�
_
C__inference_pooling_3_layer_call_and_return_conditional_losses_5618

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
�
�
,__inference_convolution_2_layer_call_fn_6401

inputs!
unknown:
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
:���������00*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_convolution_2_layer_call_and_return_conditional_losses_5703w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������00<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������00: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������00
 
_user_specified_nameinputs:$ 

_user_specified_name6395:$ 

_user_specified_name6397
�
b
F__inference_activation_5_layer_call_and_return_conditional_losses_6570

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:���������@b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
D
(__inference_pooling_6_layer_call_fn_6622

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
GPU 2J 8� *L
fGRE
C__inference_pooling_6_layer_call_and_return_conditional_losses_5648�
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
 
_user_specified_nameinputs
�	
�
__inference_loss_fn_2_6701Y
?convolution_2_kernel_regularizer_l2loss_readvariableop_resource:
identity��6convolution_2/kernel/Regularizer/L2Loss/ReadVariableOp�
6convolution_2/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp?convolution_2_kernel_regularizer_l2loss_readvariableop_resource*&
_output_shapes
:*
dtype0�
'convolution_2/kernel/Regularizer/L2LossL2Loss>convolution_2/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: k
&convolution_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
$convolution_2/kernel/Regularizer/mulMul/convolution_2/kernel/Regularizer/mul/x:output:00convolution_2/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: f
IdentityIdentity(convolution_2/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp7^convolution_2/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2p
6convolution_2/kernel/Regularizer/L2Loss/ReadVariableOp6convolution_2/kernel/Regularizer/L2Loss/ReadVariableOp:( $
"
_user_specified_name
resource
�
b
F__inference_activation_3_layer_call_and_return_conditional_losses_5743

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:��������� b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:��������� "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:��������� :W S
/
_output_shapes
:��������� 
 
_user_specified_nameinputs
�	
�
__inference_loss_fn_9_6757K
=convolition_5_bias_regularizer_l2loss_readvariableop_resource:@
identity��4convolition_5/bias/Regularizer/L2Loss/ReadVariableOp�
4convolition_5/bias/Regularizer/L2Loss/ReadVariableOpReadVariableOp=convolition_5_bias_regularizer_l2loss_readvariableop_resource*
_output_shapes
:@*
dtype0�
%convolition_5/bias/Regularizer/L2LossL2Loss<convolition_5/bias/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: i
$convolition_5/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
"convolition_5/bias/Regularizer/mulMul-convolition_5/bias/Regularizer/mul/x:output:0.convolition_5/bias/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: d
IdentityIdentity&convolition_5/bias/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: Y
NoOpNoOp5^convolition_5/bias/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2l
4convolition_5/bias/Regularizer/L2Loss/ReadVariableOp4convolition_5/bias/Regularizer/L2Loss/ReadVariableOp:( $
"
_user_specified_name
resource
�
G
+__inference_activation_4_layer_call_fn_6518

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_activation_4_layer_call_and_return_conditional_losses_5773h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:��������� "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:��������� :W S
/
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
D
(__inference_pooling_5_layer_call_fn_6575

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
GPU 2J 8� *L
fGRE
C__inference_pooling_5_layer_call_and_return_conditional_losses_5638�
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
 
_user_specified_nameinputs
�
_
C__inference_pooling_3_layer_call_and_return_conditional_losses_6486

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
�
G
+__inference_activation_1_layer_call_fn_6377

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������``* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_activation_1_layer_call_and_return_conditional_losses_5683h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������``"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������``:W S
/
_output_shapes
:���������``
 
_user_specified_nameinputs
�
D
(__inference_pooling_2_layer_call_fn_6434

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
GPU 2J 8� *L
fGRE
C__inference_pooling_2_layer_call_and_return_conditional_losses_5608�
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
 
_user_specified_nameinputs
�
�
G__inference_convolution_3_layer_call_and_return_conditional_losses_5733

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�4convolution_3/bias/Regularizer/L2Loss/ReadVariableOp�6convolution_3/kernel/Regularizer/L2Loss/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� �
6convolution_3/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
'convolution_3/kernel/Regularizer/L2LossL2Loss>convolution_3/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: k
&convolution_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
$convolution_3/kernel/Regularizer/mulMul/convolution_3/kernel/Regularizer/mul/x:output:00convolution_3/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
4convolution_3/bias/Regularizer/L2Loss/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
%convolution_3/bias/Regularizer/L2LossL2Loss<convolution_3/bias/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: i
$convolution_3/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
"convolution_3/bias/Regularizer/mulMul-convolution_3/bias/Regularizer/mul/x:output:0.convolution_3/bias/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:��������� �
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp5^convolution_3/bias/Regularizer/L2Loss/ReadVariableOp7^convolution_3/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2l
4convolution_3/bias/Regularizer/L2Loss/ReadVariableOp4convolution_3/bias/Regularizer/L2Loss/ReadVariableOp2p
6convolution_3/kernel/Regularizer/L2Loss/ReadVariableOp6convolution_3/kernel/Regularizer/L2Loss/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
_
C__inference_pooling_1_layer_call_and_return_conditional_losses_5598

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
�
�
G__inference_convolution_2_layer_call_and_return_conditional_losses_5703

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�4convolution_2/bias/Regularizer/L2Loss/ReadVariableOp�6convolution_2/kernel/Regularizer/L2Loss/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������00*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������00�
6convolution_2/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
'convolution_2/kernel/Regularizer/L2LossL2Loss>convolution_2/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: k
&convolution_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
$convolution_2/kernel/Regularizer/mulMul/convolution_2/kernel/Regularizer/mul/x:output:00convolution_2/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
4convolution_2/bias/Regularizer/L2Loss/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
%convolution_2/bias/Regularizer/L2LossL2Loss<convolution_2/bias/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: i
$convolution_2/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
"convolution_2/bias/Regularizer/mulMul-convolution_2/bias/Regularizer/mul/x:output:0.convolution_2/bias/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������00�
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp5^convolution_2/bias/Regularizer/L2Loss/ReadVariableOp7^convolution_2/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������00: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2l
4convolution_2/bias/Regularizer/L2Loss/ReadVariableOp4convolution_2/bias/Regularizer/L2Loss/ReadVariableOp2p
6convolution_2/kernel/Regularizer/L2Loss/ReadVariableOp6convolution_2/kernel/Regularizer/L2Loss/ReadVariableOp:W S
/
_output_shapes
:���������00
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
F__inference_convoluton_1_layer_call_and_return_conditional_losses_5673

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�3convoluton_1/bias/Regularizer/L2Loss/ReadVariableOp�5convoluton_1/kernel/Regularizer/L2Loss/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������``*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������``�
5convoluton_1/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
&convoluton_1/kernel/Regularizer/L2LossL2Loss=convoluton_1/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%convoluton_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
#convoluton_1/kernel/Regularizer/mulMul.convoluton_1/kernel/Regularizer/mul/x:output:0/convoluton_1/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
3convoluton_1/bias/Regularizer/L2Loss/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
$convoluton_1/bias/Regularizer/L2LossL2Loss;convoluton_1/bias/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: h
#convoluton_1/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
!convoluton_1/bias/Regularizer/mulMul,convoluton_1/bias/Regularizer/mul/x:output:0-convoluton_1/bias/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������``�
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp4^convoluton_1/bias/Regularizer/L2Loss/ReadVariableOp6^convoluton_1/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������``: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2j
3convoluton_1/bias/Regularizer/L2Loss/ReadVariableOp3convoluton_1/bias/Regularizer/L2Loss/ReadVariableOp2n
5convoluton_1/kernel/Regularizer/L2Loss/ReadVariableOp5convoluton_1/kernel/Regularizer/L2Loss/ReadVariableOp:W S
/
_output_shapes
:���������``
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
_
C__inference_pooling_5_layer_call_and_return_conditional_losses_6580

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
�
b
F__inference_activation_3_layer_call_and_return_conditional_losses_6476

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:��������� b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:��������� "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:��������� :W S
/
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
_
C__inference_pooling_2_layer_call_and_return_conditional_losses_6439

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
�
�
,__inference_convolution_4_layer_call_fn_6495

inputs!
unknown:  
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_convolution_4_layer_call_and_return_conditional_losses_5763w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:��������� <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:��������� : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:��������� 
 
_user_specified_nameinputs:$ 

_user_specified_name6489:$ 

_user_specified_name6491
�
b
F__inference_activation_4_layer_call_and_return_conditional_losses_5773

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:��������� b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:��������� "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:��������� :W S
/
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
b
F__inference_activation_1_layer_call_and_return_conditional_losses_6382

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:���������``b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:���������``"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������``:W S
/
_output_shapes
:���������``
 
_user_specified_nameinputs
�
�
"__inference_signature_wrapper_6297

inputs!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3: 
	unknown_4: #
	unknown_5:  
	unknown_6: #
	unknown_7: @
	unknown_8:@#
	unknown_9:@@

unknown_10:@

unknown_11:@ 

unknown_12: 

unknown_13: 

unknown_14:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *(
f#R!
__inference__wrapped_model_5593o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:���������``: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������``
 
_user_specified_nameinputs:$ 

_user_specified_name6263:$ 

_user_specified_name6265:$ 

_user_specified_name6267:$ 

_user_specified_name6269:$ 

_user_specified_name6271:$ 

_user_specified_name6273:$ 

_user_specified_name6275:$ 

_user_specified_name6277:$	 

_user_specified_name6279:$
 

_user_specified_name6281:$ 

_user_specified_name6283:$ 

_user_specified_name6285:$ 

_user_specified_name6287:$ 

_user_specified_name6289:$ 

_user_specified_name6291:$ 

_user_specified_name6293
�

�
@__inference_output_layer_call_and_return_conditional_losses_5868

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
:���������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
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
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
G__inference_convolution_4_layer_call_and_return_conditional_losses_6513

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�4convolution_4/bias/Regularizer/L2Loss/ReadVariableOp�6convolution_4/kernel/Regularizer/L2Loss/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� �
6convolution_4/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0�
'convolution_4/kernel/Regularizer/L2LossL2Loss>convolution_4/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: k
&convolution_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
$convolution_4/kernel/Regularizer/mulMul/convolution_4/kernel/Regularizer/mul/x:output:00convolution_4/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
4convolution_4/bias/Regularizer/L2Loss/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
%convolution_4/bias/Regularizer/L2LossL2Loss<convolution_4/bias/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: i
$convolution_4/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
"convolution_4/bias/Regularizer/mulMul-convolution_4/bias/Regularizer/mul/x:output:0.convolution_4/bias/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:��������� �
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp5^convolution_4/bias/Regularizer/L2Loss/ReadVariableOp7^convolution_4/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2l
4convolution_4/bias/Regularizer/L2Loss/ReadVariableOp4convolution_4/bias/Regularizer/L2Loss/ReadVariableOp2p
6convolution_4/kernel/Regularizer/L2Loss/ReadVariableOp6convolution_4/kernel/Regularizer/L2Loss/ReadVariableOp:W S
/
_output_shapes
:��������� 
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
b
F__inference_activation_6_layer_call_and_return_conditional_losses_5833

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:���������@b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
_
C__inference_pooling_2_layer_call_and_return_conditional_losses_5608

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
__inference_loss_fn_8_6749Y
?convolition_5_kernel_regularizer_l2loss_readvariableop_resource: @
identity��6convolition_5/kernel/Regularizer/L2Loss/ReadVariableOp�
6convolition_5/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp?convolition_5_kernel_regularizer_l2loss_readvariableop_resource*&
_output_shapes
: @*
dtype0�
'convolition_5/kernel/Regularizer/L2LossL2Loss>convolition_5/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: k
&convolition_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
$convolition_5/kernel/Regularizer/mulMul/convolition_5/kernel/Regularizer/mul/x:output:00convolition_5/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: f
IdentityIdentity(convolition_5/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp7^convolition_5/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2p
6convolition_5/kernel/Regularizer/L2Loss/ReadVariableOp6convolition_5/kernel/Regularizer/L2Loss/ReadVariableOp:( $
"
_user_specified_name
resource
�	
�
__inference_loss_fn_7_6741K
=convolution_4_bias_regularizer_l2loss_readvariableop_resource: 
identity��4convolution_4/bias/Regularizer/L2Loss/ReadVariableOp�
4convolution_4/bias/Regularizer/L2Loss/ReadVariableOpReadVariableOp=convolution_4_bias_regularizer_l2loss_readvariableop_resource*
_output_shapes
: *
dtype0�
%convolution_4/bias/Regularizer/L2LossL2Loss<convolution_4/bias/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: i
$convolution_4/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
"convolution_4/bias/Regularizer/mulMul-convolution_4/bias/Regularizer/mul/x:output:0.convolution_4/bias/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: d
IdentityIdentity&convolution_4/bias/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: Y
NoOpNoOp5^convolution_4/bias/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2l
4convolution_4/bias/Regularizer/L2Loss/ReadVariableOp4convolution_4/bias/Regularizer/L2Loss/ReadVariableOp:( $
"
_user_specified_name
resource
�
�
G__inference_convolition_5_layer_call_and_return_conditional_losses_5793

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�4convolition_5/bias/Regularizer/L2Loss/ReadVariableOp�6convolition_5/kernel/Regularizer/L2Loss/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@�
6convolition_5/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
'convolition_5/kernel/Regularizer/L2LossL2Loss>convolition_5/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: k
&convolition_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
$convolition_5/kernel/Regularizer/mulMul/convolition_5/kernel/Regularizer/mul/x:output:00convolition_5/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
4convolition_5/bias/Regularizer/L2Loss/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
%convolition_5/bias/Regularizer/L2LossL2Loss<convolition_5/bias/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: i
$convolition_5/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
"convolition_5/bias/Regularizer/mulMul-convolition_5/bias/Regularizer/mul/x:output:0.convolition_5/bias/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������@�
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp5^convolition_5/bias/Regularizer/L2Loss/ReadVariableOp7^convolition_5/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2l
4convolition_5/bias/Regularizer/L2Loss/ReadVariableOp4convolition_5/bias/Regularizer/L2Loss/ReadVariableOp2p
6convolition_5/kernel/Regularizer/L2Loss/ReadVariableOp6convolition_5/kernel/Regularizer/L2Loss/ReadVariableOp:W S
/
_output_shapes
:��������� 
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
b
F__inference_activation_4_layer_call_and_return_conditional_losses_6523

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:��������� b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:��������� "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:��������� :W S
/
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
b
F__inference_activation_2_layer_call_and_return_conditional_losses_6429

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:���������00b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:���������00"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������00:W S
/
_output_shapes
:���������00
 
_user_specified_nameinputs
��
�#
 __inference__traced_restore_7290
file_prefix>
$assignvariableop_convoluton_1_kernel:2
$assignvariableop_1_convoluton_1_bias:A
'assignvariableop_2_convolution_2_kernel:3
%assignvariableop_3_convolution_2_bias:A
'assignvariableop_4_convolution_3_kernel: 3
%assignvariableop_5_convolution_3_bias: A
'assignvariableop_6_convolution_4_kernel:  3
%assignvariableop_7_convolution_4_bias: A
'assignvariableop_8_convolition_5_kernel: @3
%assignvariableop_9_convolition_5_bias:@B
(assignvariableop_10_convolution_6_kernel:@@4
&assignvariableop_11_convolution_6_bias:@3
!assignvariableop_12_dense1_kernel:@ -
assignvariableop_13_dense1_bias: 3
!assignvariableop_14_output_kernel: -
assignvariableop_15_output_bias:'
assignvariableop_16_iteration:	 +
!assignvariableop_17_learning_rate: H
.assignvariableop_18_adam_m_convoluton_1_kernel:H
.assignvariableop_19_adam_v_convoluton_1_kernel::
,assignvariableop_20_adam_m_convoluton_1_bias::
,assignvariableop_21_adam_v_convoluton_1_bias:I
/assignvariableop_22_adam_m_convolution_2_kernel:I
/assignvariableop_23_adam_v_convolution_2_kernel:;
-assignvariableop_24_adam_m_convolution_2_bias:;
-assignvariableop_25_adam_v_convolution_2_bias:I
/assignvariableop_26_adam_m_convolution_3_kernel: I
/assignvariableop_27_adam_v_convolution_3_kernel: ;
-assignvariableop_28_adam_m_convolution_3_bias: ;
-assignvariableop_29_adam_v_convolution_3_bias: I
/assignvariableop_30_adam_m_convolution_4_kernel:  I
/assignvariableop_31_adam_v_convolution_4_kernel:  ;
-assignvariableop_32_adam_m_convolution_4_bias: ;
-assignvariableop_33_adam_v_convolution_4_bias: I
/assignvariableop_34_adam_m_convolition_5_kernel: @I
/assignvariableop_35_adam_v_convolition_5_kernel: @;
-assignvariableop_36_adam_m_convolition_5_bias:@;
-assignvariableop_37_adam_v_convolition_5_bias:@I
/assignvariableop_38_adam_m_convolution_6_kernel:@@I
/assignvariableop_39_adam_v_convolution_6_kernel:@@;
-assignvariableop_40_adam_m_convolution_6_bias:@;
-assignvariableop_41_adam_v_convolution_6_bias:@:
(assignvariableop_42_adam_m_dense1_kernel:@ :
(assignvariableop_43_adam_v_dense1_kernel:@ 4
&assignvariableop_44_adam_m_dense1_bias: 4
&assignvariableop_45_adam_v_dense1_bias: :
(assignvariableop_46_adam_m_output_kernel: :
(assignvariableop_47_adam_v_output_kernel: 4
&assignvariableop_48_adam_m_output_bias:4
&assignvariableop_49_adam_v_output_bias:%
assignvariableop_50_total_1: %
assignvariableop_51_count_1: #
assignvariableop_52_total: #
assignvariableop_53_count: 
identity_55��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_46�AssignVariableOp_47�AssignVariableOp_48�AssignVariableOp_49�AssignVariableOp_5�AssignVariableOp_50�AssignVariableOp_51�AssignVariableOp_52�AssignVariableOp_53�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:7*
dtype0*�
value�B�7B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:7*
dtype0*�
valuexBv7B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�:::::::::::::::::::::::::::::::::::::::::::::::::::::::*E
dtypes;
927	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp$assignvariableop_convoluton_1_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp$assignvariableop_1_convoluton_1_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp'assignvariableop_2_convolution_2_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp%assignvariableop_3_convolution_2_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp'assignvariableop_4_convolution_3_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp%assignvariableop_5_convolution_3_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp'assignvariableop_6_convolution_4_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp%assignvariableop_7_convolution_4_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp'assignvariableop_8_convolition_5_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp%assignvariableop_9_convolition_5_biasIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp(assignvariableop_10_convolution_6_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp&assignvariableop_11_convolution_6_biasIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp!assignvariableop_12_dense1_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOpassignvariableop_13_dense1_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp!assignvariableop_14_output_kernelIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOpassignvariableop_15_output_biasIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_16AssignVariableOpassignvariableop_16_iterationIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp!assignvariableop_17_learning_rateIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp.assignvariableop_18_adam_m_convoluton_1_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp.assignvariableop_19_adam_v_convoluton_1_kernelIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp,assignvariableop_20_adam_m_convoluton_1_biasIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp,assignvariableop_21_adam_v_convoluton_1_biasIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp/assignvariableop_22_adam_m_convolution_2_kernelIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp/assignvariableop_23_adam_v_convolution_2_kernelIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp-assignvariableop_24_adam_m_convolution_2_biasIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp-assignvariableop_25_adam_v_convolution_2_biasIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp/assignvariableop_26_adam_m_convolution_3_kernelIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp/assignvariableop_27_adam_v_convolution_3_kernelIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp-assignvariableop_28_adam_m_convolution_3_biasIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp-assignvariableop_29_adam_v_convolution_3_biasIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp/assignvariableop_30_adam_m_convolution_4_kernelIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp/assignvariableop_31_adam_v_convolution_4_kernelIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOp-assignvariableop_32_adam_m_convolution_4_biasIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp-assignvariableop_33_adam_v_convolution_4_biasIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOp/assignvariableop_34_adam_m_convolition_5_kernelIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOp/assignvariableop_35_adam_v_convolition_5_kernelIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOp-assignvariableop_36_adam_m_convolition_5_biasIdentity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOp-assignvariableop_37_adam_v_convolition_5_biasIdentity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOp/assignvariableop_38_adam_m_convolution_6_kernelIdentity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOp/assignvariableop_39_adam_v_convolution_6_kernelIdentity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_40AssignVariableOp-assignvariableop_40_adam_m_convolution_6_biasIdentity_40:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_41AssignVariableOp-assignvariableop_41_adam_v_convolution_6_biasIdentity_41:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_42AssignVariableOp(assignvariableop_42_adam_m_dense1_kernelIdentity_42:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_43AssignVariableOp(assignvariableop_43_adam_v_dense1_kernelIdentity_43:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_44AssignVariableOp&assignvariableop_44_adam_m_dense1_biasIdentity_44:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_45AssignVariableOp&assignvariableop_45_adam_v_dense1_biasIdentity_45:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_46AssignVariableOp(assignvariableop_46_adam_m_output_kernelIdentity_46:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_47AssignVariableOp(assignvariableop_47_adam_v_output_kernelIdentity_47:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_48AssignVariableOp&assignvariableop_48_adam_m_output_biasIdentity_48:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_49AssignVariableOp&assignvariableop_49_adam_v_output_biasIdentity_49:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_50AssignVariableOpassignvariableop_50_total_1Identity_50:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_51AssignVariableOpassignvariableop_51_count_1Identity_51:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_52AssignVariableOpassignvariableop_52_totalIdentity_52:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_53AssignVariableOpassignvariableop_53_countIdentity_53:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �	
Identity_54Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_55IdentityIdentity_54:output:0^NoOp_1*
T0*
_output_shapes
: �	
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_55Identity_55:output:0*(
_construction_contextkEagerRuntime*�
_input_shapesp
n: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:3/
-
_user_specified_nameconvoluton_1/kernel:1-
+
_user_specified_nameconvoluton_1/bias:40
.
_user_specified_nameconvolution_2/kernel:2.
,
_user_specified_nameconvolution_2/bias:40
.
_user_specified_nameconvolution_3/kernel:2.
,
_user_specified_nameconvolution_3/bias:40
.
_user_specified_nameconvolution_4/kernel:2.
,
_user_specified_nameconvolution_4/bias:4	0
.
_user_specified_nameconvolition_5/kernel:2
.
,
_user_specified_nameconvolition_5/bias:40
.
_user_specified_nameconvolution_6/kernel:2.
,
_user_specified_nameconvolution_6/bias:-)
'
_user_specified_namedense1/kernel:+'
%
_user_specified_namedense1/bias:-)
'
_user_specified_nameoutput/kernel:+'
%
_user_specified_nameoutput/bias:)%
#
_user_specified_name	iteration:-)
'
_user_specified_namelearning_rate::6
4
_user_specified_nameAdam/m/convoluton_1/kernel::6
4
_user_specified_nameAdam/v/convoluton_1/kernel:84
2
_user_specified_nameAdam/m/convoluton_1/bias:84
2
_user_specified_nameAdam/v/convoluton_1/bias:;7
5
_user_specified_nameAdam/m/convolution_2/kernel:;7
5
_user_specified_nameAdam/v/convolution_2/kernel:95
3
_user_specified_nameAdam/m/convolution_2/bias:95
3
_user_specified_nameAdam/v/convolution_2/bias:;7
5
_user_specified_nameAdam/m/convolution_3/kernel:;7
5
_user_specified_nameAdam/v/convolution_3/kernel:95
3
_user_specified_nameAdam/m/convolution_3/bias:95
3
_user_specified_nameAdam/v/convolution_3/bias:;7
5
_user_specified_nameAdam/m/convolution_4/kernel:; 7
5
_user_specified_nameAdam/v/convolution_4/kernel:9!5
3
_user_specified_nameAdam/m/convolution_4/bias:9"5
3
_user_specified_nameAdam/v/convolution_4/bias:;#7
5
_user_specified_nameAdam/m/convolition_5/kernel:;$7
5
_user_specified_nameAdam/v/convolition_5/kernel:9%5
3
_user_specified_nameAdam/m/convolition_5/bias:9&5
3
_user_specified_nameAdam/v/convolition_5/bias:;'7
5
_user_specified_nameAdam/m/convolution_6/kernel:;(7
5
_user_specified_nameAdam/v/convolution_6/kernel:9)5
3
_user_specified_nameAdam/m/convolution_6/bias:9*5
3
_user_specified_nameAdam/v/convolution_6/bias:4+0
.
_user_specified_nameAdam/m/dense1/kernel:4,0
.
_user_specified_nameAdam/v/dense1/kernel:2-.
,
_user_specified_nameAdam/m/dense1/bias:2..
,
_user_specified_nameAdam/v/dense1/bias:4/0
.
_user_specified_nameAdam/m/output/kernel:400
.
_user_specified_nameAdam/v/output/kernel:21.
,
_user_specified_nameAdam/m/output/bias:22.
,
_user_specified_nameAdam/v/output/bias:'3#
!
_user_specified_name	total_1:'4#
!
_user_specified_name	count_1:%5!

_user_specified_nametotal:%6!

_user_specified_namecount
��
�
?__inference_model_layer_call_and_return_conditional_losses_5923

inputs+
convoluton_1_5674:
convoluton_1_5676:,
convolution_2_5704: 
convolution_2_5706:,
convolution_3_5734:  
convolution_3_5736: ,
convolution_4_5764:   
convolution_4_5766: ,
convolition_5_5794: @ 
convolition_5_5796:@,
convolution_6_5824:@@ 
convolution_6_5826:@
dense1_5853:@ 
dense1_5855: 
output_5869: 
output_5871:
identity��%convolition_5/StatefulPartitionedCall�4convolition_5/bias/Regularizer/L2Loss/ReadVariableOp�6convolition_5/kernel/Regularizer/L2Loss/ReadVariableOp�%convolution_2/StatefulPartitionedCall�4convolution_2/bias/Regularizer/L2Loss/ReadVariableOp�6convolution_2/kernel/Regularizer/L2Loss/ReadVariableOp�%convolution_3/StatefulPartitionedCall�4convolution_3/bias/Regularizer/L2Loss/ReadVariableOp�6convolution_3/kernel/Regularizer/L2Loss/ReadVariableOp�%convolution_4/StatefulPartitionedCall�4convolution_4/bias/Regularizer/L2Loss/ReadVariableOp�6convolution_4/kernel/Regularizer/L2Loss/ReadVariableOp�%convolution_6/StatefulPartitionedCall�4convolution_6/bias/Regularizer/L2Loss/ReadVariableOp�6convolution_6/kernel/Regularizer/L2Loss/ReadVariableOp�$convoluton_1/StatefulPartitionedCall�3convoluton_1/bias/Regularizer/L2Loss/ReadVariableOp�5convoluton_1/kernel/Regularizer/L2Loss/ReadVariableOp�dense1/StatefulPartitionedCall�output/StatefulPartitionedCall�
$convoluton_1/StatefulPartitionedCallStatefulPartitionedCallinputsconvoluton_1_5674convoluton_1_5676*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������``*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_convoluton_1_layer_call_and_return_conditional_losses_5673�
activation_1/PartitionedCallPartitionedCall-convoluton_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������``* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_activation_1_layer_call_and_return_conditional_losses_5683�
pooling_1/PartitionedCallPartitionedCall%activation_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������00* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_pooling_1_layer_call_and_return_conditional_losses_5598�
%convolution_2/StatefulPartitionedCallStatefulPartitionedCall"pooling_1/PartitionedCall:output:0convolution_2_5704convolution_2_5706*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������00*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_convolution_2_layer_call_and_return_conditional_losses_5703�
activation_2/PartitionedCallPartitionedCall.convolution_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������00* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_activation_2_layer_call_and_return_conditional_losses_5713�
pooling_2/PartitionedCallPartitionedCall%activation_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_pooling_2_layer_call_and_return_conditional_losses_5608�
%convolution_3/StatefulPartitionedCallStatefulPartitionedCall"pooling_2/PartitionedCall:output:0convolution_3_5734convolution_3_5736*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_convolution_3_layer_call_and_return_conditional_losses_5733�
activation_3/PartitionedCallPartitionedCall.convolution_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_activation_3_layer_call_and_return_conditional_losses_5743�
pooling_3/PartitionedCallPartitionedCall%activation_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_pooling_3_layer_call_and_return_conditional_losses_5618�
%convolution_4/StatefulPartitionedCallStatefulPartitionedCall"pooling_3/PartitionedCall:output:0convolution_4_5764convolution_4_5766*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_convolution_4_layer_call_and_return_conditional_losses_5763�
activation_4/PartitionedCallPartitionedCall.convolution_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_activation_4_layer_call_and_return_conditional_losses_5773�
pooling_4/PartitionedCallPartitionedCall%activation_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_pooling_4_layer_call_and_return_conditional_losses_5628�
%convolition_5/StatefulPartitionedCallStatefulPartitionedCall"pooling_4/PartitionedCall:output:0convolition_5_5794convolition_5_5796*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_convolition_5_layer_call_and_return_conditional_losses_5793�
activation_5/PartitionedCallPartitionedCall.convolition_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_activation_5_layer_call_and_return_conditional_losses_5803�
pooling_5/PartitionedCallPartitionedCall%activation_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_pooling_5_layer_call_and_return_conditional_losses_5638�
%convolution_6/StatefulPartitionedCallStatefulPartitionedCall"pooling_5/PartitionedCall:output:0convolution_6_5824convolution_6_5826*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_convolution_6_layer_call_and_return_conditional_losses_5823�
activation_6/PartitionedCallPartitionedCall.convolution_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_activation_6_layer_call_and_return_conditional_losses_5833�
pooling_6/PartitionedCallPartitionedCall%activation_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_pooling_6_layer_call_and_return_conditional_losses_5648�
flatten/PartitionedCallPartitionedCall"pooling_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_5841�
dense1/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense1_5853dense1_5855*
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
GPU 2J 8� *I
fDRB
@__inference_dense1_layer_call_and_return_conditional_losses_5852�
output/StatefulPartitionedCallStatefulPartitionedCall'dense1/StatefulPartitionedCall:output:0output_5869output_5871*
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
GPU 2J 8� *I
fDRB
@__inference_output_layer_call_and_return_conditional_losses_5868�
5convoluton_1/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconvoluton_1_5674*&
_output_shapes
:*
dtype0�
&convoluton_1/kernel/Regularizer/L2LossL2Loss=convoluton_1/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%convoluton_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
#convoluton_1/kernel/Regularizer/mulMul.convoluton_1/kernel/Regularizer/mul/x:output:0/convoluton_1/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
3convoluton_1/bias/Regularizer/L2Loss/ReadVariableOpReadVariableOpconvoluton_1_5676*
_output_shapes
:*
dtype0�
$convoluton_1/bias/Regularizer/L2LossL2Loss;convoluton_1/bias/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: h
#convoluton_1/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
!convoluton_1/bias/Regularizer/mulMul,convoluton_1/bias/Regularizer/mul/x:output:0-convoluton_1/bias/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
6convolution_2/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconvolution_2_5704*&
_output_shapes
:*
dtype0�
'convolution_2/kernel/Regularizer/L2LossL2Loss>convolution_2/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: k
&convolution_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
$convolution_2/kernel/Regularizer/mulMul/convolution_2/kernel/Regularizer/mul/x:output:00convolution_2/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
4convolution_2/bias/Regularizer/L2Loss/ReadVariableOpReadVariableOpconvolution_2_5706*
_output_shapes
:*
dtype0�
%convolution_2/bias/Regularizer/L2LossL2Loss<convolution_2/bias/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: i
$convolution_2/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
"convolution_2/bias/Regularizer/mulMul-convolution_2/bias/Regularizer/mul/x:output:0.convolution_2/bias/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
6convolution_3/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconvolution_3_5734*&
_output_shapes
: *
dtype0�
'convolution_3/kernel/Regularizer/L2LossL2Loss>convolution_3/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: k
&convolution_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
$convolution_3/kernel/Regularizer/mulMul/convolution_3/kernel/Regularizer/mul/x:output:00convolution_3/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
4convolution_3/bias/Regularizer/L2Loss/ReadVariableOpReadVariableOpconvolution_3_5736*
_output_shapes
: *
dtype0�
%convolution_3/bias/Regularizer/L2LossL2Loss<convolution_3/bias/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: i
$convolution_3/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
"convolution_3/bias/Regularizer/mulMul-convolution_3/bias/Regularizer/mul/x:output:0.convolution_3/bias/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
6convolution_4/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconvolution_4_5764*&
_output_shapes
:  *
dtype0�
'convolution_4/kernel/Regularizer/L2LossL2Loss>convolution_4/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: k
&convolution_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
$convolution_4/kernel/Regularizer/mulMul/convolution_4/kernel/Regularizer/mul/x:output:00convolution_4/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
4convolution_4/bias/Regularizer/L2Loss/ReadVariableOpReadVariableOpconvolution_4_5766*
_output_shapes
: *
dtype0�
%convolution_4/bias/Regularizer/L2LossL2Loss<convolution_4/bias/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: i
$convolution_4/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
"convolution_4/bias/Regularizer/mulMul-convolution_4/bias/Regularizer/mul/x:output:0.convolution_4/bias/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
6convolition_5/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconvolition_5_5794*&
_output_shapes
: @*
dtype0�
'convolition_5/kernel/Regularizer/L2LossL2Loss>convolition_5/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: k
&convolition_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
$convolition_5/kernel/Regularizer/mulMul/convolition_5/kernel/Regularizer/mul/x:output:00convolition_5/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
4convolition_5/bias/Regularizer/L2Loss/ReadVariableOpReadVariableOpconvolition_5_5796*
_output_shapes
:@*
dtype0�
%convolition_5/bias/Regularizer/L2LossL2Loss<convolition_5/bias/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: i
$convolition_5/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
"convolition_5/bias/Regularizer/mulMul-convolition_5/bias/Regularizer/mul/x:output:0.convolition_5/bias/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
6convolution_6/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconvolution_6_5824*&
_output_shapes
:@@*
dtype0�
'convolution_6/kernel/Regularizer/L2LossL2Loss>convolution_6/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: k
&convolution_6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
$convolution_6/kernel/Regularizer/mulMul/convolution_6/kernel/Regularizer/mul/x:output:00convolution_6/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
4convolution_6/bias/Regularizer/L2Loss/ReadVariableOpReadVariableOpconvolution_6_5826*
_output_shapes
:@*
dtype0�
%convolution_6/bias/Regularizer/L2LossL2Loss<convolution_6/bias/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: i
$convolution_6/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
"convolution_6/bias/Regularizer/mulMul-convolution_6/bias/Regularizer/mul/x:output:0.convolution_6/bias/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: v
IdentityIdentity'output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp&^convolition_5/StatefulPartitionedCall5^convolition_5/bias/Regularizer/L2Loss/ReadVariableOp7^convolition_5/kernel/Regularizer/L2Loss/ReadVariableOp&^convolution_2/StatefulPartitionedCall5^convolution_2/bias/Regularizer/L2Loss/ReadVariableOp7^convolution_2/kernel/Regularizer/L2Loss/ReadVariableOp&^convolution_3/StatefulPartitionedCall5^convolution_3/bias/Regularizer/L2Loss/ReadVariableOp7^convolution_3/kernel/Regularizer/L2Loss/ReadVariableOp&^convolution_4/StatefulPartitionedCall5^convolution_4/bias/Regularizer/L2Loss/ReadVariableOp7^convolution_4/kernel/Regularizer/L2Loss/ReadVariableOp&^convolution_6/StatefulPartitionedCall5^convolution_6/bias/Regularizer/L2Loss/ReadVariableOp7^convolution_6/kernel/Regularizer/L2Loss/ReadVariableOp%^convoluton_1/StatefulPartitionedCall4^convoluton_1/bias/Regularizer/L2Loss/ReadVariableOp6^convoluton_1/kernel/Regularizer/L2Loss/ReadVariableOp^dense1/StatefulPartitionedCall^output/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:���������``: : : : : : : : : : : : : : : : 2N
%convolition_5/StatefulPartitionedCall%convolition_5/StatefulPartitionedCall2l
4convolition_5/bias/Regularizer/L2Loss/ReadVariableOp4convolition_5/bias/Regularizer/L2Loss/ReadVariableOp2p
6convolition_5/kernel/Regularizer/L2Loss/ReadVariableOp6convolition_5/kernel/Regularizer/L2Loss/ReadVariableOp2N
%convolution_2/StatefulPartitionedCall%convolution_2/StatefulPartitionedCall2l
4convolution_2/bias/Regularizer/L2Loss/ReadVariableOp4convolution_2/bias/Regularizer/L2Loss/ReadVariableOp2p
6convolution_2/kernel/Regularizer/L2Loss/ReadVariableOp6convolution_2/kernel/Regularizer/L2Loss/ReadVariableOp2N
%convolution_3/StatefulPartitionedCall%convolution_3/StatefulPartitionedCall2l
4convolution_3/bias/Regularizer/L2Loss/ReadVariableOp4convolution_3/bias/Regularizer/L2Loss/ReadVariableOp2p
6convolution_3/kernel/Regularizer/L2Loss/ReadVariableOp6convolution_3/kernel/Regularizer/L2Loss/ReadVariableOp2N
%convolution_4/StatefulPartitionedCall%convolution_4/StatefulPartitionedCall2l
4convolution_4/bias/Regularizer/L2Loss/ReadVariableOp4convolution_4/bias/Regularizer/L2Loss/ReadVariableOp2p
6convolution_4/kernel/Regularizer/L2Loss/ReadVariableOp6convolution_4/kernel/Regularizer/L2Loss/ReadVariableOp2N
%convolution_6/StatefulPartitionedCall%convolution_6/StatefulPartitionedCall2l
4convolution_6/bias/Regularizer/L2Loss/ReadVariableOp4convolution_6/bias/Regularizer/L2Loss/ReadVariableOp2p
6convolution_6/kernel/Regularizer/L2Loss/ReadVariableOp6convolution_6/kernel/Regularizer/L2Loss/ReadVariableOp2L
$convoluton_1/StatefulPartitionedCall$convoluton_1/StatefulPartitionedCall2j
3convoluton_1/bias/Regularizer/L2Loss/ReadVariableOp3convoluton_1/bias/Regularizer/L2Loss/ReadVariableOp2n
5convoluton_1/kernel/Regularizer/L2Loss/ReadVariableOp5convoluton_1/kernel/Regularizer/L2Loss/ReadVariableOp2@
dense1/StatefulPartitionedCalldense1/StatefulPartitionedCall2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:W S
/
_output_shapes
:���������``
 
_user_specified_nameinputs:$ 

_user_specified_name5674:$ 

_user_specified_name5676:$ 

_user_specified_name5704:$ 

_user_specified_name5706:$ 

_user_specified_name5734:$ 

_user_specified_name5736:$ 

_user_specified_name5764:$ 

_user_specified_name5766:$	 

_user_specified_name5794:$
 

_user_specified_name5796:$ 

_user_specified_name5824:$ 

_user_specified_name5826:$ 

_user_specified_name5853:$ 

_user_specified_name5855:$ 

_user_specified_name5869:$ 

_user_specified_name5871
��
�2
__inference__traced_save_7119
file_prefixD
*read_disablecopyonread_convoluton_1_kernel:8
*read_1_disablecopyonread_convoluton_1_bias:G
-read_2_disablecopyonread_convolution_2_kernel:9
+read_3_disablecopyonread_convolution_2_bias:G
-read_4_disablecopyonread_convolution_3_kernel: 9
+read_5_disablecopyonread_convolution_3_bias: G
-read_6_disablecopyonread_convolution_4_kernel:  9
+read_7_disablecopyonread_convolution_4_bias: G
-read_8_disablecopyonread_convolition_5_kernel: @9
+read_9_disablecopyonread_convolition_5_bias:@H
.read_10_disablecopyonread_convolution_6_kernel:@@:
,read_11_disablecopyonread_convolution_6_bias:@9
'read_12_disablecopyonread_dense1_kernel:@ 3
%read_13_disablecopyonread_dense1_bias: 9
'read_14_disablecopyonread_output_kernel: 3
%read_15_disablecopyonread_output_bias:-
#read_16_disablecopyonread_iteration:	 1
'read_17_disablecopyonread_learning_rate: N
4read_18_disablecopyonread_adam_m_convoluton_1_kernel:N
4read_19_disablecopyonread_adam_v_convoluton_1_kernel:@
2read_20_disablecopyonread_adam_m_convoluton_1_bias:@
2read_21_disablecopyonread_adam_v_convoluton_1_bias:O
5read_22_disablecopyonread_adam_m_convolution_2_kernel:O
5read_23_disablecopyonread_adam_v_convolution_2_kernel:A
3read_24_disablecopyonread_adam_m_convolution_2_bias:A
3read_25_disablecopyonread_adam_v_convolution_2_bias:O
5read_26_disablecopyonread_adam_m_convolution_3_kernel: O
5read_27_disablecopyonread_adam_v_convolution_3_kernel: A
3read_28_disablecopyonread_adam_m_convolution_3_bias: A
3read_29_disablecopyonread_adam_v_convolution_3_bias: O
5read_30_disablecopyonread_adam_m_convolution_4_kernel:  O
5read_31_disablecopyonread_adam_v_convolution_4_kernel:  A
3read_32_disablecopyonread_adam_m_convolution_4_bias: A
3read_33_disablecopyonread_adam_v_convolution_4_bias: O
5read_34_disablecopyonread_adam_m_convolition_5_kernel: @O
5read_35_disablecopyonread_adam_v_convolition_5_kernel: @A
3read_36_disablecopyonread_adam_m_convolition_5_bias:@A
3read_37_disablecopyonread_adam_v_convolition_5_bias:@O
5read_38_disablecopyonread_adam_m_convolution_6_kernel:@@O
5read_39_disablecopyonread_adam_v_convolution_6_kernel:@@A
3read_40_disablecopyonread_adam_m_convolution_6_bias:@A
3read_41_disablecopyonread_adam_v_convolution_6_bias:@@
.read_42_disablecopyonread_adam_m_dense1_kernel:@ @
.read_43_disablecopyonread_adam_v_dense1_kernel:@ :
,read_44_disablecopyonread_adam_m_dense1_bias: :
,read_45_disablecopyonread_adam_v_dense1_bias: @
.read_46_disablecopyonread_adam_m_output_kernel: @
.read_47_disablecopyonread_adam_v_output_kernel: :
,read_48_disablecopyonread_adam_m_output_bias::
,read_49_disablecopyonread_adam_v_output_bias:+
!read_50_disablecopyonread_total_1: +
!read_51_disablecopyonread_count_1: )
read_52_disablecopyonread_total: )
read_53_disablecopyonread_count: 
savev2_const
identity_109��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_10/DisableCopyOnRead�Read_10/ReadVariableOp�Read_11/DisableCopyOnRead�Read_11/ReadVariableOp�Read_12/DisableCopyOnRead�Read_12/ReadVariableOp�Read_13/DisableCopyOnRead�Read_13/ReadVariableOp�Read_14/DisableCopyOnRead�Read_14/ReadVariableOp�Read_15/DisableCopyOnRead�Read_15/ReadVariableOp�Read_16/DisableCopyOnRead�Read_16/ReadVariableOp�Read_17/DisableCopyOnRead�Read_17/ReadVariableOp�Read_18/DisableCopyOnRead�Read_18/ReadVariableOp�Read_19/DisableCopyOnRead�Read_19/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_20/DisableCopyOnRead�Read_20/ReadVariableOp�Read_21/DisableCopyOnRead�Read_21/ReadVariableOp�Read_22/DisableCopyOnRead�Read_22/ReadVariableOp�Read_23/DisableCopyOnRead�Read_23/ReadVariableOp�Read_24/DisableCopyOnRead�Read_24/ReadVariableOp�Read_25/DisableCopyOnRead�Read_25/ReadVariableOp�Read_26/DisableCopyOnRead�Read_26/ReadVariableOp�Read_27/DisableCopyOnRead�Read_27/ReadVariableOp�Read_28/DisableCopyOnRead�Read_28/ReadVariableOp�Read_29/DisableCopyOnRead�Read_29/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_30/DisableCopyOnRead�Read_30/ReadVariableOp�Read_31/DisableCopyOnRead�Read_31/ReadVariableOp�Read_32/DisableCopyOnRead�Read_32/ReadVariableOp�Read_33/DisableCopyOnRead�Read_33/ReadVariableOp�Read_34/DisableCopyOnRead�Read_34/ReadVariableOp�Read_35/DisableCopyOnRead�Read_35/ReadVariableOp�Read_36/DisableCopyOnRead�Read_36/ReadVariableOp�Read_37/DisableCopyOnRead�Read_37/ReadVariableOp�Read_38/DisableCopyOnRead�Read_38/ReadVariableOp�Read_39/DisableCopyOnRead�Read_39/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_40/DisableCopyOnRead�Read_40/ReadVariableOp�Read_41/DisableCopyOnRead�Read_41/ReadVariableOp�Read_42/DisableCopyOnRead�Read_42/ReadVariableOp�Read_43/DisableCopyOnRead�Read_43/ReadVariableOp�Read_44/DisableCopyOnRead�Read_44/ReadVariableOp�Read_45/DisableCopyOnRead�Read_45/ReadVariableOp�Read_46/DisableCopyOnRead�Read_46/ReadVariableOp�Read_47/DisableCopyOnRead�Read_47/ReadVariableOp�Read_48/DisableCopyOnRead�Read_48/ReadVariableOp�Read_49/DisableCopyOnRead�Read_49/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_50/DisableCopyOnRead�Read_50/ReadVariableOp�Read_51/DisableCopyOnRead�Read_51/ReadVariableOp�Read_52/DisableCopyOnRead�Read_52/ReadVariableOp�Read_53/DisableCopyOnRead�Read_53/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOpw
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
: |
Read/DisableCopyOnReadDisableCopyOnRead*read_disablecopyonread_convoluton_1_kernel"/device:CPU:0*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp*read_disablecopyonread_convoluton_1_kernel^Read/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0q
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:i

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*&
_output_shapes
:~
Read_1/DisableCopyOnReadDisableCopyOnRead*read_1_disablecopyonread_convoluton_1_bias"/device:CPU:0*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp*read_1_disablecopyonread_convoluton_1_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_2/DisableCopyOnReadDisableCopyOnRead-read_2_disablecopyonread_convolution_2_kernel"/device:CPU:0*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp-read_2_disablecopyonread_convolution_2_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0u

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:k

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*&
_output_shapes
:
Read_3/DisableCopyOnReadDisableCopyOnRead+read_3_disablecopyonread_convolution_2_bias"/device:CPU:0*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp+read_3_disablecopyonread_convolution_2_bias^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_4/DisableCopyOnReadDisableCopyOnRead-read_4_disablecopyonread_convolution_3_kernel"/device:CPU:0*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp-read_4_disablecopyonread_convolution_3_kernel^Read_4/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0u

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: k

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*&
_output_shapes
: 
Read_5/DisableCopyOnReadDisableCopyOnRead+read_5_disablecopyonread_convolution_3_bias"/device:CPU:0*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp+read_5_disablecopyonread_convolution_3_bias^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0j
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_6/DisableCopyOnReadDisableCopyOnRead-read_6_disablecopyonread_convolution_4_kernel"/device:CPU:0*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp-read_6_disablecopyonread_convolution_4_kernel^Read_6/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:  *
dtype0v
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:  m
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*&
_output_shapes
:  
Read_7/DisableCopyOnReadDisableCopyOnRead+read_7_disablecopyonread_convolution_4_bias"/device:CPU:0*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp+read_7_disablecopyonread_convolution_4_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0j
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_8/DisableCopyOnReadDisableCopyOnRead-read_8_disablecopyonread_convolition_5_kernel"/device:CPU:0*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOp-read_8_disablecopyonread_convolition_5_kernel^Read_8/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: @*
dtype0v
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: @m
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*&
_output_shapes
: @
Read_9/DisableCopyOnReadDisableCopyOnRead+read_9_disablecopyonread_convolition_5_bias"/device:CPU:0*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOp+read_9_disablecopyonread_convolition_5_bias^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0j
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_10/DisableCopyOnReadDisableCopyOnRead.read_10_disablecopyonread_convolution_6_kernel"/device:CPU:0*
_output_shapes
 �
Read_10/ReadVariableOpReadVariableOp.read_10_disablecopyonread_convolution_6_kernel^Read_10/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0w
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@m
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@�
Read_11/DisableCopyOnReadDisableCopyOnRead,read_11_disablecopyonread_convolution_6_bias"/device:CPU:0*
_output_shapes
 �
Read_11/ReadVariableOpReadVariableOp,read_11_disablecopyonread_convolution_6_bias^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
:@|
Read_12/DisableCopyOnReadDisableCopyOnRead'read_12_disablecopyonread_dense1_kernel"/device:CPU:0*
_output_shapes
 �
Read_12/ReadVariableOpReadVariableOp'read_12_disablecopyonread_dense1_kernel^Read_12/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@ *
dtype0o
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@ e
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes

:@ z
Read_13/DisableCopyOnReadDisableCopyOnRead%read_13_disablecopyonread_dense1_bias"/device:CPU:0*
_output_shapes
 �
Read_13/ReadVariableOpReadVariableOp%read_13_disablecopyonread_dense1_bias^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
: |
Read_14/DisableCopyOnReadDisableCopyOnRead'read_14_disablecopyonread_output_kernel"/device:CPU:0*
_output_shapes
 �
Read_14/ReadVariableOpReadVariableOp'read_14_disablecopyonread_output_kernel^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes

: *
dtype0o
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

: e
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes

: z
Read_15/DisableCopyOnReadDisableCopyOnRead%read_15_disablecopyonread_output_bias"/device:CPU:0*
_output_shapes
 �
Read_15/ReadVariableOpReadVariableOp%read_15_disablecopyonread_output_bias^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes
:x
Read_16/DisableCopyOnReadDisableCopyOnRead#read_16_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 �
Read_16/ReadVariableOpReadVariableOp#read_16_disablecopyonread_iteration^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	g
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0	*
_output_shapes
: |
Read_17/DisableCopyOnReadDisableCopyOnRead'read_17_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 �
Read_17/ReadVariableOpReadVariableOp'read_17_disablecopyonread_learning_rate^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_18/DisableCopyOnReadDisableCopyOnRead4read_18_disablecopyonread_adam_m_convoluton_1_kernel"/device:CPU:0*
_output_shapes
 �
Read_18/ReadVariableOpReadVariableOp4read_18_disablecopyonread_adam_m_convoluton_1_kernel^Read_18/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0w
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:m
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*&
_output_shapes
:�
Read_19/DisableCopyOnReadDisableCopyOnRead4read_19_disablecopyonread_adam_v_convoluton_1_kernel"/device:CPU:0*
_output_shapes
 �
Read_19/ReadVariableOpReadVariableOp4read_19_disablecopyonread_adam_v_convoluton_1_kernel^Read_19/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0w
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:m
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*&
_output_shapes
:�
Read_20/DisableCopyOnReadDisableCopyOnRead2read_20_disablecopyonread_adam_m_convoluton_1_bias"/device:CPU:0*
_output_shapes
 �
Read_20/ReadVariableOpReadVariableOp2read_20_disablecopyonread_adam_m_convoluton_1_bias^Read_20/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_21/DisableCopyOnReadDisableCopyOnRead2read_21_disablecopyonread_adam_v_convoluton_1_bias"/device:CPU:0*
_output_shapes
 �
Read_21/ReadVariableOpReadVariableOp2read_21_disablecopyonread_adam_v_convoluton_1_bias^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_22/DisableCopyOnReadDisableCopyOnRead5read_22_disablecopyonread_adam_m_convolution_2_kernel"/device:CPU:0*
_output_shapes
 �
Read_22/ReadVariableOpReadVariableOp5read_22_disablecopyonread_adam_m_convolution_2_kernel^Read_22/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0w
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:m
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*&
_output_shapes
:�
Read_23/DisableCopyOnReadDisableCopyOnRead5read_23_disablecopyonread_adam_v_convolution_2_kernel"/device:CPU:0*
_output_shapes
 �
Read_23/ReadVariableOpReadVariableOp5read_23_disablecopyonread_adam_v_convolution_2_kernel^Read_23/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0w
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:m
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*&
_output_shapes
:�
Read_24/DisableCopyOnReadDisableCopyOnRead3read_24_disablecopyonread_adam_m_convolution_2_bias"/device:CPU:0*
_output_shapes
 �
Read_24/ReadVariableOpReadVariableOp3read_24_disablecopyonread_adam_m_convolution_2_bias^Read_24/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_25/DisableCopyOnReadDisableCopyOnRead3read_25_disablecopyonread_adam_v_convolution_2_bias"/device:CPU:0*
_output_shapes
 �
Read_25/ReadVariableOpReadVariableOp3read_25_disablecopyonread_adam_v_convolution_2_bias^Read_25/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_26/DisableCopyOnReadDisableCopyOnRead5read_26_disablecopyonread_adam_m_convolution_3_kernel"/device:CPU:0*
_output_shapes
 �
Read_26/ReadVariableOpReadVariableOp5read_26_disablecopyonread_adam_m_convolution_3_kernel^Read_26/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0w
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: m
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*&
_output_shapes
: �
Read_27/DisableCopyOnReadDisableCopyOnRead5read_27_disablecopyonread_adam_v_convolution_3_kernel"/device:CPU:0*
_output_shapes
 �
Read_27/ReadVariableOpReadVariableOp5read_27_disablecopyonread_adam_v_convolution_3_kernel^Read_27/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0w
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: m
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*&
_output_shapes
: �
Read_28/DisableCopyOnReadDisableCopyOnRead3read_28_disablecopyonread_adam_m_convolution_3_bias"/device:CPU:0*
_output_shapes
 �
Read_28/ReadVariableOpReadVariableOp3read_28_disablecopyonread_adam_m_convolution_3_bias^Read_28/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_56IdentityRead_28/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_29/DisableCopyOnReadDisableCopyOnRead3read_29_disablecopyonread_adam_v_convolution_3_bias"/device:CPU:0*
_output_shapes
 �
Read_29/ReadVariableOpReadVariableOp3read_29_disablecopyonread_adam_v_convolution_3_bias^Read_29/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_58IdentityRead_29/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_30/DisableCopyOnReadDisableCopyOnRead5read_30_disablecopyonread_adam_m_convolution_4_kernel"/device:CPU:0*
_output_shapes
 �
Read_30/ReadVariableOpReadVariableOp5read_30_disablecopyonread_adam_m_convolution_4_kernel^Read_30/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:  *
dtype0w
Identity_60IdentityRead_30/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:  m
Identity_61IdentityIdentity_60:output:0"/device:CPU:0*
T0*&
_output_shapes
:  �
Read_31/DisableCopyOnReadDisableCopyOnRead5read_31_disablecopyonread_adam_v_convolution_4_kernel"/device:CPU:0*
_output_shapes
 �
Read_31/ReadVariableOpReadVariableOp5read_31_disablecopyonread_adam_v_convolution_4_kernel^Read_31/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:  *
dtype0w
Identity_62IdentityRead_31/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:  m
Identity_63IdentityIdentity_62:output:0"/device:CPU:0*
T0*&
_output_shapes
:  �
Read_32/DisableCopyOnReadDisableCopyOnRead3read_32_disablecopyonread_adam_m_convolution_4_bias"/device:CPU:0*
_output_shapes
 �
Read_32/ReadVariableOpReadVariableOp3read_32_disablecopyonread_adam_m_convolution_4_bias^Read_32/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_64IdentityRead_32/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_65IdentityIdentity_64:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_33/DisableCopyOnReadDisableCopyOnRead3read_33_disablecopyonread_adam_v_convolution_4_bias"/device:CPU:0*
_output_shapes
 �
Read_33/ReadVariableOpReadVariableOp3read_33_disablecopyonread_adam_v_convolution_4_bias^Read_33/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_66IdentityRead_33/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_67IdentityIdentity_66:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_34/DisableCopyOnReadDisableCopyOnRead5read_34_disablecopyonread_adam_m_convolition_5_kernel"/device:CPU:0*
_output_shapes
 �
Read_34/ReadVariableOpReadVariableOp5read_34_disablecopyonread_adam_m_convolition_5_kernel^Read_34/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: @*
dtype0w
Identity_68IdentityRead_34/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: @m
Identity_69IdentityIdentity_68:output:0"/device:CPU:0*
T0*&
_output_shapes
: @�
Read_35/DisableCopyOnReadDisableCopyOnRead5read_35_disablecopyonread_adam_v_convolition_5_kernel"/device:CPU:0*
_output_shapes
 �
Read_35/ReadVariableOpReadVariableOp5read_35_disablecopyonread_adam_v_convolition_5_kernel^Read_35/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: @*
dtype0w
Identity_70IdentityRead_35/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: @m
Identity_71IdentityIdentity_70:output:0"/device:CPU:0*
T0*&
_output_shapes
: @�
Read_36/DisableCopyOnReadDisableCopyOnRead3read_36_disablecopyonread_adam_m_convolition_5_bias"/device:CPU:0*
_output_shapes
 �
Read_36/ReadVariableOpReadVariableOp3read_36_disablecopyonread_adam_m_convolition_5_bias^Read_36/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_72IdentityRead_36/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_73IdentityIdentity_72:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_37/DisableCopyOnReadDisableCopyOnRead3read_37_disablecopyonread_adam_v_convolition_5_bias"/device:CPU:0*
_output_shapes
 �
Read_37/ReadVariableOpReadVariableOp3read_37_disablecopyonread_adam_v_convolition_5_bias^Read_37/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_74IdentityRead_37/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_75IdentityIdentity_74:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_38/DisableCopyOnReadDisableCopyOnRead5read_38_disablecopyonread_adam_m_convolution_6_kernel"/device:CPU:0*
_output_shapes
 �
Read_38/ReadVariableOpReadVariableOp5read_38_disablecopyonread_adam_m_convolution_6_kernel^Read_38/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0w
Identity_76IdentityRead_38/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@m
Identity_77IdentityIdentity_76:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@�
Read_39/DisableCopyOnReadDisableCopyOnRead5read_39_disablecopyonread_adam_v_convolution_6_kernel"/device:CPU:0*
_output_shapes
 �
Read_39/ReadVariableOpReadVariableOp5read_39_disablecopyonread_adam_v_convolution_6_kernel^Read_39/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0w
Identity_78IdentityRead_39/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@m
Identity_79IdentityIdentity_78:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@�
Read_40/DisableCopyOnReadDisableCopyOnRead3read_40_disablecopyonread_adam_m_convolution_6_bias"/device:CPU:0*
_output_shapes
 �
Read_40/ReadVariableOpReadVariableOp3read_40_disablecopyonread_adam_m_convolution_6_bias^Read_40/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_80IdentityRead_40/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_81IdentityIdentity_80:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_41/DisableCopyOnReadDisableCopyOnRead3read_41_disablecopyonread_adam_v_convolution_6_bias"/device:CPU:0*
_output_shapes
 �
Read_41/ReadVariableOpReadVariableOp3read_41_disablecopyonread_adam_v_convolution_6_bias^Read_41/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_82IdentityRead_41/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_83IdentityIdentity_82:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_42/DisableCopyOnReadDisableCopyOnRead.read_42_disablecopyonread_adam_m_dense1_kernel"/device:CPU:0*
_output_shapes
 �
Read_42/ReadVariableOpReadVariableOp.read_42_disablecopyonread_adam_m_dense1_kernel^Read_42/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@ *
dtype0o
Identity_84IdentityRead_42/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@ e
Identity_85IdentityIdentity_84:output:0"/device:CPU:0*
T0*
_output_shapes

:@ �
Read_43/DisableCopyOnReadDisableCopyOnRead.read_43_disablecopyonread_adam_v_dense1_kernel"/device:CPU:0*
_output_shapes
 �
Read_43/ReadVariableOpReadVariableOp.read_43_disablecopyonread_adam_v_dense1_kernel^Read_43/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@ *
dtype0o
Identity_86IdentityRead_43/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@ e
Identity_87IdentityIdentity_86:output:0"/device:CPU:0*
T0*
_output_shapes

:@ �
Read_44/DisableCopyOnReadDisableCopyOnRead,read_44_disablecopyonread_adam_m_dense1_bias"/device:CPU:0*
_output_shapes
 �
Read_44/ReadVariableOpReadVariableOp,read_44_disablecopyonread_adam_m_dense1_bias^Read_44/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_88IdentityRead_44/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_89IdentityIdentity_88:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_45/DisableCopyOnReadDisableCopyOnRead,read_45_disablecopyonread_adam_v_dense1_bias"/device:CPU:0*
_output_shapes
 �
Read_45/ReadVariableOpReadVariableOp,read_45_disablecopyonread_adam_v_dense1_bias^Read_45/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_90IdentityRead_45/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_91IdentityIdentity_90:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_46/DisableCopyOnReadDisableCopyOnRead.read_46_disablecopyonread_adam_m_output_kernel"/device:CPU:0*
_output_shapes
 �
Read_46/ReadVariableOpReadVariableOp.read_46_disablecopyonread_adam_m_output_kernel^Read_46/DisableCopyOnRead"/device:CPU:0*
_output_shapes

: *
dtype0o
Identity_92IdentityRead_46/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

: e
Identity_93IdentityIdentity_92:output:0"/device:CPU:0*
T0*
_output_shapes

: �
Read_47/DisableCopyOnReadDisableCopyOnRead.read_47_disablecopyonread_adam_v_output_kernel"/device:CPU:0*
_output_shapes
 �
Read_47/ReadVariableOpReadVariableOp.read_47_disablecopyonread_adam_v_output_kernel^Read_47/DisableCopyOnRead"/device:CPU:0*
_output_shapes

: *
dtype0o
Identity_94IdentityRead_47/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

: e
Identity_95IdentityIdentity_94:output:0"/device:CPU:0*
T0*
_output_shapes

: �
Read_48/DisableCopyOnReadDisableCopyOnRead,read_48_disablecopyonread_adam_m_output_bias"/device:CPU:0*
_output_shapes
 �
Read_48/ReadVariableOpReadVariableOp,read_48_disablecopyonread_adam_m_output_bias^Read_48/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_96IdentityRead_48/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_97IdentityIdentity_96:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_49/DisableCopyOnReadDisableCopyOnRead,read_49_disablecopyonread_adam_v_output_bias"/device:CPU:0*
_output_shapes
 �
Read_49/ReadVariableOpReadVariableOp,read_49_disablecopyonread_adam_v_output_bias^Read_49/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_98IdentityRead_49/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_99IdentityIdentity_98:output:0"/device:CPU:0*
T0*
_output_shapes
:v
Read_50/DisableCopyOnReadDisableCopyOnRead!read_50_disablecopyonread_total_1"/device:CPU:0*
_output_shapes
 �
Read_50/ReadVariableOpReadVariableOp!read_50_disablecopyonread_total_1^Read_50/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_100IdentityRead_50/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_101IdentityIdentity_100:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_51/DisableCopyOnReadDisableCopyOnRead!read_51_disablecopyonread_count_1"/device:CPU:0*
_output_shapes
 �
Read_51/ReadVariableOpReadVariableOp!read_51_disablecopyonread_count_1^Read_51/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_102IdentityRead_51/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_103IdentityIdentity_102:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_52/DisableCopyOnReadDisableCopyOnReadread_52_disablecopyonread_total"/device:CPU:0*
_output_shapes
 �
Read_52/ReadVariableOpReadVariableOpread_52_disablecopyonread_total^Read_52/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_104IdentityRead_52/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_105IdentityIdentity_104:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_53/DisableCopyOnReadDisableCopyOnReadread_53_disablecopyonread_count"/device:CPU:0*
_output_shapes
 �
Read_53/ReadVariableOpReadVariableOpread_53_disablecopyonread_count^Read_53/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_106IdentityRead_53/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_107IdentityIdentity_106:output:0"/device:CPU:0*
T0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:7*
dtype0*�
value�B�7B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:7*
dtype0*�
valuexBv7B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0Identity_65:output:0Identity_67:output:0Identity_69:output:0Identity_71:output:0Identity_73:output:0Identity_75:output:0Identity_77:output:0Identity_79:output:0Identity_81:output:0Identity_83:output:0Identity_85:output:0Identity_87:output:0Identity_89:output:0Identity_91:output:0Identity_93:output:0Identity_95:output:0Identity_97:output:0Identity_99:output:0Identity_101:output:0Identity_103:output:0Identity_105:output:0Identity_107:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *E
dtypes;
927	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 j
Identity_108Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: W
Identity_109IdentityIdentity_108:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_30/DisableCopyOnRead^Read_30/ReadVariableOp^Read_31/DisableCopyOnRead^Read_31/ReadVariableOp^Read_32/DisableCopyOnRead^Read_32/ReadVariableOp^Read_33/DisableCopyOnRead^Read_33/ReadVariableOp^Read_34/DisableCopyOnRead^Read_34/ReadVariableOp^Read_35/DisableCopyOnRead^Read_35/ReadVariableOp^Read_36/DisableCopyOnRead^Read_36/ReadVariableOp^Read_37/DisableCopyOnRead^Read_37/ReadVariableOp^Read_38/DisableCopyOnRead^Read_38/ReadVariableOp^Read_39/DisableCopyOnRead^Read_39/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_40/DisableCopyOnRead^Read_40/ReadVariableOp^Read_41/DisableCopyOnRead^Read_41/ReadVariableOp^Read_42/DisableCopyOnRead^Read_42/ReadVariableOp^Read_43/DisableCopyOnRead^Read_43/ReadVariableOp^Read_44/DisableCopyOnRead^Read_44/ReadVariableOp^Read_45/DisableCopyOnRead^Read_45/ReadVariableOp^Read_46/DisableCopyOnRead^Read_46/ReadVariableOp^Read_47/DisableCopyOnRead^Read_47/ReadVariableOp^Read_48/DisableCopyOnRead^Read_48/ReadVariableOp^Read_49/DisableCopyOnRead^Read_49/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_50/DisableCopyOnRead^Read_50/ReadVariableOp^Read_51/DisableCopyOnRead^Read_51/ReadVariableOp^Read_52/DisableCopyOnRead^Read_52/ReadVariableOp^Read_53/DisableCopyOnRead^Read_53/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "%
identity_109Identity_109:output:0*(
_construction_contextkEagerRuntime*�
_input_shapesr
p: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp26
Read_28/DisableCopyOnReadRead_28/DisableCopyOnRead20
Read_28/ReadVariableOpRead_28/ReadVariableOp26
Read_29/DisableCopyOnReadRead_29/DisableCopyOnRead20
Read_29/ReadVariableOpRead_29/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp26
Read_30/DisableCopyOnReadRead_30/DisableCopyOnRead20
Read_30/ReadVariableOpRead_30/ReadVariableOp26
Read_31/DisableCopyOnReadRead_31/DisableCopyOnRead20
Read_31/ReadVariableOpRead_31/ReadVariableOp26
Read_32/DisableCopyOnReadRead_32/DisableCopyOnRead20
Read_32/ReadVariableOpRead_32/ReadVariableOp26
Read_33/DisableCopyOnReadRead_33/DisableCopyOnRead20
Read_33/ReadVariableOpRead_33/ReadVariableOp26
Read_34/DisableCopyOnReadRead_34/DisableCopyOnRead20
Read_34/ReadVariableOpRead_34/ReadVariableOp26
Read_35/DisableCopyOnReadRead_35/DisableCopyOnRead20
Read_35/ReadVariableOpRead_35/ReadVariableOp26
Read_36/DisableCopyOnReadRead_36/DisableCopyOnRead20
Read_36/ReadVariableOpRead_36/ReadVariableOp26
Read_37/DisableCopyOnReadRead_37/DisableCopyOnRead20
Read_37/ReadVariableOpRead_37/ReadVariableOp26
Read_38/DisableCopyOnReadRead_38/DisableCopyOnRead20
Read_38/ReadVariableOpRead_38/ReadVariableOp26
Read_39/DisableCopyOnReadRead_39/DisableCopyOnRead20
Read_39/ReadVariableOpRead_39/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp26
Read_40/DisableCopyOnReadRead_40/DisableCopyOnRead20
Read_40/ReadVariableOpRead_40/ReadVariableOp26
Read_41/DisableCopyOnReadRead_41/DisableCopyOnRead20
Read_41/ReadVariableOpRead_41/ReadVariableOp26
Read_42/DisableCopyOnReadRead_42/DisableCopyOnRead20
Read_42/ReadVariableOpRead_42/ReadVariableOp26
Read_43/DisableCopyOnReadRead_43/DisableCopyOnRead20
Read_43/ReadVariableOpRead_43/ReadVariableOp26
Read_44/DisableCopyOnReadRead_44/DisableCopyOnRead20
Read_44/ReadVariableOpRead_44/ReadVariableOp26
Read_45/DisableCopyOnReadRead_45/DisableCopyOnRead20
Read_45/ReadVariableOpRead_45/ReadVariableOp26
Read_46/DisableCopyOnReadRead_46/DisableCopyOnRead20
Read_46/ReadVariableOpRead_46/ReadVariableOp26
Read_47/DisableCopyOnReadRead_47/DisableCopyOnRead20
Read_47/ReadVariableOpRead_47/ReadVariableOp26
Read_48/DisableCopyOnReadRead_48/DisableCopyOnRead20
Read_48/ReadVariableOpRead_48/ReadVariableOp26
Read_49/DisableCopyOnReadRead_49/DisableCopyOnRead20
Read_49/ReadVariableOpRead_49/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp26
Read_50/DisableCopyOnReadRead_50/DisableCopyOnRead20
Read_50/ReadVariableOpRead_50/ReadVariableOp26
Read_51/DisableCopyOnReadRead_51/DisableCopyOnRead20
Read_51/ReadVariableOpRead_51/ReadVariableOp26
Read_52/DisableCopyOnReadRead_52/DisableCopyOnRead20
Read_52/ReadVariableOpRead_52/ReadVariableOp26
Read_53/DisableCopyOnReadRead_53/DisableCopyOnRead20
Read_53/ReadVariableOpRead_53/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:3/
-
_user_specified_nameconvoluton_1/kernel:1-
+
_user_specified_nameconvoluton_1/bias:40
.
_user_specified_nameconvolution_2/kernel:2.
,
_user_specified_nameconvolution_2/bias:40
.
_user_specified_nameconvolution_3/kernel:2.
,
_user_specified_nameconvolution_3/bias:40
.
_user_specified_nameconvolution_4/kernel:2.
,
_user_specified_nameconvolution_4/bias:4	0
.
_user_specified_nameconvolition_5/kernel:2
.
,
_user_specified_nameconvolition_5/bias:40
.
_user_specified_nameconvolution_6/kernel:2.
,
_user_specified_nameconvolution_6/bias:-)
'
_user_specified_namedense1/kernel:+'
%
_user_specified_namedense1/bias:-)
'
_user_specified_nameoutput/kernel:+'
%
_user_specified_nameoutput/bias:)%
#
_user_specified_name	iteration:-)
'
_user_specified_namelearning_rate::6
4
_user_specified_nameAdam/m/convoluton_1/kernel::6
4
_user_specified_nameAdam/v/convoluton_1/kernel:84
2
_user_specified_nameAdam/m/convoluton_1/bias:84
2
_user_specified_nameAdam/v/convoluton_1/bias:;7
5
_user_specified_nameAdam/m/convolution_2/kernel:;7
5
_user_specified_nameAdam/v/convolution_2/kernel:95
3
_user_specified_nameAdam/m/convolution_2/bias:95
3
_user_specified_nameAdam/v/convolution_2/bias:;7
5
_user_specified_nameAdam/m/convolution_3/kernel:;7
5
_user_specified_nameAdam/v/convolution_3/kernel:95
3
_user_specified_nameAdam/m/convolution_3/bias:95
3
_user_specified_nameAdam/v/convolution_3/bias:;7
5
_user_specified_nameAdam/m/convolution_4/kernel:; 7
5
_user_specified_nameAdam/v/convolution_4/kernel:9!5
3
_user_specified_nameAdam/m/convolution_4/bias:9"5
3
_user_specified_nameAdam/v/convolution_4/bias:;#7
5
_user_specified_nameAdam/m/convolition_5/kernel:;$7
5
_user_specified_nameAdam/v/convolition_5/kernel:9%5
3
_user_specified_nameAdam/m/convolition_5/bias:9&5
3
_user_specified_nameAdam/v/convolition_5/bias:;'7
5
_user_specified_nameAdam/m/convolution_6/kernel:;(7
5
_user_specified_nameAdam/v/convolution_6/kernel:9)5
3
_user_specified_nameAdam/m/convolution_6/bias:9*5
3
_user_specified_nameAdam/v/convolution_6/bias:4+0
.
_user_specified_nameAdam/m/dense1/kernel:4,0
.
_user_specified_nameAdam/v/dense1/kernel:2-.
,
_user_specified_nameAdam/m/dense1/bias:2..
,
_user_specified_nameAdam/v/dense1/bias:4/0
.
_user_specified_nameAdam/m/output/kernel:400
.
_user_specified_nameAdam/v/output/kernel:21.
,
_user_specified_nameAdam/m/output/bias:22.
,
_user_specified_nameAdam/v/output/bias:'3#
!
_user_specified_name	total_1:'4#
!
_user_specified_name	count_1:%5!

_user_specified_nametotal:%6!

_user_specified_namecount:=79

_output_shapes
: 

_user_specified_nameConst
�
�
,__inference_convolution_6_layer_call_fn_6589

inputs!
unknown:@@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_convolution_6_layer_call_and_return_conditional_losses_5823w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs:$ 

_user_specified_name6583:$ 

_user_specified_name6585
�	
�
__inference_loss_fn_6_6733Y
?convolution_4_kernel_regularizer_l2loss_readvariableop_resource:  
identity��6convolution_4/kernel/Regularizer/L2Loss/ReadVariableOp�
6convolution_4/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp?convolution_4_kernel_regularizer_l2loss_readvariableop_resource*&
_output_shapes
:  *
dtype0�
'convolution_4/kernel/Regularizer/L2LossL2Loss>convolution_4/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: k
&convolution_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
$convolution_4/kernel/Regularizer/mulMul/convolution_4/kernel/Regularizer/mul/x:output:00convolution_4/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: f
IdentityIdentity(convolution_4/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp7^convolution_4/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2p
6convolution_4/kernel/Regularizer/L2Loss/ReadVariableOp6convolution_4/kernel/Regularizer/L2Loss/ReadVariableOp:( $
"
_user_specified_name
resource
�
G
+__inference_activation_5_layer_call_fn_6565

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_activation_5_layer_call_and_return_conditional_losses_5803h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
+__inference_convoluton_1_layer_call_fn_6354

inputs!
unknown:
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
:���������``*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_convoluton_1_layer_call_and_return_conditional_losses_5673w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������``<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������``: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������``
 
_user_specified_nameinputs:$ 

_user_specified_name6348:$ 

_user_specified_name6350
�
�
,__inference_convolition_5_layer_call_fn_6542

inputs!
unknown: @
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_convolition_5_layer_call_and_return_conditional_losses_5793w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:��������� : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:��������� 
 
_user_specified_nameinputs:$ 

_user_specified_name6536:$ 

_user_specified_name6538
�c
�
__inference__wrapped_model_5593

inputsK
1model_convoluton_1_conv2d_readvariableop_resource:@
2model_convoluton_1_biasadd_readvariableop_resource:L
2model_convolution_2_conv2d_readvariableop_resource:A
3model_convolution_2_biasadd_readvariableop_resource:L
2model_convolution_3_conv2d_readvariableop_resource: A
3model_convolution_3_biasadd_readvariableop_resource: L
2model_convolution_4_conv2d_readvariableop_resource:  A
3model_convolution_4_biasadd_readvariableop_resource: L
2model_convolition_5_conv2d_readvariableop_resource: @A
3model_convolition_5_biasadd_readvariableop_resource:@L
2model_convolution_6_conv2d_readvariableop_resource:@@A
3model_convolution_6_biasadd_readvariableop_resource:@=
+model_dense1_matmul_readvariableop_resource:@ :
,model_dense1_biasadd_readvariableop_resource: =
+model_output_matmul_readvariableop_resource: :
,model_output_biasadd_readvariableop_resource:
identity��*model/convolition_5/BiasAdd/ReadVariableOp�)model/convolition_5/Conv2D/ReadVariableOp�*model/convolution_2/BiasAdd/ReadVariableOp�)model/convolution_2/Conv2D/ReadVariableOp�*model/convolution_3/BiasAdd/ReadVariableOp�)model/convolution_3/Conv2D/ReadVariableOp�*model/convolution_4/BiasAdd/ReadVariableOp�)model/convolution_4/Conv2D/ReadVariableOp�*model/convolution_6/BiasAdd/ReadVariableOp�)model/convolution_6/Conv2D/ReadVariableOp�)model/convoluton_1/BiasAdd/ReadVariableOp�(model/convoluton_1/Conv2D/ReadVariableOp�#model/dense1/BiasAdd/ReadVariableOp�"model/dense1/MatMul/ReadVariableOp�#model/output/BiasAdd/ReadVariableOp�"model/output/MatMul/ReadVariableOp�
(model/convoluton_1/Conv2D/ReadVariableOpReadVariableOp1model_convoluton_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
model/convoluton_1/Conv2DConv2Dinputs0model/convoluton_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������``*
paddingSAME*
strides
�
)model/convoluton_1/BiasAdd/ReadVariableOpReadVariableOp2model_convoluton_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model/convoluton_1/BiasAddBiasAdd"model/convoluton_1/Conv2D:output:01model/convoluton_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������``~
model/activation_1/ReluRelu#model/convoluton_1/BiasAdd:output:0*
T0*/
_output_shapes
:���������``�
model/pooling_1/MaxPoolMaxPool%model/activation_1/Relu:activations:0*/
_output_shapes
:���������00*
ksize
*
paddingVALID*
strides
�
)model/convolution_2/Conv2D/ReadVariableOpReadVariableOp2model_convolution_2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
model/convolution_2/Conv2DConv2D model/pooling_1/MaxPool:output:01model/convolution_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������00*
paddingSAME*
strides
�
*model/convolution_2/BiasAdd/ReadVariableOpReadVariableOp3model_convolution_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model/convolution_2/BiasAddBiasAdd#model/convolution_2/Conv2D:output:02model/convolution_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������00
model/activation_2/ReluRelu$model/convolution_2/BiasAdd:output:0*
T0*/
_output_shapes
:���������00�
model/pooling_2/MaxPoolMaxPool%model/activation_2/Relu:activations:0*/
_output_shapes
:���������*
ksize
*
paddingVALID*
strides
�
)model/convolution_3/Conv2D/ReadVariableOpReadVariableOp2model_convolution_3_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
model/convolution_3/Conv2DConv2D model/pooling_2/MaxPool:output:01model/convolution_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� *
paddingSAME*
strides
�
*model/convolution_3/BiasAdd/ReadVariableOpReadVariableOp3model_convolution_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
model/convolution_3/BiasAddBiasAdd#model/convolution_3/Conv2D:output:02model/convolution_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� 
model/activation_3/ReluRelu$model/convolution_3/BiasAdd:output:0*
T0*/
_output_shapes
:��������� �
model/pooling_3/MaxPoolMaxPool%model/activation_3/Relu:activations:0*/
_output_shapes
:��������� *
ksize
*
paddingVALID*
strides
�
)model/convolution_4/Conv2D/ReadVariableOpReadVariableOp2model_convolution_4_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0�
model/convolution_4/Conv2DConv2D model/pooling_3/MaxPool:output:01model/convolution_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� *
paddingSAME*
strides
�
*model/convolution_4/BiasAdd/ReadVariableOpReadVariableOp3model_convolution_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
model/convolution_4/BiasAddBiasAdd#model/convolution_4/Conv2D:output:02model/convolution_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� 
model/activation_4/ReluRelu$model/convolution_4/BiasAdd:output:0*
T0*/
_output_shapes
:��������� �
model/pooling_4/MaxPoolMaxPool%model/activation_4/Relu:activations:0*/
_output_shapes
:��������� *
ksize
*
paddingVALID*
strides
�
)model/convolition_5/Conv2D/ReadVariableOpReadVariableOp2model_convolition_5_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
model/convolition_5/Conv2DConv2D model/pooling_4/MaxPool:output:01model/convolition_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
�
*model/convolition_5/BiasAdd/ReadVariableOpReadVariableOp3model_convolition_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
model/convolition_5/BiasAddBiasAdd#model/convolition_5/Conv2D:output:02model/convolition_5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@
model/activation_5/ReluRelu$model/convolition_5/BiasAdd:output:0*
T0*/
_output_shapes
:���������@�
model/pooling_5/MaxPoolMaxPool%model/activation_5/Relu:activations:0*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
�
)model/convolution_6/Conv2D/ReadVariableOpReadVariableOp2model_convolution_6_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
model/convolution_6/Conv2DConv2D model/pooling_5/MaxPool:output:01model/convolution_6/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
�
*model/convolution_6/BiasAdd/ReadVariableOpReadVariableOp3model_convolution_6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
model/convolution_6/BiasAddBiasAdd#model/convolution_6/Conv2D:output:02model/convolution_6/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@
model/activation_6/ReluRelu$model/convolution_6/BiasAdd:output:0*
T0*/
_output_shapes
:���������@�
model/pooling_6/MaxPoolMaxPool%model/activation_6/Relu:activations:0*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
d
model/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"����@   �
model/flatten/ReshapeReshape model/pooling_6/MaxPool:output:0model/flatten/Const:output:0*
T0*'
_output_shapes
:���������@�
"model/dense1/MatMul/ReadVariableOpReadVariableOp+model_dense1_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0�
model/dense1/MatMulMatMulmodel/flatten/Reshape:output:0*model/dense1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
#model/dense1/BiasAdd/ReadVariableOpReadVariableOp,model_dense1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
model/dense1/BiasAddBiasAddmodel/dense1/MatMul:product:0+model/dense1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
"model/output/MatMul/ReadVariableOpReadVariableOp+model_output_matmul_readvariableop_resource*
_output_shapes

: *
dtype0�
model/output/MatMulMatMulmodel/dense1/BiasAdd:output:0*model/output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
#model/output/BiasAdd/ReadVariableOpReadVariableOp,model_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model/output/BiasAddBiasAddmodel/output/MatMul:product:0+model/output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������p
model/output/SigmoidSigmoidmodel/output/BiasAdd:output:0*
T0*'
_output_shapes
:���������g
IdentityIdentitymodel/output/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp+^model/convolition_5/BiasAdd/ReadVariableOp*^model/convolition_5/Conv2D/ReadVariableOp+^model/convolution_2/BiasAdd/ReadVariableOp*^model/convolution_2/Conv2D/ReadVariableOp+^model/convolution_3/BiasAdd/ReadVariableOp*^model/convolution_3/Conv2D/ReadVariableOp+^model/convolution_4/BiasAdd/ReadVariableOp*^model/convolution_4/Conv2D/ReadVariableOp+^model/convolution_6/BiasAdd/ReadVariableOp*^model/convolution_6/Conv2D/ReadVariableOp*^model/convoluton_1/BiasAdd/ReadVariableOp)^model/convoluton_1/Conv2D/ReadVariableOp$^model/dense1/BiasAdd/ReadVariableOp#^model/dense1/MatMul/ReadVariableOp$^model/output/BiasAdd/ReadVariableOp#^model/output/MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:���������``: : : : : : : : : : : : : : : : 2X
*model/convolition_5/BiasAdd/ReadVariableOp*model/convolition_5/BiasAdd/ReadVariableOp2V
)model/convolition_5/Conv2D/ReadVariableOp)model/convolition_5/Conv2D/ReadVariableOp2X
*model/convolution_2/BiasAdd/ReadVariableOp*model/convolution_2/BiasAdd/ReadVariableOp2V
)model/convolution_2/Conv2D/ReadVariableOp)model/convolution_2/Conv2D/ReadVariableOp2X
*model/convolution_3/BiasAdd/ReadVariableOp*model/convolution_3/BiasAdd/ReadVariableOp2V
)model/convolution_3/Conv2D/ReadVariableOp)model/convolution_3/Conv2D/ReadVariableOp2X
*model/convolution_4/BiasAdd/ReadVariableOp*model/convolution_4/BiasAdd/ReadVariableOp2V
)model/convolution_4/Conv2D/ReadVariableOp)model/convolution_4/Conv2D/ReadVariableOp2X
*model/convolution_6/BiasAdd/ReadVariableOp*model/convolution_6/BiasAdd/ReadVariableOp2V
)model/convolution_6/Conv2D/ReadVariableOp)model/convolution_6/Conv2D/ReadVariableOp2V
)model/convoluton_1/BiasAdd/ReadVariableOp)model/convoluton_1/BiasAdd/ReadVariableOp2T
(model/convoluton_1/Conv2D/ReadVariableOp(model/convoluton_1/Conv2D/ReadVariableOp2J
#model/dense1/BiasAdd/ReadVariableOp#model/dense1/BiasAdd/ReadVariableOp2H
"model/dense1/MatMul/ReadVariableOp"model/dense1/MatMul/ReadVariableOp2J
#model/output/BiasAdd/ReadVariableOp#model/output/BiasAdd/ReadVariableOp2H
"model/output/MatMul/ReadVariableOp"model/output/MatMul/ReadVariableOp:W S
/
_output_shapes
:���������``
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
A
inputs7
serving_default_inputs:0���������``:
output0
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
�
layer-0
layer_with_weights-0
layer-1
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer-6
layer_with_weights-2
layer-7
	layer-8

layer-9
layer_with_weights-3
layer-10
layer-11
layer-12
layer_with_weights-4
layer-13
layer-14
layer-15
layer_with_weights-5
layer-16
layer-17
layer-18
layer-19
layer_with_weights-6
layer-20
layer_with_weights-7
layer-21
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_network
"
_tf_keras_input_layer
�
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$__call__
*%&call_and_return_all_conditional_losses

&kernel
'bias
 (_jit_compiled_convolution_op"
_tf_keras_layer
�
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses"
_tf_keras_layer
�
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses"
_tf_keras_layer
�
5	variables
6trainable_variables
7regularization_losses
8	keras_api
9__call__
*:&call_and_return_all_conditional_losses

;kernel
<bias
 =_jit_compiled_convolution_op"
_tf_keras_layer
�
>	variables
?trainable_variables
@regularization_losses
A	keras_api
B__call__
*C&call_and_return_all_conditional_losses"
_tf_keras_layer
�
D	variables
Etrainable_variables
Fregularization_losses
G	keras_api
H__call__
*I&call_and_return_all_conditional_losses"
_tf_keras_layer
�
J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api
N__call__
*O&call_and_return_all_conditional_losses

Pkernel
Qbias
 R_jit_compiled_convolution_op"
_tf_keras_layer
�
S	variables
Ttrainable_variables
Uregularization_losses
V	keras_api
W__call__
*X&call_and_return_all_conditional_losses"
_tf_keras_layer
�
Y	variables
Ztrainable_variables
[regularization_losses
\	keras_api
]__call__
*^&call_and_return_all_conditional_losses"
_tf_keras_layer
�
_	variables
`trainable_variables
aregularization_losses
b	keras_api
c__call__
*d&call_and_return_all_conditional_losses

ekernel
fbias
 g_jit_compiled_convolution_op"
_tf_keras_layer
�
h	variables
itrainable_variables
jregularization_losses
k	keras_api
l__call__
*m&call_and_return_all_conditional_losses"
_tf_keras_layer
�
n	variables
otrainable_variables
pregularization_losses
q	keras_api
r__call__
*s&call_and_return_all_conditional_losses"
_tf_keras_layer
�
t	variables
utrainable_variables
vregularization_losses
w	keras_api
x__call__
*y&call_and_return_all_conditional_losses

zkernel
{bias
 |_jit_compiled_convolution_op"
_tf_keras_layer
�
}	variables
~trainable_variables
regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias"
_tf_keras_layer
�
&0
'1
;2
<3
P4
Q5
e6
f7
z8
{9
�10
�11
�12
�13
�14
�15"
trackable_list_wrapper
�
&0
'1
;2
<3
P4
Q5
e6
f7
z8
{9
�10
�11
�12
�13
�14
�15"
trackable_list_wrapper
�
�0
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
�11"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
$__inference_model_layer_call_fn_6065
$__inference_model_layer_call_fn_6102�
���
FullArgSpec)
args!�
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
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
?__inference_model_layer_call_and_return_conditional_losses_5923
?__inference_model_layer_call_and_return_conditional_losses_6028�
���
FullArgSpec)
args!�
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
annotations� *
 z�trace_0z�trace_1
�B�
__inference__wrapped_model_5593inputs"�
���
FullArgSpec
args�

jargs_0
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
�
_variables
�_iterations
�_learning_rate
�_index_dict
�
_momentums
�_velocities
�_update_step_xla"
experimentalOptimizer
-
�serving_default"
signature_map
.
&0
'1"
trackable_list_wrapper
.
&0
'1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
 	variables
!trainable_variables
"regularization_losses
$__call__
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
+__inference_convoluton_1_layer_call_fn_6354�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
�
�trace_02�
F__inference_convoluton_1_layer_call_and_return_conditional_losses_6372�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
-:+2convoluton_1/kernel
:2convoluton_1/bias
�2��
���
FullArgSpec
args�
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
annotations� *
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
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
+__inference_activation_1_layer_call_fn_6377�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
�
�trace_02�
F__inference_activation_1_layer_call_and_return_conditional_losses_6382�
���
FullArgSpec
args�

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
annotations� *
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
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
(__inference_pooling_1_layer_call_fn_6387�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
�
�trace_02�
C__inference_pooling_1_layer_call_and_return_conditional_losses_6392�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
.
;0
<1"
trackable_list_wrapper
.
;0
<1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
5	variables
6trainable_variables
7regularization_losses
9__call__
*:&call_and_return_all_conditional_losses
&:"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
,__inference_convolution_2_layer_call_fn_6401�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
�
�trace_02�
G__inference_convolution_2_layer_call_and_return_conditional_losses_6419�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
.:,2convolution_2/kernel
 :2convolution_2/bias
�2��
���
FullArgSpec
args�
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
annotations� *
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
>	variables
?trainable_variables
@regularization_losses
B__call__
*C&call_and_return_all_conditional_losses
&C"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
+__inference_activation_2_layer_call_fn_6424�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
�
�trace_02�
F__inference_activation_2_layer_call_and_return_conditional_losses_6429�
���
FullArgSpec
args�

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
annotations� *
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
D	variables
Etrainable_variables
Fregularization_losses
H__call__
*I&call_and_return_all_conditional_losses
&I"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
(__inference_pooling_2_layer_call_fn_6434�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
�
�trace_02�
C__inference_pooling_2_layer_call_and_return_conditional_losses_6439�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
.
P0
Q1"
trackable_list_wrapper
.
P0
Q1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
J	variables
Ktrainable_variables
Lregularization_losses
N__call__
*O&call_and_return_all_conditional_losses
&O"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
,__inference_convolution_3_layer_call_fn_6448�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
�
�trace_02�
G__inference_convolution_3_layer_call_and_return_conditional_losses_6466�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
.:, 2convolution_3/kernel
 : 2convolution_3/bias
�2��
���
FullArgSpec
args�
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
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
S	variables
Ttrainable_variables
Uregularization_losses
W__call__
*X&call_and_return_all_conditional_losses
&X"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
+__inference_activation_3_layer_call_fn_6471�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
�
�trace_02�
F__inference_activation_3_layer_call_and_return_conditional_losses_6476�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
Y	variables
Ztrainable_variables
[regularization_losses
]__call__
*^&call_and_return_all_conditional_losses
&^"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
(__inference_pooling_3_layer_call_fn_6481�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
�
�trace_02�
C__inference_pooling_3_layer_call_and_return_conditional_losses_6486�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
.
e0
f1"
trackable_list_wrapper
.
e0
f1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
_	variables
`trainable_variables
aregularization_losses
c__call__
*d&call_and_return_all_conditional_losses
&d"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
,__inference_convolution_4_layer_call_fn_6495�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
�
�trace_02�
G__inference_convolution_4_layer_call_and_return_conditional_losses_6513�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
.:,  2convolution_4/kernel
 : 2convolution_4/bias
�2��
���
FullArgSpec
args�
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
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
h	variables
itrainable_variables
jregularization_losses
l__call__
*m&call_and_return_all_conditional_losses
&m"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
+__inference_activation_4_layer_call_fn_6518�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
�
�trace_02�
F__inference_activation_4_layer_call_and_return_conditional_losses_6523�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
n	variables
otrainable_variables
pregularization_losses
r__call__
*s&call_and_return_all_conditional_losses
&s"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
(__inference_pooling_4_layer_call_fn_6528�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
�
�trace_02�
C__inference_pooling_4_layer_call_and_return_conditional_losses_6533�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
.
z0
{1"
trackable_list_wrapper
.
z0
{1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
t	variables
utrainable_variables
vregularization_losses
x__call__
*y&call_and_return_all_conditional_losses
&y"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
,__inference_convolition_5_layer_call_fn_6542�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
�
�trace_02�
G__inference_convolition_5_layer_call_and_return_conditional_losses_6560�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
.:, @2convolition_5/kernel
 :@2convolition_5/bias
�2��
���
FullArgSpec
args�
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
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
}	variables
~trainable_variables
regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
+__inference_activation_5_layer_call_fn_6565�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
�
�trace_02�
F__inference_activation_5_layer_call_and_return_conditional_losses_6570�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
(__inference_pooling_5_layer_call_fn_6575�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
�
�trace_02�
C__inference_pooling_5_layer_call_and_return_conditional_losses_6580�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
,__inference_convolution_6_layer_call_fn_6589�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
�
�trace_02�
G__inference_convolution_6_layer_call_and_return_conditional_losses_6607�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
.:,@@2convolution_6/kernel
 :@2convolution_6/bias
�2��
���
FullArgSpec
args�
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
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
+__inference_activation_6_layer_call_fn_6612�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
�
�trace_02�
F__inference_activation_6_layer_call_and_return_conditional_losses_6617�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
(__inference_pooling_6_layer_call_fn_6622�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
�
�trace_02�
C__inference_pooling_6_layer_call_and_return_conditional_losses_6627�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
&__inference_flatten_layer_call_fn_6632�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
�
�trace_02�
A__inference_flatten_layer_call_and_return_conditional_losses_6638�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
%__inference_dense1_layer_call_fn_6647�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
�
�trace_02�
@__inference_dense1_layer_call_and_return_conditional_losses_6657�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
:@ 2dense1/kernel
: 2dense1/bias
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
%__inference_output_layer_call_fn_6666�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
�
�trace_02�
@__inference_output_layer_call_and_return_conditional_losses_6677�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
: 2output/kernel
:2output/bias
�
�trace_02�
__inference_loss_fn_0_6685�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�
�trace_02�
__inference_loss_fn_1_6693�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�
�trace_02�
__inference_loss_fn_2_6701�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�
�trace_02�
__inference_loss_fn_3_6709�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�
�trace_02�
__inference_loss_fn_4_6717�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�
�trace_02�
__inference_loss_fn_5_6725�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�
�trace_02�
__inference_loss_fn_6_6733�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�
�trace_02�
__inference_loss_fn_7_6741�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�
�trace_02�
__inference_loss_fn_8_6749�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�
�trace_02�
__inference_loss_fn_9_6757�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�
�trace_02�
__inference_loss_fn_10_6765�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�
�trace_02�
__inference_loss_fn_11_6773�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
 "
trackable_list_wrapper
�
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
$__inference_model_layer_call_fn_6065inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
$__inference_model_layer_call_fn_6102inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
?__inference_model_layer_call_and_return_conditional_losses_5923inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
?__inference_model_layer_call_and_return_conditional_losses_6028inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29
�30
�31
�32"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15"
trackable_list_wrapper
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15"
trackable_list_wrapper
�2��
���
FullArgSpec*
args"�

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
annotations� *
 0
�B�
"__inference_signature_wrapper_6297inputs"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs�

jinputs
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
0
�0
�1"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
+__inference_convoluton_1_layer_call_fn_6354inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
F__inference_convoluton_1_layer_call_and_return_conditional_losses_6372inputs"�
���
FullArgSpec
args�

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
+__inference_activation_1_layer_call_fn_6377inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
F__inference_activation_1_layer_call_and_return_conditional_losses_6382inputs"�
���
FullArgSpec
args�

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
(__inference_pooling_1_layer_call_fn_6387inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
C__inference_pooling_1_layer_call_and_return_conditional_losses_6392inputs"�
���
FullArgSpec
args�

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
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
,__inference_convolution_2_layer_call_fn_6401inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
G__inference_convolution_2_layer_call_and_return_conditional_losses_6419inputs"�
���
FullArgSpec
args�

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
+__inference_activation_2_layer_call_fn_6424inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
F__inference_activation_2_layer_call_and_return_conditional_losses_6429inputs"�
���
FullArgSpec
args�

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
(__inference_pooling_2_layer_call_fn_6434inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
C__inference_pooling_2_layer_call_and_return_conditional_losses_6439inputs"�
���
FullArgSpec
args�

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
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
,__inference_convolution_3_layer_call_fn_6448inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
G__inference_convolution_3_layer_call_and_return_conditional_losses_6466inputs"�
���
FullArgSpec
args�

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
+__inference_activation_3_layer_call_fn_6471inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
F__inference_activation_3_layer_call_and_return_conditional_losses_6476inputs"�
���
FullArgSpec
args�

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
(__inference_pooling_3_layer_call_fn_6481inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
C__inference_pooling_3_layer_call_and_return_conditional_losses_6486inputs"�
���
FullArgSpec
args�

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
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
,__inference_convolution_4_layer_call_fn_6495inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
G__inference_convolution_4_layer_call_and_return_conditional_losses_6513inputs"�
���
FullArgSpec
args�

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
+__inference_activation_4_layer_call_fn_6518inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
F__inference_activation_4_layer_call_and_return_conditional_losses_6523inputs"�
���
FullArgSpec
args�

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
(__inference_pooling_4_layer_call_fn_6528inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
C__inference_pooling_4_layer_call_and_return_conditional_losses_6533inputs"�
���
FullArgSpec
args�

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
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
,__inference_convolition_5_layer_call_fn_6542inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
G__inference_convolition_5_layer_call_and_return_conditional_losses_6560inputs"�
���
FullArgSpec
args�

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
+__inference_activation_5_layer_call_fn_6565inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
F__inference_activation_5_layer_call_and_return_conditional_losses_6570inputs"�
���
FullArgSpec
args�

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
(__inference_pooling_5_layer_call_fn_6575inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
C__inference_pooling_5_layer_call_and_return_conditional_losses_6580inputs"�
���
FullArgSpec
args�

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
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
,__inference_convolution_6_layer_call_fn_6589inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
G__inference_convolution_6_layer_call_and_return_conditional_losses_6607inputs"�
���
FullArgSpec
args�

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
+__inference_activation_6_layer_call_fn_6612inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
F__inference_activation_6_layer_call_and_return_conditional_losses_6617inputs"�
���
FullArgSpec
args�

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
(__inference_pooling_6_layer_call_fn_6622inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
C__inference_pooling_6_layer_call_and_return_conditional_losses_6627inputs"�
���
FullArgSpec
args�

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
&__inference_flatten_layer_call_fn_6632inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
A__inference_flatten_layer_call_and_return_conditional_losses_6638inputs"�
���
FullArgSpec
args�

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
%__inference_dense1_layer_call_fn_6647inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
@__inference_dense1_layer_call_and_return_conditional_losses_6657inputs"�
���
FullArgSpec
args�

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
%__inference_output_layer_call_fn_6666inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
@__inference_output_layer_call_and_return_conditional_losses_6677inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
__inference_loss_fn_0_6685"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
__inference_loss_fn_1_6693"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
__inference_loss_fn_2_6701"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
__inference_loss_fn_3_6709"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
__inference_loss_fn_4_6717"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
__inference_loss_fn_5_6725"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
__inference_loss_fn_6_6733"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
__inference_loss_fn_7_6741"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
__inference_loss_fn_8_6749"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
__inference_loss_fn_9_6757"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
__inference_loss_fn_10_6765"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
__inference_loss_fn_11_6773"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
c
�	variables
�	keras_api

�total

�count
�
_fn_kwargs"
_tf_keras_metric
2:02Adam/m/convoluton_1/kernel
2:02Adam/v/convoluton_1/kernel
$:"2Adam/m/convoluton_1/bias
$:"2Adam/v/convoluton_1/bias
3:12Adam/m/convolution_2/kernel
3:12Adam/v/convolution_2/kernel
%:#2Adam/m/convolution_2/bias
%:#2Adam/v/convolution_2/bias
3:1 2Adam/m/convolution_3/kernel
3:1 2Adam/v/convolution_3/kernel
%:# 2Adam/m/convolution_3/bias
%:# 2Adam/v/convolution_3/bias
3:1  2Adam/m/convolution_4/kernel
3:1  2Adam/v/convolution_4/kernel
%:# 2Adam/m/convolution_4/bias
%:# 2Adam/v/convolution_4/bias
3:1 @2Adam/m/convolition_5/kernel
3:1 @2Adam/v/convolition_5/kernel
%:#@2Adam/m/convolition_5/bias
%:#@2Adam/v/convolition_5/bias
3:1@@2Adam/m/convolution_6/kernel
3:1@@2Adam/v/convolution_6/kernel
%:#@2Adam/m/convolution_6/bias
%:#@2Adam/v/convolution_6/bias
$:"@ 2Adam/m/dense1/kernel
$:"@ 2Adam/v/dense1/kernel
: 2Adam/m/dense1/bias
: 2Adam/v/dense1/bias
$:" 2Adam/m/output/kernel
$:" 2Adam/v/output/kernel
:2Adam/m/output/bias
:2Adam/v/output/bias
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper�
__inference__wrapped_model_5593�&';<PQefz{������7�4
-�*
(�%
inputs���������``
� "/�,
*
output �
output����������
F__inference_activation_1_layer_call_and_return_conditional_losses_6382o7�4
-�*
(�%
inputs���������``
� "4�1
*�'
tensor_0���������``
� �
+__inference_activation_1_layer_call_fn_6377d7�4
-�*
(�%
inputs���������``
� ")�&
unknown���������``�
F__inference_activation_2_layer_call_and_return_conditional_losses_6429o7�4
-�*
(�%
inputs���������00
� "4�1
*�'
tensor_0���������00
� �
+__inference_activation_2_layer_call_fn_6424d7�4
-�*
(�%
inputs���������00
� ")�&
unknown���������00�
F__inference_activation_3_layer_call_and_return_conditional_losses_6476o7�4
-�*
(�%
inputs��������� 
� "4�1
*�'
tensor_0��������� 
� �
+__inference_activation_3_layer_call_fn_6471d7�4
-�*
(�%
inputs��������� 
� ")�&
unknown��������� �
F__inference_activation_4_layer_call_and_return_conditional_losses_6523o7�4
-�*
(�%
inputs��������� 
� "4�1
*�'
tensor_0��������� 
� �
+__inference_activation_4_layer_call_fn_6518d7�4
-�*
(�%
inputs��������� 
� ")�&
unknown��������� �
F__inference_activation_5_layer_call_and_return_conditional_losses_6570o7�4
-�*
(�%
inputs���������@
� "4�1
*�'
tensor_0���������@
� �
+__inference_activation_5_layer_call_fn_6565d7�4
-�*
(�%
inputs���������@
� ")�&
unknown���������@�
F__inference_activation_6_layer_call_and_return_conditional_losses_6617o7�4
-�*
(�%
inputs���������@
� "4�1
*�'
tensor_0���������@
� �
+__inference_activation_6_layer_call_fn_6612d7�4
-�*
(�%
inputs���������@
� ")�&
unknown���������@�
G__inference_convolition_5_layer_call_and_return_conditional_losses_6560sz{7�4
-�*
(�%
inputs��������� 
� "4�1
*�'
tensor_0���������@
� �
,__inference_convolition_5_layer_call_fn_6542hz{7�4
-�*
(�%
inputs��������� 
� ")�&
unknown���������@�
G__inference_convolution_2_layer_call_and_return_conditional_losses_6419s;<7�4
-�*
(�%
inputs���������00
� "4�1
*�'
tensor_0���������00
� �
,__inference_convolution_2_layer_call_fn_6401h;<7�4
-�*
(�%
inputs���������00
� ")�&
unknown���������00�
G__inference_convolution_3_layer_call_and_return_conditional_losses_6466sPQ7�4
-�*
(�%
inputs���������
� "4�1
*�'
tensor_0��������� 
� �
,__inference_convolution_3_layer_call_fn_6448hPQ7�4
-�*
(�%
inputs���������
� ")�&
unknown��������� �
G__inference_convolution_4_layer_call_and_return_conditional_losses_6513sef7�4
-�*
(�%
inputs��������� 
� "4�1
*�'
tensor_0��������� 
� �
,__inference_convolution_4_layer_call_fn_6495hef7�4
-�*
(�%
inputs��������� 
� ")�&
unknown��������� �
G__inference_convolution_6_layer_call_and_return_conditional_losses_6607u��7�4
-�*
(�%
inputs���������@
� "4�1
*�'
tensor_0���������@
� �
,__inference_convolution_6_layer_call_fn_6589j��7�4
-�*
(�%
inputs���������@
� ")�&
unknown���������@�
F__inference_convoluton_1_layer_call_and_return_conditional_losses_6372s&'7�4
-�*
(�%
inputs���������``
� "4�1
*�'
tensor_0���������``
� �
+__inference_convoluton_1_layer_call_fn_6354h&'7�4
-�*
(�%
inputs���������``
� ")�&
unknown���������``�
@__inference_dense1_layer_call_and_return_conditional_losses_6657e��/�,
%�"
 �
inputs���������@
� ",�)
"�
tensor_0��������� 
� �
%__inference_dense1_layer_call_fn_6647Z��/�,
%�"
 �
inputs���������@
� "!�
unknown��������� �
A__inference_flatten_layer_call_and_return_conditional_losses_6638g7�4
-�*
(�%
inputs���������@
� ",�)
"�
tensor_0���������@
� �
&__inference_flatten_layer_call_fn_6632\7�4
-�*
(�%
inputs���������@
� "!�
unknown���������@B
__inference_loss_fn_0_6685$&�

� 
� "�
unknown D
__inference_loss_fn_10_6765%��

� 
� "�
unknown D
__inference_loss_fn_11_6773%��

� 
� "�
unknown B
__inference_loss_fn_1_6693$'�

� 
� "�
unknown B
__inference_loss_fn_2_6701$;�

� 
� "�
unknown B
__inference_loss_fn_3_6709$<�

� 
� "�
unknown B
__inference_loss_fn_4_6717$P�

� 
� "�
unknown B
__inference_loss_fn_5_6725$Q�

� 
� "�
unknown B
__inference_loss_fn_6_6733$e�

� 
� "�
unknown B
__inference_loss_fn_7_6741$f�

� 
� "�
unknown B
__inference_loss_fn_8_6749$z�

� 
� "�
unknown B
__inference_loss_fn_9_6757${�

� 
� "�
unknown �
?__inference_model_layer_call_and_return_conditional_losses_5923�&';<PQefz{������?�<
5�2
(�%
inputs���������``
p

 
� ",�)
"�
tensor_0���������
� �
?__inference_model_layer_call_and_return_conditional_losses_6028�&';<PQefz{������?�<
5�2
(�%
inputs���������``
p 

 
� ",�)
"�
tensor_0���������
� �
$__inference_model_layer_call_fn_6065|&';<PQefz{������?�<
5�2
(�%
inputs���������``
p

 
� "!�
unknown����������
$__inference_model_layer_call_fn_6102|&';<PQefz{������?�<
5�2
(�%
inputs���������``
p 

 
� "!�
unknown����������
@__inference_output_layer_call_and_return_conditional_losses_6677e��/�,
%�"
 �
inputs��������� 
� ",�)
"�
tensor_0���������
� �
%__inference_output_layer_call_fn_6666Z��/�,
%�"
 �
inputs��������� 
� "!�
unknown����������
C__inference_pooling_1_layer_call_and_return_conditional_losses_6392�R�O
H�E
C�@
inputs4������������������������������������
� "O�L
E�B
tensor_04������������������������������������
� �
(__inference_pooling_1_layer_call_fn_6387�R�O
H�E
C�@
inputs4������������������������������������
� "D�A
unknown4�������������������������������������
C__inference_pooling_2_layer_call_and_return_conditional_losses_6439�R�O
H�E
C�@
inputs4������������������������������������
� "O�L
E�B
tensor_04������������������������������������
� �
(__inference_pooling_2_layer_call_fn_6434�R�O
H�E
C�@
inputs4������������������������������������
� "D�A
unknown4�������������������������������������
C__inference_pooling_3_layer_call_and_return_conditional_losses_6486�R�O
H�E
C�@
inputs4������������������������������������
� "O�L
E�B
tensor_04������������������������������������
� �
(__inference_pooling_3_layer_call_fn_6481�R�O
H�E
C�@
inputs4������������������������������������
� "D�A
unknown4�������������������������������������
C__inference_pooling_4_layer_call_and_return_conditional_losses_6533�R�O
H�E
C�@
inputs4������������������������������������
� "O�L
E�B
tensor_04������������������������������������
� �
(__inference_pooling_4_layer_call_fn_6528�R�O
H�E
C�@
inputs4������������������������������������
� "D�A
unknown4�������������������������������������
C__inference_pooling_5_layer_call_and_return_conditional_losses_6580�R�O
H�E
C�@
inputs4������������������������������������
� "O�L
E�B
tensor_04������������������������������������
� �
(__inference_pooling_5_layer_call_fn_6575�R�O
H�E
C�@
inputs4������������������������������������
� "D�A
unknown4�������������������������������������
C__inference_pooling_6_layer_call_and_return_conditional_losses_6627�R�O
H�E
C�@
inputs4������������������������������������
� "O�L
E�B
tensor_04������������������������������������
� �
(__inference_pooling_6_layer_call_fn_6622�R�O
H�E
C�@
inputs4������������������������������������
� "D�A
unknown4�������������������������������������
"__inference_signature_wrapper_6297�&';<PQefz{������A�>
� 
7�4
2
inputs(�%
inputs���������``"/�,
*
output �
output���������