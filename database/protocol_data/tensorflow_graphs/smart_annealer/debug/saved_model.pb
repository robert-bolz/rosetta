╔ж
є%┐%
:
Add
x"T
y"T
z"T"
Ttype:
2	
W
AddN
inputs"T*N
sum"T"
Nint(0"!
Ttype:
2	АР
P
Assert
	condition
	
data2T"
T
list(type)(0"
	summarizeintИ
E
AssignAddVariableOp
resource
value"dtype"
dtypetypeИ
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
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
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
╣
DenseToDenseSetOperation	
set1"T	
set2"T
result_indices	
result_values"T
result_shape	"
set_operationstring"
validate_indicesbool("
Ttype:
	2	
5
DivNoNan
x"T
y"T
z"T"
Ttype:
2
S
DynamicStitch
indices*N
data"T*N
merged"T"
Nint(0"	
Ttype
B
Equal
x"T
y"T
z
"
Ttype:
2	
Р
,
Exp
x"T
y"T"
Ttype:

2
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
?
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
9
FloorMod
x"T
y"T
z"T"
Ttype:

2	
=
Greater
x"T
y"T
z
"
Ttype:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
.
Log1p
x"T
y"T"
Ttype:

2
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
;
Maximum
x"T
y"T
z"T"
Ttype:

2	Р
Н
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
=
Mul
x"T
y"T
z"T"
Ttype:
2	Р
.
Neg
x"T
y"T"
Ttype:

2	

NoOp
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
6
Pow
x"T
y"T
z"T"
Ttype:

2	
Н
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	И
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
5

Reciprocal
x"T
y"T"
Ttype:

2	
E
Relu
features"T
activations"T"
Ttype:
2	
V
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
р
ResourceApplyAdam
var
m
v
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( И
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
0
Sigmoid
x"T
y"T"
Ttype:

2
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
:
Sub
x"T
y"T
z"T"
Ttype:
2	
М
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshapeИ
9
VarIsInitializedOp
resource
is_initialized
И
&
	ZerosLike
x"T
y"T"	
Ttype"train*2.0.0-alpha02v1.12.0-9492-g2c319fb4158Б░

e
inPlaceholder*
dtype0*'
_output_shapes
:         #*
shape:         #
б
.dense1/kernel/Initializer/random_uniform/shapeConst*
valueB"#   d   * 
_class
loc:@dense1/kernel*
dtype0*
_output_shapes
:
У
,dense1/kernel/Initializer/random_uniform/minConst*
valueB
 *╧рW╛* 
_class
loc:@dense1/kernel*
dtype0*
_output_shapes
: 
У
,dense1/kernel/Initializer/random_uniform/maxConst*
_output_shapes
: *
valueB
 *╧рW>* 
_class
loc:@dense1/kernel*
dtype0
╧
6dense1/kernel/Initializer/random_uniform/RandomUniformRandomUniform.dense1/kernel/Initializer/random_uniform/shape*
T0* 
_class
loc:@dense1/kernel*
dtype0*
_output_shapes

:#d
╥
,dense1/kernel/Initializer/random_uniform/subSub,dense1/kernel/Initializer/random_uniform/max,dense1/kernel/Initializer/random_uniform/min*
T0* 
_class
loc:@dense1/kernel*
_output_shapes
: 
ф
,dense1/kernel/Initializer/random_uniform/mulMul6dense1/kernel/Initializer/random_uniform/RandomUniform,dense1/kernel/Initializer/random_uniform/sub*
_output_shapes

:#d*
T0* 
_class
loc:@dense1/kernel
╓
(dense1/kernel/Initializer/random_uniformAdd,dense1/kernel/Initializer/random_uniform/mul,dense1/kernel/Initializer/random_uniform/min*
_output_shapes

:#d*
T0* 
_class
loc:@dense1/kernel
Ш
dense1/kernelVarHandleOp*
dtype0*
_output_shapes
: *
shape
:#d*
shared_namedense1/kernel* 
_class
loc:@dense1/kernel
k
.dense1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense1/kernel*
_output_shapes
: 
Р
dense1/kernel/AssignAssignVariableOpdense1/kernel(dense1/kernel/Initializer/random_uniform* 
_class
loc:@dense1/kernel*
dtype0
С
!dense1/kernel/Read/ReadVariableOpReadVariableOpdense1/kernel* 
_class
loc:@dense1/kernel*
dtype0*
_output_shapes

:#d
К
dense1/bias/Initializer/zerosConst*
dtype0*
_output_shapes
:d*
valueBd*    *
_class
loc:@dense1/bias
О
dense1/biasVarHandleOp*
shared_namedense1/bias*
_class
loc:@dense1/bias*
dtype0*
_output_shapes
: *
shape:d
g
,dense1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense1/bias*
_output_shapes
: 

dense1/bias/AssignAssignVariableOpdense1/biasdense1/bias/Initializer/zeros*
_class
loc:@dense1/bias*
dtype0
З
dense1/bias/Read/ReadVariableOpReadVariableOpdense1/bias*
_class
loc:@dense1/bias*
dtype0*
_output_shapes
:d
j
dense1/MatMul/ReadVariableOpReadVariableOpdense1/kernel*
dtype0*
_output_shapes

:#d
k
dense1/MatMulMatMulindense1/MatMul/ReadVariableOp*'
_output_shapes
:         d*
T0
e
dense1/BiasAdd/ReadVariableOpReadVariableOpdense1/bias*
dtype0*
_output_shapes
:d
y
dense1/BiasAddBiasAdddense1/MatMuldense1/BiasAdd/ReadVariableOp*
T0*'
_output_shapes
:         d
U
dense1/ReluReludense1/BiasAdd*'
_output_shapes
:         d*
T0
б
.dense2/kernel/Initializer/random_uniform/shapeConst*
valueB"d   d   * 
_class
loc:@dense2/kernel*
dtype0*
_output_shapes
:
У
,dense2/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *
valueB
 *м\1╛* 
_class
loc:@dense2/kernel*
dtype0
У
,dense2/kernel/Initializer/random_uniform/maxConst*
valueB
 *м\1>* 
_class
loc:@dense2/kernel*
dtype0*
_output_shapes
: 
╧
6dense2/kernel/Initializer/random_uniform/RandomUniformRandomUniform.dense2/kernel/Initializer/random_uniform/shape*
T0* 
_class
loc:@dense2/kernel*
dtype0*
_output_shapes

:dd
╥
,dense2/kernel/Initializer/random_uniform/subSub,dense2/kernel/Initializer/random_uniform/max,dense2/kernel/Initializer/random_uniform/min*
T0* 
_class
loc:@dense2/kernel*
_output_shapes
: 
ф
,dense2/kernel/Initializer/random_uniform/mulMul6dense2/kernel/Initializer/random_uniform/RandomUniform,dense2/kernel/Initializer/random_uniform/sub*
T0* 
_class
loc:@dense2/kernel*
_output_shapes

:dd
╓
(dense2/kernel/Initializer/random_uniformAdd,dense2/kernel/Initializer/random_uniform/mul,dense2/kernel/Initializer/random_uniform/min*
_output_shapes

:dd*
T0* 
_class
loc:@dense2/kernel
Ш
dense2/kernelVarHandleOp*
shape
:dd*
shared_namedense2/kernel* 
_class
loc:@dense2/kernel*
dtype0*
_output_shapes
: 
k
.dense2/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense2/kernel*
_output_shapes
: 
Р
dense2/kernel/AssignAssignVariableOpdense2/kernel(dense2/kernel/Initializer/random_uniform* 
_class
loc:@dense2/kernel*
dtype0
С
!dense2/kernel/Read/ReadVariableOpReadVariableOpdense2/kernel*
dtype0*
_output_shapes

:dd* 
_class
loc:@dense2/kernel
К
dense2/bias/Initializer/zerosConst*
valueBd*    *
_class
loc:@dense2/bias*
dtype0*
_output_shapes
:d
О
dense2/biasVarHandleOp*
_class
loc:@dense2/bias*
dtype0*
_output_shapes
: *
shape:d*
shared_namedense2/bias
g
,dense2/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense2/bias*
_output_shapes
: 

dense2/bias/AssignAssignVariableOpdense2/biasdense2/bias/Initializer/zeros*
_class
loc:@dense2/bias*
dtype0
З
dense2/bias/Read/ReadVariableOpReadVariableOpdense2/bias*
_class
loc:@dense2/bias*
dtype0*
_output_shapes
:d
j
dense2/MatMul/ReadVariableOpReadVariableOpdense2/kernel*
dtype0*
_output_shapes

:dd
t
dense2/MatMulMatMuldense1/Reludense2/MatMul/ReadVariableOp*'
_output_shapes
:         d*
T0
e
dense2/BiasAdd/ReadVariableOpReadVariableOpdense2/bias*
dtype0*
_output_shapes
:d
y
dense2/BiasAddBiasAdddense2/MatMuldense2/BiasAdd/ReadVariableOp*
T0*'
_output_shapes
:         d
U
dense2/ReluReludense2/BiasAdd*'
_output_shapes
:         d*
T0
б
.dense3/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*
valueB"d   d   * 
_class
loc:@dense3/kernel
У
,dense3/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *м\1╛* 
_class
loc:@dense3/kernel
У
,dense3/kernel/Initializer/random_uniform/maxConst*
valueB
 *м\1>* 
_class
loc:@dense3/kernel*
dtype0*
_output_shapes
: 
╧
6dense3/kernel/Initializer/random_uniform/RandomUniformRandomUniform.dense3/kernel/Initializer/random_uniform/shape*
_output_shapes

:dd*
T0* 
_class
loc:@dense3/kernel*
dtype0
╥
,dense3/kernel/Initializer/random_uniform/subSub,dense3/kernel/Initializer/random_uniform/max,dense3/kernel/Initializer/random_uniform/min*
T0* 
_class
loc:@dense3/kernel*
_output_shapes
: 
ф
,dense3/kernel/Initializer/random_uniform/mulMul6dense3/kernel/Initializer/random_uniform/RandomUniform,dense3/kernel/Initializer/random_uniform/sub*
T0* 
_class
loc:@dense3/kernel*
_output_shapes

:dd
╓
(dense3/kernel/Initializer/random_uniformAdd,dense3/kernel/Initializer/random_uniform/mul,dense3/kernel/Initializer/random_uniform/min*
T0* 
_class
loc:@dense3/kernel*
_output_shapes

:dd
Ш
dense3/kernelVarHandleOp*
shared_namedense3/kernel* 
_class
loc:@dense3/kernel*
dtype0*
_output_shapes
: *
shape
:dd
k
.dense3/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense3/kernel*
_output_shapes
: 
Р
dense3/kernel/AssignAssignVariableOpdense3/kernel(dense3/kernel/Initializer/random_uniform* 
_class
loc:@dense3/kernel*
dtype0
С
!dense3/kernel/Read/ReadVariableOpReadVariableOpdense3/kernel* 
_class
loc:@dense3/kernel*
dtype0*
_output_shapes

:dd
К
dense3/bias/Initializer/zerosConst*
valueBd*    *
_class
loc:@dense3/bias*
dtype0*
_output_shapes
:d
О
dense3/biasVarHandleOp*
_output_shapes
: *
shape:d*
shared_namedense3/bias*
_class
loc:@dense3/bias*
dtype0
g
,dense3/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense3/bias*
_output_shapes
: 

dense3/bias/AssignAssignVariableOpdense3/biasdense3/bias/Initializer/zeros*
_class
loc:@dense3/bias*
dtype0
З
dense3/bias/Read/ReadVariableOpReadVariableOpdense3/bias*
_class
loc:@dense3/bias*
dtype0*
_output_shapes
:d
j
dense3/MatMul/ReadVariableOpReadVariableOpdense3/kernel*
dtype0*
_output_shapes

:dd
t
dense3/MatMulMatMuldense2/Reludense3/MatMul/ReadVariableOp*
T0*'
_output_shapes
:         d
e
dense3/BiasAdd/ReadVariableOpReadVariableOpdense3/bias*
_output_shapes
:d*
dtype0
y
dense3/BiasAddBiasAdddense3/MatMuldense3/BiasAdd/ReadVariableOp*'
_output_shapes
:         d*
T0
U
dense3/ReluReludense3/BiasAdd*'
_output_shapes
:         d*
T0
б
.output/kernel/Initializer/random_uniform/shapeConst*
valueB"d      * 
_class
loc:@output/kernel*
dtype0*
_output_shapes
:
У
,output/kernel/Initializer/random_uniform/minConst*
valueB
 *<Хy╛* 
_class
loc:@output/kernel*
dtype0*
_output_shapes
: 
У
,output/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *<Хy>* 
_class
loc:@output/kernel
╧
6output/kernel/Initializer/random_uniform/RandomUniformRandomUniform.output/kernel/Initializer/random_uniform/shape*
_output_shapes

:d*
T0* 
_class
loc:@output/kernel*
dtype0
╥
,output/kernel/Initializer/random_uniform/subSub,output/kernel/Initializer/random_uniform/max,output/kernel/Initializer/random_uniform/min*
T0* 
_class
loc:@output/kernel*
_output_shapes
: 
ф
,output/kernel/Initializer/random_uniform/mulMul6output/kernel/Initializer/random_uniform/RandomUniform,output/kernel/Initializer/random_uniform/sub* 
_class
loc:@output/kernel*
_output_shapes

:d*
T0
╓
(output/kernel/Initializer/random_uniformAdd,output/kernel/Initializer/random_uniform/mul,output/kernel/Initializer/random_uniform/min*
T0* 
_class
loc:@output/kernel*
_output_shapes

:d
Ш
output/kernelVarHandleOp*
shape
:d*
shared_nameoutput/kernel* 
_class
loc:@output/kernel*
dtype0*
_output_shapes
: 
k
.output/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpoutput/kernel*
_output_shapes
: 
Р
output/kernel/AssignAssignVariableOpoutput/kernel(output/kernel/Initializer/random_uniform* 
_class
loc:@output/kernel*
dtype0
С
!output/kernel/Read/ReadVariableOpReadVariableOpoutput/kernel*
dtype0*
_output_shapes

:d* 
_class
loc:@output/kernel
К
output/bias/Initializer/zerosConst*
valueB*    *
_class
loc:@output/bias*
dtype0*
_output_shapes
:
О
output/biasVarHandleOp*
_output_shapes
: *
shape:*
shared_nameoutput/bias*
_class
loc:@output/bias*
dtype0
g
,output/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpoutput/bias*
_output_shapes
: 

output/bias/AssignAssignVariableOpoutput/biasoutput/bias/Initializer/zeros*
_class
loc:@output/bias*
dtype0
З
output/bias/Read/ReadVariableOpReadVariableOpoutput/bias*
_class
loc:@output/bias*
dtype0*
_output_shapes
:
j
output/MatMul/ReadVariableOpReadVariableOpoutput/kernel*
dtype0*
_output_shapes

:d
t
output/MatMulMatMuldense3/Reluoutput/MatMul/ReadVariableOp*
T0*'
_output_shapes
:         
e
output/BiasAdd/ReadVariableOpReadVariableOpoutput/bias*
dtype0*
_output_shapes
:
y
output/BiasAddBiasAddoutput/MatMuloutput/BiasAdd/ReadVariableOp*
T0*'
_output_shapes
:         
[
output/SigmoidSigmoidoutput/BiasAdd*
T0*'
_output_shapes
:         
В
output_targetPlaceholder*0
_output_shapes
:                  *%
shape:                  *
dtype0
R
ConstConst*
valueB*  А?*
dtype0*
_output_shapes
:
В
output_sample_weightsPlaceholderWithDefaultConst*
dtype0*#
_output_shapes
:         *
shape:         
v
total/Initializer/zerosConst*
valueB
 *    *
_class

loc:@total*
dtype0*
_output_shapes
: 
x
totalVarHandleOp*
_output_shapes
: *
shape: *
shared_nametotal*
_class

loc:@total*
dtype0
[
&total/IsInitialized/VarIsInitializedOpVarIsInitializedOptotal*
_output_shapes
: 
g
total/AssignAssignVariableOptotaltotal/Initializer/zeros*
_class

loc:@total*
dtype0
q
total/Read/ReadVariableOpReadVariableOptotal*
_class

loc:@total*
dtype0*
_output_shapes
: 
v
count/Initializer/zerosConst*
valueB
 *    *
_class

loc:@count*
dtype0*
_output_shapes
: 
x
countVarHandleOp*
shape: *
shared_namecount*
_class

loc:@count*
dtype0*
_output_shapes
: 
[
&count/IsInitialized/VarIsInitializedOpVarIsInitializedOpcount*
_output_shapes
: 
g
count/AssignAssignVariableOpcountcount/Initializer/zeros*
_class

loc:@count*
dtype0
q
count/Read/ReadVariableOpReadVariableOpcount*
_class

loc:@count*
dtype0*
_output_shapes
: 
c
metrics/binary_accuracy/Cast/xConst*
valueB
 *   ?*
dtype0*
_output_shapes
: 
М
metrics/binary_accuracy/GreaterGreateroutput/Sigmoidmetrics/binary_accuracy/Cast/x*
T0*'
_output_shapes
:         
И
metrics/binary_accuracy/Cast_1Castmetrics/binary_accuracy/Greater*

SrcT0
*'
_output_shapes
:         *

DstT0
Р
metrics/binary_accuracy/EqualEqualoutput_targetmetrics/binary_accuracy/Cast_1*0
_output_shapes
:                  *
T0
П
metrics/binary_accuracy/Cast_2Castmetrics/binary_accuracy/Equal*0
_output_shapes
:                  *

DstT0*

SrcT0

y
.metrics/binary_accuracy/Mean/reduction_indicesConst*
valueB :
         *
dtype0*
_output_shapes
: 
в
metrics/binary_accuracy/MeanMeanmetrics/binary_accuracy/Cast_2.metrics/binary_accuracy/Mean/reduction_indices*#
_output_shapes
:         *
T0
g
metrics/binary_accuracy/ConstConst*
valueB: *
dtype0*
_output_shapes
:
А
metrics/binary_accuracy/SumSummetrics/binary_accuracy/Meanmetrics/binary_accuracy/Const*
T0*
_output_shapes
: 
s
+metrics/binary_accuracy/AssignAddVariableOpAssignAddVariableOptotalmetrics/binary_accuracy/Sum*
dtype0
░
&metrics/binary_accuracy/ReadVariableOpReadVariableOptotal,^metrics/binary_accuracy/AssignAddVariableOp^metrics/binary_accuracy/Sum*
_output_shapes
: *
dtype0
c
metrics/binary_accuracy/SizeSizemetrics/binary_accuracy/Mean*
_output_shapes
: *
T0
t
metrics/binary_accuracy/Cast_3Castmetrics/binary_accuracy/Size*

SrcT0*
_output_shapes
: *

DstT0
ж
-metrics/binary_accuracy/AssignAddVariableOp_1AssignAddVariableOpcountmetrics/binary_accuracy/Cast_3,^metrics/binary_accuracy/AssignAddVariableOp*
dtype0
─
(metrics/binary_accuracy/ReadVariableOp_1ReadVariableOpcount,^metrics/binary_accuracy/AssignAddVariableOp.^metrics/binary_accuracy/AssignAddVariableOp_1*
dtype0*
_output_shapes
: 
Я
1metrics/binary_accuracy/div_no_nan/ReadVariableOpReadVariableOptotal.^metrics/binary_accuracy/AssignAddVariableOp_1*
dtype0*
_output_shapes
: 
б
3metrics/binary_accuracy/div_no_nan/ReadVariableOp_1ReadVariableOpcount.^metrics/binary_accuracy/AssignAddVariableOp_1*
dtype0*
_output_shapes
: 
╖
"metrics/binary_accuracy/div_no_nanDivNoNan1metrics/binary_accuracy/div_no_nan/ReadVariableOp3metrics/binary_accuracy/div_no_nan/ReadVariableOp_1*
T0*
_output_shapes
: 
q
 metrics/binary_accuracy/IdentityIdentity"metrics/binary_accuracy/div_no_nan*
T0*
_output_shapes
: 
e
 metrics/binary_accuracy/Cast_4/xConst*
valueB
 *   ?*
dtype0*
_output_shapes
: 
Р
!metrics/binary_accuracy/Greater_1Greateroutput/Sigmoid metrics/binary_accuracy/Cast_4/x*
T0*'
_output_shapes
:         
К
metrics/binary_accuracy/Cast_5Cast!metrics/binary_accuracy/Greater_1*

SrcT0
*'
_output_shapes
:         *

DstT0
Т
metrics/binary_accuracy/Equal_1Equaloutput_targetmetrics/binary_accuracy/Cast_5*0
_output_shapes
:                  *
T0
С
metrics/binary_accuracy/Cast_6Castmetrics/binary_accuracy/Equal_1*

SrcT0
*0
_output_shapes
:                  *

DstT0
{
0metrics/binary_accuracy/Mean_1/reduction_indicesConst*
valueB :
         *
dtype0*
_output_shapes
: 
ж
metrics/binary_accuracy/Mean_1Meanmetrics/binary_accuracy/Cast_60metrics/binary_accuracy/Mean_1/reduction_indices*
T0*#
_output_shapes
:         
i
metrics/binary_accuracy/Const_1Const*
_output_shapes
:*
valueB: *
dtype0
И
metrics/binary_accuracy/Mean_2Meanmetrics/binary_accuracy/Mean_1metrics/binary_accuracy/Const_1*
T0*
_output_shapes
: 
o
*loss/output_loss/binary_crossentropy/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
М
=loss/output_loss/binary_crossentropy/logistic_loss/zeros_like	ZerosLikeoutput/BiasAdd*
T0*'
_output_shapes
:         
╨
?loss/output_loss/binary_crossentropy/logistic_loss/GreaterEqualGreaterEqualoutput/BiasAdd=loss/output_loss/binary_crossentropy/logistic_loss/zeros_like*
T0*'
_output_shapes
:         
Е
9loss/output_loss/binary_crossentropy/logistic_loss/SelectSelect?loss/output_loss/binary_crossentropy/logistic_loss/GreaterEqualoutput/BiasAdd=loss/output_loss/binary_crossentropy/logistic_loss/zeros_like*
T0*'
_output_shapes
:         

6loss/output_loss/binary_crossentropy/logistic_loss/NegNegoutput/BiasAdd*'
_output_shapes
:         *
T0
А
;loss/output_loss/binary_crossentropy/logistic_loss/Select_1Select?loss/output_loss/binary_crossentropy/logistic_loss/GreaterEqual6loss/output_loss/binary_crossentropy/logistic_loss/Negoutput/BiasAdd*
T0*'
_output_shapes
:         
Ч
6loss/output_loss/binary_crossentropy/logistic_loss/mulMuloutput/BiasAddoutput_target*
T0*0
_output_shapes
:                  
ы
6loss/output_loss/binary_crossentropy/logistic_loss/subSub9loss/output_loss/binary_crossentropy/logistic_loss/Select6loss/output_loss/binary_crossentropy/logistic_loss/mul*
T0*0
_output_shapes
:                  
м
6loss/output_loss/binary_crossentropy/logistic_loss/ExpExp;loss/output_loss/binary_crossentropy/logistic_loss/Select_1*
T0*'
_output_shapes
:         
л
8loss/output_loss/binary_crossentropy/logistic_loss/Log1pLog1p6loss/output_loss/binary_crossentropy/logistic_loss/Exp*
T0*'
_output_shapes
:         
ц
2loss/output_loss/binary_crossentropy/logistic_lossAdd6loss/output_loss/binary_crossentropy/logistic_loss/sub8loss/output_loss/binary_crossentropy/logistic_loss/Log1p*
T0*0
_output_shapes
:                  
Ж
;loss/output_loss/binary_crossentropy/Mean/reduction_indicesConst*
valueB :
         *
dtype0*
_output_shapes
: 
╨
)loss/output_loss/binary_crossentropy/MeanMean2loss/output_loss/binary_crossentropy/logistic_loss;loss/output_loss/binary_crossentropy/Mean/reduction_indices*
T0*#
_output_shapes
:         
м
gloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/weights/shapeShapeoutput_sample_weights*
T0*
_output_shapes
:
и
floss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/weights/rankConst*
value	B :*
dtype0*
_output_shapes
: 
┐
floss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/values/shapeShape)loss/output_loss/binary_crossentropy/Mean*
_output_shapes
:*
T0
з
eloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 
з
eloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_scalar/xConst*
value	B : *
dtype0*
_output_shapes
: 
▄
closs/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_scalarEqualeloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_scalar/xfloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/weights/rank*
T0*
_output_shapes
: 
ц
oloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/SwitchSwitchcloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_scalarcloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_scalar*
_output_shapes
: : *
T0

С
qloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_tIdentityqloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch:1*
T0
*
_output_shapes
: 
П
qloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_fIdentityoloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch*
T0
*
_output_shapes
: 
В
ploss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_idIdentitycloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_scalar*
T0
*
_output_shapes
: 
э
qloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1Switchcloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_scalarploss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
T0
*v
_classl
jhloc:@loss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_scalar*
_output_shapes
: : 
ю
Пloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankEqualЦloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/SwitchШloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1*
_output_shapes
: *
T0
Ч
Цloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/SwitchSwitcheloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/values/rankploss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*x
_classn
ljloc:@loss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/values/rank*
_output_shapes
: : *
T0
Ы
Шloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1Switchfloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/weights/rankploss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
T0*y
_classo
mkloc:@loss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/weights/rank*
_output_shapes
: : 
█
Йloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/SwitchSwitchПloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankПloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
T0
*
_output_shapes
: : 
╟
Лloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_tIdentityЛloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:1*
_output_shapes
: *
T0

┼
Лloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_fIdentityЙloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch*
_output_shapes
: *
T0

╩
Кloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_idIdentityПloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
_output_shapes
: *
T0

¤
вloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dimConstМ^loss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
valueB :
         *
dtype0*
_output_shapes
: 
з
Юloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims
ExpandDimsйloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1вloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim*
_output_shapes

:*
T0
░
еloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/SwitchSwitchfloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/values/shapeploss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
T0*y
_classo
mkloc:@loss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/values/shape* 
_output_shapes
::
Н
зloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1Switchеloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/SwitchКloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
T0*y
_classo
mkloc:@loss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/values/shape* 
_output_shapes
::
Д
гloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ShapeConstМ^loss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
valueB"      *
dtype0*
_output_shapes
:
ї
гloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ConstConstМ^loss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
value	B :*
dtype0*
_output_shapes
: 
Ы
Эloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_likeFillгloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shapeгloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const*
_output_shapes

:*
T0
ё
Яloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axisConstМ^loss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
value	B :*
dtype0*
_output_shapes
: 
╝
Ъloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concatConcatV2Юloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDimsЭloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_likeЯloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis*
T0*
N*
_output_shapes

:
 
дloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dimConstМ^loss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
valueB :
         *
dtype0*
_output_shapes
: 
н
аloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1
ExpandDimsлloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1дloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim*
T0*
_output_shapes

:
┤
зloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/SwitchSwitchgloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/weights/shapeploss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
T0*z
_classp
nlloc:@loss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/weights/shape* 
_output_shapes
::
Т
йloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1Switchзloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/SwitchКloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id* 
_output_shapes
::*
T0*z
_classp
nlloc:@loss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/weights/shape
ш
мloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperationDenseToDenseSetOperationаloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1Ъloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat*<
_output_shapes*
(:         :         :*
set_operationa-b*
T0
 
дloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dimsSizeоloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1*
T0*
_output_shapes
: 
ч
Хloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/xConstМ^loss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
value	B : *
dtype0*
_output_shapes
: 
¤
Уloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dimsEqualХloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/xдloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims*
T0*
_output_shapes
: 
А
Лloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1SwitchПloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankКloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
T0
*е
_classЪ
ЧФloc:@loss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
_output_shapes
: : 
т
Иloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/MergeMergeЛloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1Уloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims*
T0
*
N*
_output_shapes
: : 
г
nloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/MergeMergeИloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Mergesloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:1*
T0
*
N*
_output_shapes
: : 
╟
_loss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/ConstConst*8
value/B- B'weights can not be broadcast to values.*
dtype0*
_output_shapes
: 
░
aloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/Const_1Const*
valueB Bweights.shape=*
dtype0*
_output_shapes
: 
╣
aloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/Const_2Const*(
valueB Boutput_sample_weights:0*
dtype0*
_output_shapes
: 
п
aloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/Const_3Const*
valueB Bvalues.shape=*
dtype0*
_output_shapes
: 
═
aloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/Const_4Const*<
value3B1 B+loss/output_loss/binary_crossentropy/Mean:0*
dtype0*
_output_shapes
: 
м
aloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/Const_5Const*
valueB B
is_scalar=*
dtype0*
_output_shapes
: 
∙
lloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/SwitchSwitchnloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Mergenloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge*
T0
*
_output_shapes
: : 
Л
nloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_tIdentitynloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Switch:1*
_output_shapes
: *
T0

Й
nloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_fIdentitylloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Switch*
T0
*
_output_shapes
: 
К
mloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_idIdentitynloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge*
T0
*
_output_shapes
: 
у
jloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/NoOpNoOpo^loss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_t
Ж
xloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependencyIdentitynloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_tk^loss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/NoOp*
T0
*Б
_classw
usloc:@loss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_t*
_output_shapes
: 
╠
sloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_0Consto^loss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*8
value/B- B'weights can not be broadcast to values.*
dtype0*
_output_shapes
: 
│
sloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_1Consto^loss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
_output_shapes
: *
valueB Bweights.shape=*
dtype0
╝
sloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_2Consto^loss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*(
valueB Boutput_sample_weights:0*
dtype0*
_output_shapes
: 
▓
sloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_4Consto^loss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
valueB Bvalues.shape=*
dtype0*
_output_shapes
: 
╨
sloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_5Consto^loss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*<
value3B1 B+loss/output_loss/binary_crossentropy/Mean:0*
dtype0*
_output_shapes
: 
п
sloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_7Consto^loss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
_output_shapes
: *
valueB B
is_scalar=*
dtype0
в

lloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/AssertAssertsloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switchsloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_0sloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_1sloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_2uloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1sloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_4sloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_5uloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2sloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_7uloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3*
T
2	

Г
sloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/SwitchSwitchnloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Mergemloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*
T0
*Б
_classw
usloc:@loss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge*
_output_shapes
: : 
■
uloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1Switchgloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/weights/shapemloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*
T0*z
_classp
nlloc:@loss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/weights/shape* 
_output_shapes
::
№
uloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2Switchfloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/values/shapemloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id* 
_output_shapes
::*
T0*y
_classo
mkloc:@loss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/values/shape
ю
uloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3Switchcloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_scalarmloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*
T0
*v
_classl
jhloc:@loss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_scalar*
_output_shapes
: : 
К
zloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency_1Identitynloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_fm^loss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert*
T0
*Б
_classw
usloc:@loss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
_output_shapes
: 
Ц
kloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/MergeMergezloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency_1xloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency*
T0
*
N*
_output_shapes
: : 
Ы
Tloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/ones_like/ShapeShape)loss/output_loss/binary_crossentropy/Meanl^loss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Merge*
T0*
_output_shapes
:
З
Tloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/ones_like/ConstConstl^loss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Merge*
_output_shapes
: *
valueB
 *  А?*
dtype0
░
Nloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/ones_likeFillTloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/ones_like/ShapeTloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/ones_like/Const*
T0*#
_output_shapes
:         
р
Dloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weightsMuloutput_sample_weightsNloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/ones_like*
T0*#
_output_shapes
:         
▄
6loss/output_loss/binary_crossentropy/weighted_loss/MulMul)loss/output_loss/binary_crossentropy/MeanDloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights*
T0*#
_output_shapes
:         
`
loss/output_loss/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
М
loss/output_loss/SumSum6loss/output_loss/binary_crossentropy/weighted_loss/Mulloss/output_loss/Const*
_output_shapes
: *
T0
~
loss/output_loss/num_elementsSize6loss/output_loss/binary_crossentropy/weighted_loss/Mul*
T0*
_output_shapes
: 
y
"loss/output_loss/num_elements/CastCastloss/output_loss/num_elements*
_output_shapes
: *

DstT0*

SrcT0
[
loss/output_loss/mul/xConst*
dtype0*
_output_shapes
: *
valueB
 *  А?
x
loss/output_loss/mulMulloss/output_loss/mul/x"loss/output_loss/num_elements/Cast*
T0*
_output_shapes
: 
[
loss/output_loss/Const_1Const*
valueB *
dtype0*
_output_shapes
: 
n
loss/output_loss/Sum_1Sumloss/output_loss/Sumloss/output_loss/Const_1*
T0*
_output_shapes
: 
q
loss/output_loss/valueDivNoNanloss/output_loss/Sum_1loss/output_loss/mul*
T0*
_output_shapes
: 
O

loss/mul/xConst*
dtype0*
_output_shapes
: *
valueB
 *  А?
T
loss/mulMul
loss/mul/xloss/output_loss/value*
_output_shapes
: *
T0
q
iter/Initializer/zerosConst*
value	B	 R *
_class
	loc:@iter*
dtype0	*
_output_shapes
: 
Д
iterVarHandleOp"/device:CPU:0*
shared_nameiter*
_class
	loc:@iter*
dtype0	*
_output_shapes
: *
shape: 
h
%iter/IsInitialized/VarIsInitializedOpVarIsInitializedOpiter"/device:CPU:0*
_output_shapes
: 
r
iter/AssignAssignVariableOpiteriter/Initializer/zeros"/device:CPU:0*
_class
	loc:@iter*
dtype0	
}
iter/Read/ReadVariableOpReadVariableOpiter"/device:CPU:0*
_class
	loc:@iter*
dtype0	*
_output_shapes
: 
О
'learning_rate/Initializer/initial_valueConst*
dtype0*
_output_shapes
: *
valueB
 *╒╬╢9* 
_class
loc:@learning_rate
Р
learning_rateVarHandleOp*
shape: *
shared_namelearning_rate* 
_class
loc:@learning_rate*
dtype0*
_output_shapes
: 
k
.learning_rate/IsInitialized/VarIsInitializedOpVarIsInitializedOplearning_rate*
_output_shapes
: 
П
learning_rate/AssignAssignVariableOplearning_rate'learning_rate/Initializer/initial_value* 
_class
loc:@learning_rate*
dtype0
Й
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate* 
_class
loc:@learning_rate*
dtype0*
_output_shapes
: 
~
decay/Initializer/initial_valueConst*
valueB
 *    *
_class

loc:@decay*
dtype0*
_output_shapes
: 
x
decayVarHandleOp*
shape: *
shared_namedecay*
_class

loc:@decay*
dtype0*
_output_shapes
: 
[
&decay/IsInitialized/VarIsInitializedOpVarIsInitializedOpdecay*
_output_shapes
: 
o
decay/AssignAssignVariableOpdecaydecay/Initializer/initial_value*
_class

loc:@decay*
dtype0
q
decay/Read/ReadVariableOpReadVariableOpdecay*
_class

loc:@decay*
dtype0*
_output_shapes
: 
А
 beta_1/Initializer/initial_valueConst*
valueB
 *fff?*
_class
loc:@beta_1*
dtype0*
_output_shapes
: 
{
beta_1VarHandleOp*
shared_namebeta_1*
_class
loc:@beta_1*
dtype0*
_output_shapes
: *
shape: 
]
'beta_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpbeta_1*
_output_shapes
: 
s
beta_1/AssignAssignVariableOpbeta_1 beta_1/Initializer/initial_value*
_class
loc:@beta_1*
dtype0
t
beta_1/Read/ReadVariableOpReadVariableOpbeta_1*
_class
loc:@beta_1*
dtype0*
_output_shapes
: 
А
 beta_2/Initializer/initial_valueConst*
valueB
 *w╛?*
_class
loc:@beta_2*
dtype0*
_output_shapes
: 
{
beta_2VarHandleOp*
_output_shapes
: *
shape: *
shared_namebeta_2*
_class
loc:@beta_2*
dtype0
]
'beta_2/IsInitialized/VarIsInitializedOpVarIsInitializedOpbeta_2*
_output_shapes
: 
s
beta_2/AssignAssignVariableOpbeta_2 beta_2/Initializer/initial_value*
_class
loc:@beta_2*
dtype0
t
beta_2/Read/ReadVariableOpReadVariableOpbeta_2*
_class
loc:@beta_2*
dtype0*
_output_shapes
: 
В
!epsilon/Initializer/initial_valueConst*
valueB
 *Х┐╓3*
_class
loc:@epsilon*
dtype0*
_output_shapes
: 
~
epsilonVarHandleOp*
_class
loc:@epsilon*
dtype0*
_output_shapes
: *
shape: *
shared_name	epsilon
_
(epsilon/IsInitialized/VarIsInitializedOpVarIsInitializedOpepsilon*
_output_shapes
: 
w
epsilon/AssignAssignVariableOpepsilon!epsilon/Initializer/initial_value*
dtype0*
_class
loc:@epsilon
w
epsilon/Read/ReadVariableOpReadVariableOpepsilon*
_class
loc:@epsilon*
dtype0*
_output_shapes
: 
`
training/Adam/gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
f
!training/Adam/gradients/grad_ys_0Const*
dtype0*
_output_shapes
: *
valueB
 *  А?
З
training/Adam/gradients/FillFilltraining/Adam/gradients/Shape!training/Adam/gradients/grad_ys_0*
T0*
_output_shapes
: 
З
)training/Adam/gradients/loss/mul_grad/MulMultraining/Adam/gradients/Fillloss/output_loss/value*
_output_shapes
: *
T0
}
+training/Adam/gradients/loss/mul_grad/Mul_1Multraining/Adam/gradients/Fill
loss/mul/x*
T0*
_output_shapes
: 
|
9training/Adam/gradients/loss/output_loss/value_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
~
;training/Adam/gradients/loss/output_loss/value_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
О
Itraining/Adam/gradients/loss/output_loss/value_grad/BroadcastGradientArgsBroadcastGradientArgs9training/Adam/gradients/loss/output_loss/value_grad/Shape;training/Adam/gradients/loss/output_loss/value_grad/Shape_1*2
_output_shapes 
:         :         
о
>training/Adam/gradients/loss/output_loss/value_grad/div_no_nanDivNoNan+training/Adam/gradients/loss/mul_grad/Mul_1loss/output_loss/mul*
T0*
_output_shapes
: 
ъ
7training/Adam/gradients/loss/output_loss/value_grad/SumSum>training/Adam/gradients/loss/output_loss/value_grad/div_no_nanItraining/Adam/gradients/loss/output_loss/value_grad/BroadcastGradientArgs*
T0*
_output_shapes
: 
█
;training/Adam/gradients/loss/output_loss/value_grad/ReshapeReshape7training/Adam/gradients/loss/output_loss/value_grad/Sum9training/Adam/gradients/loss/output_loss/value_grad/Shape*
T0*
_output_shapes
: 
w
7training/Adam/gradients/loss/output_loss/value_grad/NegNegloss/output_loss/Sum_1*
T0*
_output_shapes
: 
╝
@training/Adam/gradients/loss/output_loss/value_grad/div_no_nan_1DivNoNan7training/Adam/gradients/loss/output_loss/value_grad/Negloss/output_loss/mul*
_output_shapes
: *
T0
┼
@training/Adam/gradients/loss/output_loss/value_grad/div_no_nan_2DivNoNan@training/Adam/gradients/loss/output_loss/value_grad/div_no_nan_1loss/output_loss/mul*
_output_shapes
: *
T0
╬
7training/Adam/gradients/loss/output_loss/value_grad/mulMul+training/Adam/gradients/loss/mul_grad/Mul_1@training/Adam/gradients/loss/output_loss/value_grad/div_no_nan_2*
_output_shapes
: *
T0
ч
9training/Adam/gradients/loss/output_loss/value_grad/Sum_1Sum7training/Adam/gradients/loss/output_loss/value_grad/mulKtraining/Adam/gradients/loss/output_loss/value_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
: 
с
=training/Adam/gradients/loss/output_loss/value_grad/Reshape_1Reshape9training/Adam/gradients/loss/output_loss/value_grad/Sum_1;training/Adam/gradients/loss/output_loss/value_grad/Shape_1*
T0*
_output_shapes
: 
Д
Atraining/Adam/gradients/loss/output_loss/Sum_1_grad/Reshape/shapeConst*
dtype0*
_output_shapes
: *
valueB 
ч
;training/Adam/gradients/loss/output_loss/Sum_1_grad/ReshapeReshape;training/Adam/gradients/loss/output_loss/value_grad/ReshapeAtraining/Adam/gradients/loss/output_loss/Sum_1_grad/Reshape/shape*
T0*
_output_shapes
: 
|
9training/Adam/gradients/loss/output_loss/Sum_1_grad/ConstConst*
valueB *
dtype0*
_output_shapes
: 
┘
8training/Adam/gradients/loss/output_loss/Sum_1_grad/TileTile;training/Adam/gradients/loss/output_loss/Sum_1_grad/Reshape9training/Adam/gradients/loss/output_loss/Sum_1_grad/Const*
_output_shapes
: *
T0
Й
?training/Adam/gradients/loss/output_loss/Sum_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
ф
9training/Adam/gradients/loss/output_loss/Sum_grad/ReshapeReshape8training/Adam/gradients/loss/output_loss/Sum_1_grad/Tile?training/Adam/gradients/loss/output_loss/Sum_grad/Reshape/shape*
T0*
_output_shapes
:
Э
7training/Adam/gradients/loss/output_loss/Sum_grad/ShapeShape6loss/output_loss/binary_crossentropy/weighted_loss/Mul*
T0*
_output_shapes
:
р
6training/Adam/gradients/loss/output_loss/Sum_grad/TileTile9training/Adam/gradients/loss/output_loss/Sum_grad/Reshape7training/Adam/gradients/loss/output_loss/Sum_grad/Shape*
T0*#
_output_shapes
:         
▓
Ytraining/Adam/gradients/loss/output_loss/binary_crossentropy/weighted_loss/Mul_grad/ShapeShape)loss/output_loss/binary_crossentropy/Mean*
T0*
_output_shapes
:
╧
[training/Adam/gradients/loss/output_loss/binary_crossentropy/weighted_loss/Mul_grad/Shape_1ShapeDloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights*
T0*
_output_shapes
:
ю
itraining/Adam/gradients/loss/output_loss/binary_crossentropy/weighted_loss/Mul_grad/BroadcastGradientArgsBroadcastGradientArgsYtraining/Adam/gradients/loss/output_loss/binary_crossentropy/weighted_loss/Mul_grad/Shape[training/Adam/gradients/loss/output_loss/binary_crossentropy/weighted_loss/Mul_grad/Shape_1*2
_output_shapes 
:         :         
К
Wtraining/Adam/gradients/loss/output_loss/binary_crossentropy/weighted_loss/Mul_grad/MulMul6training/Adam/gradients/loss/output_loss/Sum_grad/TileDloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights*#
_output_shapes
:         *
T0
┼
Wtraining/Adam/gradients/loss/output_loss/binary_crossentropy/weighted_loss/Mul_grad/SumSumWtraining/Adam/gradients/loss/output_loss/binary_crossentropy/weighted_loss/Mul_grad/Mulitraining/Adam/gradients/loss/output_loss/binary_crossentropy/weighted_loss/Mul_grad/BroadcastGradientArgs*
_output_shapes
:*
T0
╚
[training/Adam/gradients/loss/output_loss/binary_crossentropy/weighted_loss/Mul_grad/ReshapeReshapeWtraining/Adam/gradients/loss/output_loss/binary_crossentropy/weighted_loss/Mul_grad/SumYtraining/Adam/gradients/loss/output_loss/binary_crossentropy/weighted_loss/Mul_grad/Shape*
T0*#
_output_shapes
:         
ё
Ytraining/Adam/gradients/loss/output_loss/binary_crossentropy/weighted_loss/Mul_grad/Mul_1Mul)loss/output_loss/binary_crossentropy/Mean6training/Adam/gradients/loss/output_loss/Sum_grad/Tile*
T0*#
_output_shapes
:         
╦
Ytraining/Adam/gradients/loss/output_loss/binary_crossentropy/weighted_loss/Mul_grad/Sum_1SumYtraining/Adam/gradients/loss/output_loss/binary_crossentropy/weighted_loss/Mul_grad/Mul_1ktraining/Adam/gradients/loss/output_loss/binary_crossentropy/weighted_loss/Mul_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:
╬
]training/Adam/gradients/loss/output_loss/binary_crossentropy/weighted_loss/Mul_grad/Reshape_1ReshapeYtraining/Adam/gradients/loss/output_loss/binary_crossentropy/weighted_loss/Mul_grad/Sum_1[training/Adam/gradients/loss/output_loss/binary_crossentropy/weighted_loss/Mul_grad/Shape_1*
T0*#
_output_shapes
:         
о
Ltraining/Adam/gradients/loss/output_loss/binary_crossentropy/Mean_grad/ShapeShape2loss/output_loss/binary_crossentropy/logistic_loss*
_output_shapes
:*
T0
ю
Ktraining/Adam/gradients/loss/output_loss/binary_crossentropy/Mean_grad/SizeConst*
value	B :*_
_classU
SQloc:@training/Adam/gradients/loss/output_loss/binary_crossentropy/Mean_grad/Shape*
dtype0*
_output_shapes
: 
▌
Jtraining/Adam/gradients/loss/output_loss/binary_crossentropy/Mean_grad/addAdd;loss/output_loss/binary_crossentropy/Mean/reduction_indicesKtraining/Adam/gradients/loss/output_loss/binary_crossentropy/Mean_grad/Size*_
_classU
SQloc:@training/Adam/gradients/loss/output_loss/binary_crossentropy/Mean_grad/Shape*
_output_shapes
: *
T0
ё
Jtraining/Adam/gradients/loss/output_loss/binary_crossentropy/Mean_grad/modFloorModJtraining/Adam/gradients/loss/output_loss/binary_crossentropy/Mean_grad/addKtraining/Adam/gradients/loss/output_loss/binary_crossentropy/Mean_grad/Size*
T0*_
_classU
SQloc:@training/Adam/gradients/loss/output_loss/binary_crossentropy/Mean_grad/Shape*
_output_shapes
: 
Є
Ntraining/Adam/gradients/loss/output_loss/binary_crossentropy/Mean_grad/Shape_1Const*
_output_shapes
: *
valueB *_
_classU
SQloc:@training/Adam/gradients/loss/output_loss/binary_crossentropy/Mean_grad/Shape*
dtype0
ї
Rtraining/Adam/gradients/loss/output_loss/binary_crossentropy/Mean_grad/range/startConst*
value	B : *_
_classU
SQloc:@training/Adam/gradients/loss/output_loss/binary_crossentropy/Mean_grad/Shape*
dtype0*
_output_shapes
: 
ї
Rtraining/Adam/gradients/loss/output_loss/binary_crossentropy/Mean_grad/range/deltaConst*
dtype0*
_output_shapes
: *
value	B :*_
_classU
SQloc:@training/Adam/gradients/loss/output_loss/binary_crossentropy/Mean_grad/Shape
╟
Ltraining/Adam/gradients/loss/output_loss/binary_crossentropy/Mean_grad/rangeRangeRtraining/Adam/gradients/loss/output_loss/binary_crossentropy/Mean_grad/range/startKtraining/Adam/gradients/loss/output_loss/binary_crossentropy/Mean_grad/SizeRtraining/Adam/gradients/loss/output_loss/binary_crossentropy/Mean_grad/range/delta*_
_classU
SQloc:@training/Adam/gradients/loss/output_loss/binary_crossentropy/Mean_grad/Shape*
_output_shapes
:
Ї
Qtraining/Adam/gradients/loss/output_loss/binary_crossentropy/Mean_grad/Fill/valueConst*
value	B :*_
_classU
SQloc:@training/Adam/gradients/loss/output_loss/binary_crossentropy/Mean_grad/Shape*
dtype0*
_output_shapes
: 
°
Ktraining/Adam/gradients/loss/output_loss/binary_crossentropy/Mean_grad/FillFillNtraining/Adam/gradients/loss/output_loss/binary_crossentropy/Mean_grad/Shape_1Qtraining/Adam/gradients/loss/output_loss/binary_crossentropy/Mean_grad/Fill/value*
T0*_
_classU
SQloc:@training/Adam/gradients/loss/output_loss/binary_crossentropy/Mean_grad/Shape*
_output_shapes
: 
й
Ttraining/Adam/gradients/loss/output_loss/binary_crossentropy/Mean_grad/DynamicStitchDynamicStitchLtraining/Adam/gradients/loss/output_loss/binary_crossentropy/Mean_grad/rangeJtraining/Adam/gradients/loss/output_loss/binary_crossentropy/Mean_grad/modLtraining/Adam/gradients/loss/output_loss/binary_crossentropy/Mean_grad/ShapeKtraining/Adam/gradients/loss/output_loss/binary_crossentropy/Mean_grad/Fill*
T0*_
_classU
SQloc:@training/Adam/gradients/loss/output_loss/binary_crossentropy/Mean_grad/Shape*
N*
_output_shapes
:
є
Ptraining/Adam/gradients/loss/output_loss/binary_crossentropy/Mean_grad/Maximum/yConst*
value	B :*_
_classU
SQloc:@training/Adam/gradients/loss/output_loss/binary_crossentropy/Mean_grad/Shape*
dtype0*
_output_shapes
: 
З
Ntraining/Adam/gradients/loss/output_loss/binary_crossentropy/Mean_grad/MaximumMaximumTtraining/Adam/gradients/loss/output_loss/binary_crossentropy/Mean_grad/DynamicStitchPtraining/Adam/gradients/loss/output_loss/binary_crossentropy/Mean_grad/Maximum/y*
T0*_
_classU
SQloc:@training/Adam/gradients/loss/output_loss/binary_crossentropy/Mean_grad/Shape*
_output_shapes
:
 
Otraining/Adam/gradients/loss/output_loss/binary_crossentropy/Mean_grad/floordivFloorDivLtraining/Adam/gradients/loss/output_loss/binary_crossentropy/Mean_grad/ShapeNtraining/Adam/gradients/loss/output_loss/binary_crossentropy/Mean_grad/Maximum*
T0*_
_classU
SQloc:@training/Adam/gradients/loss/output_loss/binary_crossentropy/Mean_grad/Shape*
_output_shapes
:
╟
Ntraining/Adam/gradients/loss/output_loss/binary_crossentropy/Mean_grad/ReshapeReshape[training/Adam/gradients/loss/output_loss/binary_crossentropy/weighted_loss/Mul_grad/ReshapeTtraining/Adam/gradients/loss/output_loss/binary_crossentropy/Mean_grad/DynamicStitch*
T0*0
_output_shapes
:                  
п
Ktraining/Adam/gradients/loss/output_loss/binary_crossentropy/Mean_grad/TileTileNtraining/Adam/gradients/loss/output_loss/binary_crossentropy/Mean_grad/ReshapeOtraining/Adam/gradients/loss/output_loss/binary_crossentropy/Mean_grad/floordiv*0
_output_shapes
:                  *
T0
░
Ntraining/Adam/gradients/loss/output_loss/binary_crossentropy/Mean_grad/Shape_2Shape2loss/output_loss/binary_crossentropy/logistic_loss*
T0*
_output_shapes
:
з
Ntraining/Adam/gradients/loss/output_loss/binary_crossentropy/Mean_grad/Shape_3Shape)loss/output_loss/binary_crossentropy/Mean*
T0*
_output_shapes
:
Ц
Ltraining/Adam/gradients/loss/output_loss/binary_crossentropy/Mean_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:
Т
Ktraining/Adam/gradients/loss/output_loss/binary_crossentropy/Mean_grad/ProdProdNtraining/Adam/gradients/loss/output_loss/binary_crossentropy/Mean_grad/Shape_2Ltraining/Adam/gradients/loss/output_loss/binary_crossentropy/Mean_grad/Const*
T0*
_output_shapes
: 
Ш
Ntraining/Adam/gradients/loss/output_loss/binary_crossentropy/Mean_grad/Const_1Const*
dtype0*
_output_shapes
:*
valueB: 
Ц
Mtraining/Adam/gradients/loss/output_loss/binary_crossentropy/Mean_grad/Prod_1ProdNtraining/Adam/gradients/loss/output_loss/binary_crossentropy/Mean_grad/Shape_3Ntraining/Adam/gradients/loss/output_loss/binary_crossentropy/Mean_grad/Const_1*
_output_shapes
: *
T0
Ф
Rtraining/Adam/gradients/loss/output_loss/binary_crossentropy/Mean_grad/Maximum_1/yConst*
value	B :*
dtype0*
_output_shapes
: 
Я
Ptraining/Adam/gradients/loss/output_loss/binary_crossentropy/Mean_grad/Maximum_1MaximumMtraining/Adam/gradients/loss/output_loss/binary_crossentropy/Mean_grad/Prod_1Rtraining/Adam/gradients/loss/output_loss/binary_crossentropy/Mean_grad/Maximum_1/y*
_output_shapes
: *
T0
Э
Qtraining/Adam/gradients/loss/output_loss/binary_crossentropy/Mean_grad/floordiv_1FloorDivKtraining/Adam/gradients/loss/output_loss/binary_crossentropy/Mean_grad/ProdPtraining/Adam/gradients/loss/output_loss/binary_crossentropy/Mean_grad/Maximum_1*
_output_shapes
: *
T0
╓
Ktraining/Adam/gradients/loss/output_loss/binary_crossentropy/Mean_grad/CastCastQtraining/Adam/gradients/loss/output_loss/binary_crossentropy/Mean_grad/floordiv_1*

SrcT0*
_output_shapes
: *

DstT0
о
Ntraining/Adam/gradients/loss/output_loss/binary_crossentropy/Mean_grad/truedivRealDivKtraining/Adam/gradients/loss/output_loss/binary_crossentropy/Mean_grad/TileKtraining/Adam/gradients/loss/output_loss/binary_crossentropy/Mean_grad/Cast*
T0*0
_output_shapes
:                  
╗
Utraining/Adam/gradients/loss/output_loss/binary_crossentropy/logistic_loss_grad/ShapeShape6loss/output_loss/binary_crossentropy/logistic_loss/sub*
T0*
_output_shapes
:
┐
Wtraining/Adam/gradients/loss/output_loss/binary_crossentropy/logistic_loss_grad/Shape_1Shape8loss/output_loss/binary_crossentropy/logistic_loss/Log1p*
T0*
_output_shapes
:
т
etraining/Adam/gradients/loss/output_loss/binary_crossentropy/logistic_loss_grad/BroadcastGradientArgsBroadcastGradientArgsUtraining/Adam/gradients/loss/output_loss/binary_crossentropy/logistic_loss_grad/ShapeWtraining/Adam/gradients/loss/output_loss/binary_crossentropy/logistic_loss_grad/Shape_1*2
_output_shapes 
:         :         
┤
Straining/Adam/gradients/loss/output_loss/binary_crossentropy/logistic_loss_grad/SumSumNtraining/Adam/gradients/loss/output_loss/binary_crossentropy/Mean_grad/truedivetraining/Adam/gradients/loss/output_loss/binary_crossentropy/logistic_loss_grad/BroadcastGradientArgs*
_output_shapes
:*
T0
╔
Wtraining/Adam/gradients/loss/output_loss/binary_crossentropy/logistic_loss_grad/ReshapeReshapeStraining/Adam/gradients/loss/output_loss/binary_crossentropy/logistic_loss_grad/SumUtraining/Adam/gradients/loss/output_loss/binary_crossentropy/logistic_loss_grad/Shape*
T0*0
_output_shapes
:                  
╕
Utraining/Adam/gradients/loss/output_loss/binary_crossentropy/logistic_loss_grad/Sum_1SumNtraining/Adam/gradients/loss/output_loss/binary_crossentropy/Mean_grad/truedivgtraining/Adam/gradients/loss/output_loss/binary_crossentropy/logistic_loss_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:
╞
Ytraining/Adam/gradients/loss/output_loss/binary_crossentropy/logistic_loss_grad/Reshape_1ReshapeUtraining/Adam/gradients/loss/output_loss/binary_crossentropy/logistic_loss_grad/Sum_1Wtraining/Adam/gradients/loss/output_loss/binary_crossentropy/logistic_loss_grad/Shape_1*
T0*'
_output_shapes
:         
┬
Ytraining/Adam/gradients/loss/output_loss/binary_crossentropy/logistic_loss/sub_grad/ShapeShape9loss/output_loss/binary_crossentropy/logistic_loss/Select*
T0*
_output_shapes
:
┴
[training/Adam/gradients/loss/output_loss/binary_crossentropy/logistic_loss/sub_grad/Shape_1Shape6loss/output_loss/binary_crossentropy/logistic_loss/mul*
T0*
_output_shapes
:
ю
itraining/Adam/gradients/loss/output_loss/binary_crossentropy/logistic_loss/sub_grad/BroadcastGradientArgsBroadcastGradientArgsYtraining/Adam/gradients/loss/output_loss/binary_crossentropy/logistic_loss/sub_grad/Shape[training/Adam/gradients/loss/output_loss/binary_crossentropy/logistic_loss/sub_grad/Shape_1*2
_output_shapes 
:         :         
┼
Wtraining/Adam/gradients/loss/output_loss/binary_crossentropy/logistic_loss/sub_grad/SumSumWtraining/Adam/gradients/loss/output_loss/binary_crossentropy/logistic_loss_grad/Reshapeitraining/Adam/gradients/loss/output_loss/binary_crossentropy/logistic_loss/sub_grad/BroadcastGradientArgs*
T0*
_output_shapes
:
╠
[training/Adam/gradients/loss/output_loss/binary_crossentropy/logistic_loss/sub_grad/ReshapeReshapeWtraining/Adam/gradients/loss/output_loss/binary_crossentropy/logistic_loss/sub_grad/SumYtraining/Adam/gradients/loss/output_loss/binary_crossentropy/logistic_loss/sub_grad/Shape*'
_output_shapes
:         *
T0
╔
Ytraining/Adam/gradients/loss/output_loss/binary_crossentropy/logistic_loss/sub_grad/Sum_1SumWtraining/Adam/gradients/loss/output_loss/binary_crossentropy/logistic_loss_grad/Reshapektraining/Adam/gradients/loss/output_loss/binary_crossentropy/logistic_loss/sub_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0
▄
Wtraining/Adam/gradients/loss/output_loss/binary_crossentropy/logistic_loss/sub_grad/NegNegYtraining/Adam/gradients/loss/output_loss/binary_crossentropy/logistic_loss/sub_grad/Sum_1*
_output_shapes
:*
T0
┘
]training/Adam/gradients/loss/output_loss/binary_crossentropy/logistic_loss/sub_grad/Reshape_1ReshapeWtraining/Adam/gradients/loss/output_loss/binary_crossentropy/logistic_loss/sub_grad/Neg[training/Adam/gradients/loss/output_loss/binary_crossentropy/logistic_loss/sub_grad/Shape_1*
T0*0
_output_shapes
:                  
№
[training/Adam/gradients/loss/output_loss/binary_crossentropy/logistic_loss/Log1p_grad/add/xConstZ^training/Adam/gradients/loss/output_loss/binary_crossentropy/logistic_loss_grad/Reshape_1*
valueB
 *  А?*
dtype0*
_output_shapes
: 
з
Ytraining/Adam/gradients/loss/output_loss/binary_crossentropy/logistic_loss/Log1p_grad/addAdd[training/Adam/gradients/loss/output_loss/binary_crossentropy/logistic_loss/Log1p_grad/add/x6loss/output_loss/binary_crossentropy/logistic_loss/Exp*
T0*'
_output_shapes
:         
√
`training/Adam/gradients/loss/output_loss/binary_crossentropy/logistic_loss/Log1p_grad/Reciprocal
ReciprocalYtraining/Adam/gradients/loss/output_loss/binary_crossentropy/logistic_loss/Log1p_grad/add*
T0*'
_output_shapes
:         
╧
Ytraining/Adam/gradients/loss/output_loss/binary_crossentropy/logistic_loss/Log1p_grad/mulMulYtraining/Adam/gradients/loss/output_loss/binary_crossentropy/logistic_loss_grad/Reshape_1`training/Adam/gradients/loss/output_loss/binary_crossentropy/logistic_loss/Log1p_grad/Reciprocal*'
_output_shapes
:         *
T0
░
atraining/Adam/gradients/loss/output_loss/binary_crossentropy/logistic_loss/Select_grad/zeros_like	ZerosLikeoutput/BiasAdd*
T0*'
_output_shapes
:         
Ъ
]training/Adam/gradients/loss/output_loss/binary_crossentropy/logistic_loss/Select_grad/SelectSelect?loss/output_loss/binary_crossentropy/logistic_loss/GreaterEqual[training/Adam/gradients/loss/output_loss/binary_crossentropy/logistic_loss/sub_grad/Reshapeatraining/Adam/gradients/loss/output_loss/binary_crossentropy/logistic_loss/Select_grad/zeros_like*
T0*'
_output_shapes
:         
Ь
_training/Adam/gradients/loss/output_loss/binary_crossentropy/logistic_loss/Select_grad/Select_1Select?loss/output_loss/binary_crossentropy/logistic_loss/GreaterEqualatraining/Adam/gradients/loss/output_loss/binary_crossentropy/logistic_loss/Select_grad/zeros_like[training/Adam/gradients/loss/output_loss/binary_crossentropy/logistic_loss/sub_grad/Reshape*
T0*'
_output_shapes
:         
Ч
Ytraining/Adam/gradients/loss/output_loss/binary_crossentropy/logistic_loss/mul_grad/ShapeShapeoutput/BiasAdd*
T0*
_output_shapes
:
Ш
[training/Adam/gradients/loss/output_loss/binary_crossentropy/logistic_loss/mul_grad/Shape_1Shapeoutput_target*
_output_shapes
:*
T0
ю
itraining/Adam/gradients/loss/output_loss/binary_crossentropy/logistic_loss/mul_grad/BroadcastGradientArgsBroadcastGradientArgsYtraining/Adam/gradients/loss/output_loss/binary_crossentropy/logistic_loss/mul_grad/Shape[training/Adam/gradients/loss/output_loss/binary_crossentropy/logistic_loss/mul_grad/Shape_1*2
_output_shapes 
:         :         
З
Wtraining/Adam/gradients/loss/output_loss/binary_crossentropy/logistic_loss/mul_grad/MulMul]training/Adam/gradients/loss/output_loss/binary_crossentropy/logistic_loss/sub_grad/Reshape_1output_target*0
_output_shapes
:                  *
T0
┼
Wtraining/Adam/gradients/loss/output_loss/binary_crossentropy/logistic_loss/mul_grad/SumSumWtraining/Adam/gradients/loss/output_loss/binary_crossentropy/logistic_loss/mul_grad/Mulitraining/Adam/gradients/loss/output_loss/binary_crossentropy/logistic_loss/mul_grad/BroadcastGradientArgs*
T0*
_output_shapes
:
╠
[training/Adam/gradients/loss/output_loss/binary_crossentropy/logistic_loss/mul_grad/ReshapeReshapeWtraining/Adam/gradients/loss/output_loss/binary_crossentropy/logistic_loss/mul_grad/SumYtraining/Adam/gradients/loss/output_loss/binary_crossentropy/logistic_loss/mul_grad/Shape*'
_output_shapes
:         *
T0
К
Ytraining/Adam/gradients/loss/output_loss/binary_crossentropy/logistic_loss/mul_grad/Mul_1Muloutput/BiasAdd]training/Adam/gradients/loss/output_loss/binary_crossentropy/logistic_loss/sub_grad/Reshape_1*
T0*0
_output_shapes
:                  
╦
Ytraining/Adam/gradients/loss/output_loss/binary_crossentropy/logistic_loss/mul_grad/Sum_1SumYtraining/Adam/gradients/loss/output_loss/binary_crossentropy/logistic_loss/mul_grad/Mul_1ktraining/Adam/gradients/loss/output_loss/binary_crossentropy/logistic_loss/mul_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:
█
]training/Adam/gradients/loss/output_loss/binary_crossentropy/logistic_loss/mul_grad/Reshape_1ReshapeYtraining/Adam/gradients/loss/output_loss/binary_crossentropy/logistic_loss/mul_grad/Sum_1[training/Adam/gradients/loss/output_loss/binary_crossentropy/logistic_loss/mul_grad/Shape_1*0
_output_shapes
:                  *
T0
г
Wtraining/Adam/gradients/loss/output_loss/binary_crossentropy/logistic_loss/Exp_grad/mulMulYtraining/Adam/gradients/loss/output_loss/binary_crossentropy/logistic_loss/Log1p_grad/mul6loss/output_loss/binary_crossentropy/logistic_loss/Exp*'
_output_shapes
:         *
T0
┌
ctraining/Adam/gradients/loss/output_loss/binary_crossentropy/logistic_loss/Select_1_grad/zeros_like	ZerosLike6loss/output_loss/binary_crossentropy/logistic_loss/Neg*
T0*'
_output_shapes
:         
Ъ
_training/Adam/gradients/loss/output_loss/binary_crossentropy/logistic_loss/Select_1_grad/SelectSelect?loss/output_loss/binary_crossentropy/logistic_loss/GreaterEqualWtraining/Adam/gradients/loss/output_loss/binary_crossentropy/logistic_loss/Exp_grad/mulctraining/Adam/gradients/loss/output_loss/binary_crossentropy/logistic_loss/Select_1_grad/zeros_like*
T0*'
_output_shapes
:         
Ь
atraining/Adam/gradients/loss/output_loss/binary_crossentropy/logistic_loss/Select_1_grad/Select_1Select?loss/output_loss/binary_crossentropy/logistic_loss/GreaterEqualctraining/Adam/gradients/loss/output_loss/binary_crossentropy/logistic_loss/Select_1_grad/zeros_likeWtraining/Adam/gradients/loss/output_loss/binary_crossentropy/logistic_loss/Exp_grad/mul*
T0*'
_output_shapes
:         
ё
Wtraining/Adam/gradients/loss/output_loss/binary_crossentropy/logistic_loss/Neg_grad/NegNeg_training/Adam/gradients/loss/output_loss/binary_crossentropy/logistic_loss/Select_1_grad/Select*
T0*'
_output_shapes
:         
╔
training/Adam/gradients/AddNAddN]training/Adam/gradients/loss/output_loss/binary_crossentropy/logistic_loss/Select_grad/Select[training/Adam/gradients/loss/output_loss/binary_crossentropy/logistic_loss/mul_grad/Reshapeatraining/Adam/gradients/loss/output_loss/binary_crossentropy/logistic_loss/Select_1_grad/Select_1Wtraining/Adam/gradients/loss/output_loss/binary_crossentropy/logistic_loss/Neg_grad/Neg*p
_classf
dbloc:@training/Adam/gradients/loss/output_loss/binary_crossentropy/logistic_loss/Select_grad/Select*
N*'
_output_shapes
:         *
T0
Й
7training/Adam/gradients/output/BiasAdd_grad/BiasAddGradBiasAddGradtraining/Adam/gradients/AddN*
T0*
_output_shapes
:
╝
1training/Adam/gradients/output/MatMul_grad/MatMulMatMultraining/Adam/gradients/AddNoutput/MatMul/ReadVariableOp*'
_output_shapes
:         d*
transpose_b(*
T0
д
3training/Adam/gradients/output/MatMul_grad/MatMul_1MatMuldense3/Relutraining/Adam/gradients/AddN*
T0*
_output_shapes

:d*
transpose_a(
п
1training/Adam/gradients/dense3/Relu_grad/ReluGradReluGrad1training/Adam/gradients/output/MatMul_grad/MatMuldense3/Relu*'
_output_shapes
:         d*
T0
Ю
7training/Adam/gradients/dense3/BiasAdd_grad/BiasAddGradBiasAddGrad1training/Adam/gradients/dense3/Relu_grad/ReluGrad*
T0*
_output_shapes
:d
╤
1training/Adam/gradients/dense3/MatMul_grad/MatMulMatMul1training/Adam/gradients/dense3/Relu_grad/ReluGraddense3/MatMul/ReadVariableOp*
T0*'
_output_shapes
:         d*
transpose_b(
╣
3training/Adam/gradients/dense3/MatMul_grad/MatMul_1MatMuldense2/Relu1training/Adam/gradients/dense3/Relu_grad/ReluGrad*
_output_shapes

:dd*
transpose_a(*
T0
п
1training/Adam/gradients/dense2/Relu_grad/ReluGradReluGrad1training/Adam/gradients/dense3/MatMul_grad/MatMuldense2/Relu*
T0*'
_output_shapes
:         d
Ю
7training/Adam/gradients/dense2/BiasAdd_grad/BiasAddGradBiasAddGrad1training/Adam/gradients/dense2/Relu_grad/ReluGrad*
_output_shapes
:d*
T0
╤
1training/Adam/gradients/dense2/MatMul_grad/MatMulMatMul1training/Adam/gradients/dense2/Relu_grad/ReluGraddense2/MatMul/ReadVariableOp*
transpose_b(*
T0*'
_output_shapes
:         d
╣
3training/Adam/gradients/dense2/MatMul_grad/MatMul_1MatMuldense1/Relu1training/Adam/gradients/dense2/Relu_grad/ReluGrad*
T0*
_output_shapes

:dd*
transpose_a(
п
1training/Adam/gradients/dense1/Relu_grad/ReluGradReluGrad1training/Adam/gradients/dense2/MatMul_grad/MatMuldense1/Relu*'
_output_shapes
:         d*
T0
Ю
7training/Adam/gradients/dense1/BiasAdd_grad/BiasAddGradBiasAddGrad1training/Adam/gradients/dense1/Relu_grad/ReluGrad*
T0*
_output_shapes
:d
╤
1training/Adam/gradients/dense1/MatMul_grad/MatMulMatMul1training/Adam/gradients/dense1/Relu_grad/ReluGraddense1/MatMul/ReadVariableOp*
transpose_b(*
T0*'
_output_shapes
:         #
░
3training/Adam/gradients/dense1/MatMul_grad/MatMul_1MatMulin1training/Adam/gradients/dense1/Relu_grad/ReluGrad*
T0*
_output_shapes

:#d*
transpose_a(
┬
?training/Adam/dense1/kernel/m/Initializer/zeros/shape_as_tensorConst*
valueB"#   d   *0
_class&
$"loc:@training/Adam/dense1/kernel/m*
dtype0*
_output_shapes
:
м
5training/Adam/dense1/kernel/m/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    *0
_class&
$"loc:@training/Adam/dense1/kernel/m
К
/training/Adam/dense1/kernel/m/Initializer/zerosFill?training/Adam/dense1/kernel/m/Initializer/zeros/shape_as_tensor5training/Adam/dense1/kernel/m/Initializer/zeros/Const*
T0*0
_class&
$"loc:@training/Adam/dense1/kernel/m*
_output_shapes

:#d
╚
training/Adam/dense1/kernel/mVarHandleOp*.
shared_nametraining/Adam/dense1/kernel/m*0
_class&
$"loc:@training/Adam/dense1/kernel/m*
dtype0*
_output_shapes
: *
shape
:#d
Л
>training/Adam/dense1/kernel/m/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/dense1/kernel/m*
_output_shapes
: 
╟
$training/Adam/dense1/kernel/m/AssignAssignVariableOptraining/Adam/dense1/kernel/m/training/Adam/dense1/kernel/m/Initializer/zeros*0
_class&
$"loc:@training/Adam/dense1/kernel/m*
dtype0
┴
1training/Adam/dense1/kernel/m/Read/ReadVariableOpReadVariableOptraining/Adam/dense1/kernel/m*
dtype0*
_output_shapes

:#d*0
_class&
$"loc:@training/Adam/dense1/kernel/m
к
-training/Adam/dense1/bias/m/Initializer/zerosConst*
dtype0*
_output_shapes
:d*
valueBd*    *.
_class$
" loc:@training/Adam/dense1/bias/m
╛
training/Adam/dense1/bias/mVarHandleOp*
shape:d*,
shared_nametraining/Adam/dense1/bias/m*.
_class$
" loc:@training/Adam/dense1/bias/m*
dtype0*
_output_shapes
: 
З
<training/Adam/dense1/bias/m/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/dense1/bias/m*
_output_shapes
: 
┐
"training/Adam/dense1/bias/m/AssignAssignVariableOptraining/Adam/dense1/bias/m-training/Adam/dense1/bias/m/Initializer/zeros*.
_class$
" loc:@training/Adam/dense1/bias/m*
dtype0
╖
/training/Adam/dense1/bias/m/Read/ReadVariableOpReadVariableOptraining/Adam/dense1/bias/m*.
_class$
" loc:@training/Adam/dense1/bias/m*
dtype0*
_output_shapes
:d
┬
?training/Adam/dense2/kernel/m/Initializer/zeros/shape_as_tensorConst*
valueB"d   d   *0
_class&
$"loc:@training/Adam/dense2/kernel/m*
dtype0*
_output_shapes
:
м
5training/Adam/dense2/kernel/m/Initializer/zeros/ConstConst*
valueB
 *    *0
_class&
$"loc:@training/Adam/dense2/kernel/m*
dtype0*
_output_shapes
: 
К
/training/Adam/dense2/kernel/m/Initializer/zerosFill?training/Adam/dense2/kernel/m/Initializer/zeros/shape_as_tensor5training/Adam/dense2/kernel/m/Initializer/zeros/Const*
_output_shapes

:dd*
T0*0
_class&
$"loc:@training/Adam/dense2/kernel/m
╚
training/Adam/dense2/kernel/mVarHandleOp*
shape
:dd*.
shared_nametraining/Adam/dense2/kernel/m*0
_class&
$"loc:@training/Adam/dense2/kernel/m*
dtype0*
_output_shapes
: 
Л
>training/Adam/dense2/kernel/m/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/dense2/kernel/m*
_output_shapes
: 
╟
$training/Adam/dense2/kernel/m/AssignAssignVariableOptraining/Adam/dense2/kernel/m/training/Adam/dense2/kernel/m/Initializer/zeros*0
_class&
$"loc:@training/Adam/dense2/kernel/m*
dtype0
┴
1training/Adam/dense2/kernel/m/Read/ReadVariableOpReadVariableOptraining/Adam/dense2/kernel/m*0
_class&
$"loc:@training/Adam/dense2/kernel/m*
dtype0*
_output_shapes

:dd
к
-training/Adam/dense2/bias/m/Initializer/zerosConst*
valueBd*    *.
_class$
" loc:@training/Adam/dense2/bias/m*
dtype0*
_output_shapes
:d
╛
training/Adam/dense2/bias/mVarHandleOp*.
_class$
" loc:@training/Adam/dense2/bias/m*
dtype0*
_output_shapes
: *
shape:d*,
shared_nametraining/Adam/dense2/bias/m
З
<training/Adam/dense2/bias/m/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/dense2/bias/m*
_output_shapes
: 
┐
"training/Adam/dense2/bias/m/AssignAssignVariableOptraining/Adam/dense2/bias/m-training/Adam/dense2/bias/m/Initializer/zeros*.
_class$
" loc:@training/Adam/dense2/bias/m*
dtype0
╖
/training/Adam/dense2/bias/m/Read/ReadVariableOpReadVariableOptraining/Adam/dense2/bias/m*.
_class$
" loc:@training/Adam/dense2/bias/m*
dtype0*
_output_shapes
:d
┬
?training/Adam/dense3/kernel/m/Initializer/zeros/shape_as_tensorConst*
valueB"d   d   *0
_class&
$"loc:@training/Adam/dense3/kernel/m*
dtype0*
_output_shapes
:
м
5training/Adam/dense3/kernel/m/Initializer/zeros/ConstConst*
_output_shapes
: *
valueB
 *    *0
_class&
$"loc:@training/Adam/dense3/kernel/m*
dtype0
К
/training/Adam/dense3/kernel/m/Initializer/zerosFill?training/Adam/dense3/kernel/m/Initializer/zeros/shape_as_tensor5training/Adam/dense3/kernel/m/Initializer/zeros/Const*
T0*0
_class&
$"loc:@training/Adam/dense3/kernel/m*
_output_shapes

:dd
╚
training/Adam/dense3/kernel/mVarHandleOp*
shape
:dd*.
shared_nametraining/Adam/dense3/kernel/m*0
_class&
$"loc:@training/Adam/dense3/kernel/m*
dtype0*
_output_shapes
: 
Л
>training/Adam/dense3/kernel/m/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/dense3/kernel/m*
_output_shapes
: 
╟
$training/Adam/dense3/kernel/m/AssignAssignVariableOptraining/Adam/dense3/kernel/m/training/Adam/dense3/kernel/m/Initializer/zeros*0
_class&
$"loc:@training/Adam/dense3/kernel/m*
dtype0
┴
1training/Adam/dense3/kernel/m/Read/ReadVariableOpReadVariableOptraining/Adam/dense3/kernel/m*0
_class&
$"loc:@training/Adam/dense3/kernel/m*
dtype0*
_output_shapes

:dd
к
-training/Adam/dense3/bias/m/Initializer/zerosConst*
valueBd*    *.
_class$
" loc:@training/Adam/dense3/bias/m*
dtype0*
_output_shapes
:d
╛
training/Adam/dense3/bias/mVarHandleOp*
_output_shapes
: *
shape:d*,
shared_nametraining/Adam/dense3/bias/m*.
_class$
" loc:@training/Adam/dense3/bias/m*
dtype0
З
<training/Adam/dense3/bias/m/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/dense3/bias/m*
_output_shapes
: 
┐
"training/Adam/dense3/bias/m/AssignAssignVariableOptraining/Adam/dense3/bias/m-training/Adam/dense3/bias/m/Initializer/zeros*.
_class$
" loc:@training/Adam/dense3/bias/m*
dtype0
╖
/training/Adam/dense3/bias/m/Read/ReadVariableOpReadVariableOptraining/Adam/dense3/bias/m*.
_class$
" loc:@training/Adam/dense3/bias/m*
dtype0*
_output_shapes
:d
╢
/training/Adam/output/kernel/m/Initializer/zerosConst*
valueBd*    *0
_class&
$"loc:@training/Adam/output/kernel/m*
dtype0*
_output_shapes

:d
╚
training/Adam/output/kernel/mVarHandleOp*.
shared_nametraining/Adam/output/kernel/m*0
_class&
$"loc:@training/Adam/output/kernel/m*
dtype0*
_output_shapes
: *
shape
:d
Л
>training/Adam/output/kernel/m/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/output/kernel/m*
_output_shapes
: 
╟
$training/Adam/output/kernel/m/AssignAssignVariableOptraining/Adam/output/kernel/m/training/Adam/output/kernel/m/Initializer/zeros*0
_class&
$"loc:@training/Adam/output/kernel/m*
dtype0
┴
1training/Adam/output/kernel/m/Read/ReadVariableOpReadVariableOptraining/Adam/output/kernel/m*0
_class&
$"loc:@training/Adam/output/kernel/m*
dtype0*
_output_shapes

:d
к
-training/Adam/output/bias/m/Initializer/zerosConst*
valueB*    *.
_class$
" loc:@training/Adam/output/bias/m*
dtype0*
_output_shapes
:
╛
training/Adam/output/bias/mVarHandleOp*,
shared_nametraining/Adam/output/bias/m*.
_class$
" loc:@training/Adam/output/bias/m*
dtype0*
_output_shapes
: *
shape:
З
<training/Adam/output/bias/m/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/output/bias/m*
_output_shapes
: 
┐
"training/Adam/output/bias/m/AssignAssignVariableOptraining/Adam/output/bias/m-training/Adam/output/bias/m/Initializer/zeros*.
_class$
" loc:@training/Adam/output/bias/m*
dtype0
╖
/training/Adam/output/bias/m/Read/ReadVariableOpReadVariableOptraining/Adam/output/bias/m*.
_class$
" loc:@training/Adam/output/bias/m*
dtype0*
_output_shapes
:
┬
?training/Adam/dense1/kernel/v/Initializer/zeros/shape_as_tensorConst*
valueB"#   d   *0
_class&
$"loc:@training/Adam/dense1/kernel/v*
dtype0*
_output_shapes
:
м
5training/Adam/dense1/kernel/v/Initializer/zeros/ConstConst*
valueB
 *    *0
_class&
$"loc:@training/Adam/dense1/kernel/v*
dtype0*
_output_shapes
: 
К
/training/Adam/dense1/kernel/v/Initializer/zerosFill?training/Adam/dense1/kernel/v/Initializer/zeros/shape_as_tensor5training/Adam/dense1/kernel/v/Initializer/zeros/Const*
_output_shapes

:#d*
T0*0
_class&
$"loc:@training/Adam/dense1/kernel/v
╚
training/Adam/dense1/kernel/vVarHandleOp*
dtype0*
_output_shapes
: *
shape
:#d*.
shared_nametraining/Adam/dense1/kernel/v*0
_class&
$"loc:@training/Adam/dense1/kernel/v
Л
>training/Adam/dense1/kernel/v/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/dense1/kernel/v*
_output_shapes
: 
╟
$training/Adam/dense1/kernel/v/AssignAssignVariableOptraining/Adam/dense1/kernel/v/training/Adam/dense1/kernel/v/Initializer/zeros*0
_class&
$"loc:@training/Adam/dense1/kernel/v*
dtype0
┴
1training/Adam/dense1/kernel/v/Read/ReadVariableOpReadVariableOptraining/Adam/dense1/kernel/v*0
_class&
$"loc:@training/Adam/dense1/kernel/v*
dtype0*
_output_shapes

:#d
к
-training/Adam/dense1/bias/v/Initializer/zerosConst*
valueBd*    *.
_class$
" loc:@training/Adam/dense1/bias/v*
dtype0*
_output_shapes
:d
╛
training/Adam/dense1/bias/vVarHandleOp*
shape:d*,
shared_nametraining/Adam/dense1/bias/v*.
_class$
" loc:@training/Adam/dense1/bias/v*
dtype0*
_output_shapes
: 
З
<training/Adam/dense1/bias/v/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/dense1/bias/v*
_output_shapes
: 
┐
"training/Adam/dense1/bias/v/AssignAssignVariableOptraining/Adam/dense1/bias/v-training/Adam/dense1/bias/v/Initializer/zeros*.
_class$
" loc:@training/Adam/dense1/bias/v*
dtype0
╖
/training/Adam/dense1/bias/v/Read/ReadVariableOpReadVariableOptraining/Adam/dense1/bias/v*.
_class$
" loc:@training/Adam/dense1/bias/v*
dtype0*
_output_shapes
:d
┬
?training/Adam/dense2/kernel/v/Initializer/zeros/shape_as_tensorConst*
valueB"d   d   *0
_class&
$"loc:@training/Adam/dense2/kernel/v*
dtype0*
_output_shapes
:
м
5training/Adam/dense2/kernel/v/Initializer/zeros/ConstConst*
valueB
 *    *0
_class&
$"loc:@training/Adam/dense2/kernel/v*
dtype0*
_output_shapes
: 
К
/training/Adam/dense2/kernel/v/Initializer/zerosFill?training/Adam/dense2/kernel/v/Initializer/zeros/shape_as_tensor5training/Adam/dense2/kernel/v/Initializer/zeros/Const*
T0*0
_class&
$"loc:@training/Adam/dense2/kernel/v*
_output_shapes

:dd
╚
training/Adam/dense2/kernel/vVarHandleOp*.
shared_nametraining/Adam/dense2/kernel/v*0
_class&
$"loc:@training/Adam/dense2/kernel/v*
dtype0*
_output_shapes
: *
shape
:dd
Л
>training/Adam/dense2/kernel/v/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/dense2/kernel/v*
_output_shapes
: 
╟
$training/Adam/dense2/kernel/v/AssignAssignVariableOptraining/Adam/dense2/kernel/v/training/Adam/dense2/kernel/v/Initializer/zeros*
dtype0*0
_class&
$"loc:@training/Adam/dense2/kernel/v
┴
1training/Adam/dense2/kernel/v/Read/ReadVariableOpReadVariableOptraining/Adam/dense2/kernel/v*0
_class&
$"loc:@training/Adam/dense2/kernel/v*
dtype0*
_output_shapes

:dd
к
-training/Adam/dense2/bias/v/Initializer/zerosConst*
valueBd*    *.
_class$
" loc:@training/Adam/dense2/bias/v*
dtype0*
_output_shapes
:d
╛
training/Adam/dense2/bias/vVarHandleOp*
shape:d*,
shared_nametraining/Adam/dense2/bias/v*.
_class$
" loc:@training/Adam/dense2/bias/v*
dtype0*
_output_shapes
: 
З
<training/Adam/dense2/bias/v/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/dense2/bias/v*
_output_shapes
: 
┐
"training/Adam/dense2/bias/v/AssignAssignVariableOptraining/Adam/dense2/bias/v-training/Adam/dense2/bias/v/Initializer/zeros*.
_class$
" loc:@training/Adam/dense2/bias/v*
dtype0
╖
/training/Adam/dense2/bias/v/Read/ReadVariableOpReadVariableOptraining/Adam/dense2/bias/v*
_output_shapes
:d*.
_class$
" loc:@training/Adam/dense2/bias/v*
dtype0
┬
?training/Adam/dense3/kernel/v/Initializer/zeros/shape_as_tensorConst*
valueB"d   d   *0
_class&
$"loc:@training/Adam/dense3/kernel/v*
dtype0*
_output_shapes
:
м
5training/Adam/dense3/kernel/v/Initializer/zeros/ConstConst*
valueB
 *    *0
_class&
$"loc:@training/Adam/dense3/kernel/v*
dtype0*
_output_shapes
: 
К
/training/Adam/dense3/kernel/v/Initializer/zerosFill?training/Adam/dense3/kernel/v/Initializer/zeros/shape_as_tensor5training/Adam/dense3/kernel/v/Initializer/zeros/Const*
_output_shapes

:dd*
T0*0
_class&
$"loc:@training/Adam/dense3/kernel/v
╚
training/Adam/dense3/kernel/vVarHandleOp*0
_class&
$"loc:@training/Adam/dense3/kernel/v*
dtype0*
_output_shapes
: *
shape
:dd*.
shared_nametraining/Adam/dense3/kernel/v
Л
>training/Adam/dense3/kernel/v/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/dense3/kernel/v*
_output_shapes
: 
╟
$training/Adam/dense3/kernel/v/AssignAssignVariableOptraining/Adam/dense3/kernel/v/training/Adam/dense3/kernel/v/Initializer/zeros*
dtype0*0
_class&
$"loc:@training/Adam/dense3/kernel/v
┴
1training/Adam/dense3/kernel/v/Read/ReadVariableOpReadVariableOptraining/Adam/dense3/kernel/v*
dtype0*
_output_shapes

:dd*0
_class&
$"loc:@training/Adam/dense3/kernel/v
к
-training/Adam/dense3/bias/v/Initializer/zerosConst*
valueBd*    *.
_class$
" loc:@training/Adam/dense3/bias/v*
dtype0*
_output_shapes
:d
╛
training/Adam/dense3/bias/vVarHandleOp*.
_class$
" loc:@training/Adam/dense3/bias/v*
dtype0*
_output_shapes
: *
shape:d*,
shared_nametraining/Adam/dense3/bias/v
З
<training/Adam/dense3/bias/v/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/dense3/bias/v*
_output_shapes
: 
┐
"training/Adam/dense3/bias/v/AssignAssignVariableOptraining/Adam/dense3/bias/v-training/Adam/dense3/bias/v/Initializer/zeros*.
_class$
" loc:@training/Adam/dense3/bias/v*
dtype0
╖
/training/Adam/dense3/bias/v/Read/ReadVariableOpReadVariableOptraining/Adam/dense3/bias/v*.
_class$
" loc:@training/Adam/dense3/bias/v*
dtype0*
_output_shapes
:d
╢
/training/Adam/output/kernel/v/Initializer/zerosConst*
valueBd*    *0
_class&
$"loc:@training/Adam/output/kernel/v*
dtype0*
_output_shapes

:d
╚
training/Adam/output/kernel/vVarHandleOp*0
_class&
$"loc:@training/Adam/output/kernel/v*
dtype0*
_output_shapes
: *
shape
:d*.
shared_nametraining/Adam/output/kernel/v
Л
>training/Adam/output/kernel/v/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/output/kernel/v*
_output_shapes
: 
╟
$training/Adam/output/kernel/v/AssignAssignVariableOptraining/Adam/output/kernel/v/training/Adam/output/kernel/v/Initializer/zeros*0
_class&
$"loc:@training/Adam/output/kernel/v*
dtype0
┴
1training/Adam/output/kernel/v/Read/ReadVariableOpReadVariableOptraining/Adam/output/kernel/v*0
_class&
$"loc:@training/Adam/output/kernel/v*
dtype0*
_output_shapes

:d
к
-training/Adam/output/bias/v/Initializer/zerosConst*
valueB*    *.
_class$
" loc:@training/Adam/output/bias/v*
dtype0*
_output_shapes
:
╛
training/Adam/output/bias/vVarHandleOp*.
_class$
" loc:@training/Adam/output/bias/v*
dtype0*
_output_shapes
: *
shape:*,
shared_nametraining/Adam/output/bias/v
З
<training/Adam/output/bias/v/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/output/bias/v*
_output_shapes
: 
┐
"training/Adam/output/bias/v/AssignAssignVariableOptraining/Adam/output/bias/v-training/Adam/output/bias/v/Initializer/zeros*
dtype0*.
_class$
" loc:@training/Adam/output/bias/v
╖
/training/Adam/output/bias/v/Read/ReadVariableOpReadVariableOptraining/Adam/output/bias/v*.
_class$
" loc:@training/Adam/output/bias/v*
dtype0*
_output_shapes
:
В
6training/Adam/Adam/update_dense1/kernel/ReadVariableOpReadVariableOpiter"/device:CPU:0*
dtype0	*
_output_shapes
: 
С
-training/Adam/Adam/update_dense1/kernel/add/yConst*
_output_shapes
: *
value	B	 R* 
_class
loc:@dense1/kernel*
dtype0	
▄
+training/Adam/Adam/update_dense1/kernel/addAdd6training/Adam/Adam/update_dense1/kernel/ReadVariableOp-training/Adam/Adam/update_dense1/kernel/add/y*
_output_shapes
: *
T0	* 
_class
loc:@dense1/kernel
│
,training/Adam/Adam/update_dense1/kernel/CastCast+training/Adam/Adam/update_dense1/kernel/add*
_output_shapes
: *

DstT0*

SrcT0	* 
_class
loc:@dense1/kernel
y
:training/Adam/Adam/update_dense1/kernel/Pow/ReadVariableOpReadVariableOpbeta_1*
dtype0*
_output_shapes
: 
▀
+training/Adam/Adam/update_dense1/kernel/PowPow:training/Adam/Adam/update_dense1/kernel/Pow/ReadVariableOp,training/Adam/Adam/update_dense1/kernel/Cast*
T0* 
_class
loc:@dense1/kernel*
_output_shapes
: 
{
<training/Adam/Adam/update_dense1/kernel/Pow_1/ReadVariableOpReadVariableOpbeta_2*
dtype0*
_output_shapes
: 
у
-training/Adam/Adam/update_dense1/kernel/Pow_1Pow<training/Adam/Adam/update_dense1/kernel/Pow_1/ReadVariableOp,training/Adam/Adam/update_dense1/kernel/Cast*
T0* 
_class
loc:@dense1/kernel*
_output_shapes
: 
О
Htraining/Adam/Adam/update_dense1/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOplearning_rate*
dtype0*
_output_shapes
: 
Й
Jtraining/Adam/Adam/update_dense1/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta_1*
dtype0*
_output_shapes
: 
Й
Jtraining/Adam/Adam/update_dense1/kernel/ResourceApplyAdam/ReadVariableOp_2ReadVariableOpbeta_2*
dtype0*
_output_shapes
: 
К
Jtraining/Adam/Adam/update_dense1/kernel/ResourceApplyAdam/ReadVariableOp_3ReadVariableOpepsilon*
dtype0*
_output_shapes
: 
Ш
9training/Adam/Adam/update_dense1/kernel/ResourceApplyAdamResourceApplyAdamdense1/kerneltraining/Adam/dense1/kernel/mtraining/Adam/dense1/kernel/v+training/Adam/Adam/update_dense1/kernel/Pow-training/Adam/Adam/update_dense1/kernel/Pow_1Htraining/Adam/Adam/update_dense1/kernel/ResourceApplyAdam/ReadVariableOpJtraining/Adam/Adam/update_dense1/kernel/ResourceApplyAdam/ReadVariableOp_1Jtraining/Adam/Adam/update_dense1/kernel/ResourceApplyAdam/ReadVariableOp_2Jtraining/Adam/Adam/update_dense1/kernel/ResourceApplyAdam/ReadVariableOp_33training/Adam/gradients/dense1/MatMul_grad/MatMul_1*
use_locking(*
T0* 
_class
loc:@dense1/kernel
А
4training/Adam/Adam/update_dense1/bias/ReadVariableOpReadVariableOpiter"/device:CPU:0*
dtype0	*
_output_shapes
: 
Н
+training/Adam/Adam/update_dense1/bias/add/yConst*
value	B	 R*
_class
loc:@dense1/bias*
dtype0	*
_output_shapes
: 
╘
)training/Adam/Adam/update_dense1/bias/addAdd4training/Adam/Adam/update_dense1/bias/ReadVariableOp+training/Adam/Adam/update_dense1/bias/add/y*
_output_shapes
: *
T0	*
_class
loc:@dense1/bias
н
*training/Adam/Adam/update_dense1/bias/CastCast)training/Adam/Adam/update_dense1/bias/add*
_output_shapes
: *

DstT0*

SrcT0	*
_class
loc:@dense1/bias
w
8training/Adam/Adam/update_dense1/bias/Pow/ReadVariableOpReadVariableOpbeta_1*
_output_shapes
: *
dtype0
╫
)training/Adam/Adam/update_dense1/bias/PowPow8training/Adam/Adam/update_dense1/bias/Pow/ReadVariableOp*training/Adam/Adam/update_dense1/bias/Cast*
_class
loc:@dense1/bias*
_output_shapes
: *
T0
y
:training/Adam/Adam/update_dense1/bias/Pow_1/ReadVariableOpReadVariableOpbeta_2*
dtype0*
_output_shapes
: 
█
+training/Adam/Adam/update_dense1/bias/Pow_1Pow:training/Adam/Adam/update_dense1/bias/Pow_1/ReadVariableOp*training/Adam/Adam/update_dense1/bias/Cast*
T0*
_class
loc:@dense1/bias*
_output_shapes
: 
М
Ftraining/Adam/Adam/update_dense1/bias/ResourceApplyAdam/ReadVariableOpReadVariableOplearning_rate*
dtype0*
_output_shapes
: 
З
Htraining/Adam/Adam/update_dense1/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta_1*
dtype0*
_output_shapes
: 
З
Htraining/Adam/Adam/update_dense1/bias/ResourceApplyAdam/ReadVariableOp_2ReadVariableOpbeta_2*
dtype0*
_output_shapes
: 
И
Htraining/Adam/Adam/update_dense1/bias/ResourceApplyAdam/ReadVariableOp_3ReadVariableOpepsilon*
_output_shapes
: *
dtype0
Ж
7training/Adam/Adam/update_dense1/bias/ResourceApplyAdamResourceApplyAdamdense1/biastraining/Adam/dense1/bias/mtraining/Adam/dense1/bias/v)training/Adam/Adam/update_dense1/bias/Pow+training/Adam/Adam/update_dense1/bias/Pow_1Ftraining/Adam/Adam/update_dense1/bias/ResourceApplyAdam/ReadVariableOpHtraining/Adam/Adam/update_dense1/bias/ResourceApplyAdam/ReadVariableOp_1Htraining/Adam/Adam/update_dense1/bias/ResourceApplyAdam/ReadVariableOp_2Htraining/Adam/Adam/update_dense1/bias/ResourceApplyAdam/ReadVariableOp_37training/Adam/gradients/dense1/BiasAdd_grad/BiasAddGrad*
use_locking(*
T0*
_class
loc:@dense1/bias
В
6training/Adam/Adam/update_dense2/kernel/ReadVariableOpReadVariableOpiter"/device:CPU:0*
dtype0	*
_output_shapes
: 
С
-training/Adam/Adam/update_dense2/kernel/add/yConst*
value	B	 R* 
_class
loc:@dense2/kernel*
dtype0	*
_output_shapes
: 
▄
+training/Adam/Adam/update_dense2/kernel/addAdd6training/Adam/Adam/update_dense2/kernel/ReadVariableOp-training/Adam/Adam/update_dense2/kernel/add/y*
_output_shapes
: *
T0	* 
_class
loc:@dense2/kernel
│
,training/Adam/Adam/update_dense2/kernel/CastCast+training/Adam/Adam/update_dense2/kernel/add*
_output_shapes
: *

DstT0*

SrcT0	* 
_class
loc:@dense2/kernel
y
:training/Adam/Adam/update_dense2/kernel/Pow/ReadVariableOpReadVariableOpbeta_1*
dtype0*
_output_shapes
: 
▀
+training/Adam/Adam/update_dense2/kernel/PowPow:training/Adam/Adam/update_dense2/kernel/Pow/ReadVariableOp,training/Adam/Adam/update_dense2/kernel/Cast*
T0* 
_class
loc:@dense2/kernel*
_output_shapes
: 
{
<training/Adam/Adam/update_dense2/kernel/Pow_1/ReadVariableOpReadVariableOpbeta_2*
dtype0*
_output_shapes
: 
у
-training/Adam/Adam/update_dense2/kernel/Pow_1Pow<training/Adam/Adam/update_dense2/kernel/Pow_1/ReadVariableOp,training/Adam/Adam/update_dense2/kernel/Cast*
_output_shapes
: *
T0* 
_class
loc:@dense2/kernel
О
Htraining/Adam/Adam/update_dense2/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
Й
Jtraining/Adam/Adam/update_dense2/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta_1*
dtype0*
_output_shapes
: 
Й
Jtraining/Adam/Adam/update_dense2/kernel/ResourceApplyAdam/ReadVariableOp_2ReadVariableOpbeta_2*
dtype0*
_output_shapes
: 
К
Jtraining/Adam/Adam/update_dense2/kernel/ResourceApplyAdam/ReadVariableOp_3ReadVariableOpepsilon*
dtype0*
_output_shapes
: 
Ш
9training/Adam/Adam/update_dense2/kernel/ResourceApplyAdamResourceApplyAdamdense2/kerneltraining/Adam/dense2/kernel/mtraining/Adam/dense2/kernel/v+training/Adam/Adam/update_dense2/kernel/Pow-training/Adam/Adam/update_dense2/kernel/Pow_1Htraining/Adam/Adam/update_dense2/kernel/ResourceApplyAdam/ReadVariableOpJtraining/Adam/Adam/update_dense2/kernel/ResourceApplyAdam/ReadVariableOp_1Jtraining/Adam/Adam/update_dense2/kernel/ResourceApplyAdam/ReadVariableOp_2Jtraining/Adam/Adam/update_dense2/kernel/ResourceApplyAdam/ReadVariableOp_33training/Adam/gradients/dense2/MatMul_grad/MatMul_1*
use_locking(*
T0* 
_class
loc:@dense2/kernel
А
4training/Adam/Adam/update_dense2/bias/ReadVariableOpReadVariableOpiter"/device:CPU:0*
dtype0	*
_output_shapes
: 
Н
+training/Adam/Adam/update_dense2/bias/add/yConst*
value	B	 R*
_class
loc:@dense2/bias*
dtype0	*
_output_shapes
: 
╘
)training/Adam/Adam/update_dense2/bias/addAdd4training/Adam/Adam/update_dense2/bias/ReadVariableOp+training/Adam/Adam/update_dense2/bias/add/y*
T0	*
_class
loc:@dense2/bias*
_output_shapes
: 
н
*training/Adam/Adam/update_dense2/bias/CastCast)training/Adam/Adam/update_dense2/bias/add*

SrcT0	*
_class
loc:@dense2/bias*
_output_shapes
: *

DstT0
w
8training/Adam/Adam/update_dense2/bias/Pow/ReadVariableOpReadVariableOpbeta_1*
dtype0*
_output_shapes
: 
╫
)training/Adam/Adam/update_dense2/bias/PowPow8training/Adam/Adam/update_dense2/bias/Pow/ReadVariableOp*training/Adam/Adam/update_dense2/bias/Cast*
T0*
_class
loc:@dense2/bias*
_output_shapes
: 
y
:training/Adam/Adam/update_dense2/bias/Pow_1/ReadVariableOpReadVariableOpbeta_2*
dtype0*
_output_shapes
: 
█
+training/Adam/Adam/update_dense2/bias/Pow_1Pow:training/Adam/Adam/update_dense2/bias/Pow_1/ReadVariableOp*training/Adam/Adam/update_dense2/bias/Cast*
T0*
_class
loc:@dense2/bias*
_output_shapes
: 
М
Ftraining/Adam/Adam/update_dense2/bias/ResourceApplyAdam/ReadVariableOpReadVariableOplearning_rate*
dtype0*
_output_shapes
: 
З
Htraining/Adam/Adam/update_dense2/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta_1*
dtype0*
_output_shapes
: 
З
Htraining/Adam/Adam/update_dense2/bias/ResourceApplyAdam/ReadVariableOp_2ReadVariableOpbeta_2*
dtype0*
_output_shapes
: 
И
Htraining/Adam/Adam/update_dense2/bias/ResourceApplyAdam/ReadVariableOp_3ReadVariableOpepsilon*
dtype0*
_output_shapes
: 
Ж
7training/Adam/Adam/update_dense2/bias/ResourceApplyAdamResourceApplyAdamdense2/biastraining/Adam/dense2/bias/mtraining/Adam/dense2/bias/v)training/Adam/Adam/update_dense2/bias/Pow+training/Adam/Adam/update_dense2/bias/Pow_1Ftraining/Adam/Adam/update_dense2/bias/ResourceApplyAdam/ReadVariableOpHtraining/Adam/Adam/update_dense2/bias/ResourceApplyAdam/ReadVariableOp_1Htraining/Adam/Adam/update_dense2/bias/ResourceApplyAdam/ReadVariableOp_2Htraining/Adam/Adam/update_dense2/bias/ResourceApplyAdam/ReadVariableOp_37training/Adam/gradients/dense2/BiasAdd_grad/BiasAddGrad*
use_locking(*
T0*
_class
loc:@dense2/bias
В
6training/Adam/Adam/update_dense3/kernel/ReadVariableOpReadVariableOpiter"/device:CPU:0*
dtype0	*
_output_shapes
: 
С
-training/Adam/Adam/update_dense3/kernel/add/yConst*
value	B	 R* 
_class
loc:@dense3/kernel*
dtype0	*
_output_shapes
: 
▄
+training/Adam/Adam/update_dense3/kernel/addAdd6training/Adam/Adam/update_dense3/kernel/ReadVariableOp-training/Adam/Adam/update_dense3/kernel/add/y*
T0	* 
_class
loc:@dense3/kernel*
_output_shapes
: 
│
,training/Adam/Adam/update_dense3/kernel/CastCast+training/Adam/Adam/update_dense3/kernel/add*

SrcT0	* 
_class
loc:@dense3/kernel*
_output_shapes
: *

DstT0
y
:training/Adam/Adam/update_dense3/kernel/Pow/ReadVariableOpReadVariableOpbeta_1*
dtype0*
_output_shapes
: 
▀
+training/Adam/Adam/update_dense3/kernel/PowPow:training/Adam/Adam/update_dense3/kernel/Pow/ReadVariableOp,training/Adam/Adam/update_dense3/kernel/Cast*
T0* 
_class
loc:@dense3/kernel*
_output_shapes
: 
{
<training/Adam/Adam/update_dense3/kernel/Pow_1/ReadVariableOpReadVariableOpbeta_2*
dtype0*
_output_shapes
: 
у
-training/Adam/Adam/update_dense3/kernel/Pow_1Pow<training/Adam/Adam/update_dense3/kernel/Pow_1/ReadVariableOp,training/Adam/Adam/update_dense3/kernel/Cast*
T0* 
_class
loc:@dense3/kernel*
_output_shapes
: 
О
Htraining/Adam/Adam/update_dense3/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
Й
Jtraining/Adam/Adam/update_dense3/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta_1*
dtype0*
_output_shapes
: 
Й
Jtraining/Adam/Adam/update_dense3/kernel/ResourceApplyAdam/ReadVariableOp_2ReadVariableOpbeta_2*
dtype0*
_output_shapes
: 
К
Jtraining/Adam/Adam/update_dense3/kernel/ResourceApplyAdam/ReadVariableOp_3ReadVariableOpepsilon*
dtype0*
_output_shapes
: 
Ш
9training/Adam/Adam/update_dense3/kernel/ResourceApplyAdamResourceApplyAdamdense3/kerneltraining/Adam/dense3/kernel/mtraining/Adam/dense3/kernel/v+training/Adam/Adam/update_dense3/kernel/Pow-training/Adam/Adam/update_dense3/kernel/Pow_1Htraining/Adam/Adam/update_dense3/kernel/ResourceApplyAdam/ReadVariableOpJtraining/Adam/Adam/update_dense3/kernel/ResourceApplyAdam/ReadVariableOp_1Jtraining/Adam/Adam/update_dense3/kernel/ResourceApplyAdam/ReadVariableOp_2Jtraining/Adam/Adam/update_dense3/kernel/ResourceApplyAdam/ReadVariableOp_33training/Adam/gradients/dense3/MatMul_grad/MatMul_1*
use_locking(*
T0* 
_class
loc:@dense3/kernel
А
4training/Adam/Adam/update_dense3/bias/ReadVariableOpReadVariableOpiter"/device:CPU:0*
_output_shapes
: *
dtype0	
Н
+training/Adam/Adam/update_dense3/bias/add/yConst*
_output_shapes
: *
value	B	 R*
_class
loc:@dense3/bias*
dtype0	
╘
)training/Adam/Adam/update_dense3/bias/addAdd4training/Adam/Adam/update_dense3/bias/ReadVariableOp+training/Adam/Adam/update_dense3/bias/add/y*
T0	*
_class
loc:@dense3/bias*
_output_shapes
: 
н
*training/Adam/Adam/update_dense3/bias/CastCast)training/Adam/Adam/update_dense3/bias/add*

SrcT0	*
_class
loc:@dense3/bias*
_output_shapes
: *

DstT0
w
8training/Adam/Adam/update_dense3/bias/Pow/ReadVariableOpReadVariableOpbeta_1*
dtype0*
_output_shapes
: 
╫
)training/Adam/Adam/update_dense3/bias/PowPow8training/Adam/Adam/update_dense3/bias/Pow/ReadVariableOp*training/Adam/Adam/update_dense3/bias/Cast*
T0*
_class
loc:@dense3/bias*
_output_shapes
: 
y
:training/Adam/Adam/update_dense3/bias/Pow_1/ReadVariableOpReadVariableOpbeta_2*
dtype0*
_output_shapes
: 
█
+training/Adam/Adam/update_dense3/bias/Pow_1Pow:training/Adam/Adam/update_dense3/bias/Pow_1/ReadVariableOp*training/Adam/Adam/update_dense3/bias/Cast*
T0*
_class
loc:@dense3/bias*
_output_shapes
: 
М
Ftraining/Adam/Adam/update_dense3/bias/ResourceApplyAdam/ReadVariableOpReadVariableOplearning_rate*
dtype0*
_output_shapes
: 
З
Htraining/Adam/Adam/update_dense3/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta_1*
dtype0*
_output_shapes
: 
З
Htraining/Adam/Adam/update_dense3/bias/ResourceApplyAdam/ReadVariableOp_2ReadVariableOpbeta_2*
dtype0*
_output_shapes
: 
И
Htraining/Adam/Adam/update_dense3/bias/ResourceApplyAdam/ReadVariableOp_3ReadVariableOpepsilon*
_output_shapes
: *
dtype0
Ж
7training/Adam/Adam/update_dense3/bias/ResourceApplyAdamResourceApplyAdamdense3/biastraining/Adam/dense3/bias/mtraining/Adam/dense3/bias/v)training/Adam/Adam/update_dense3/bias/Pow+training/Adam/Adam/update_dense3/bias/Pow_1Ftraining/Adam/Adam/update_dense3/bias/ResourceApplyAdam/ReadVariableOpHtraining/Adam/Adam/update_dense3/bias/ResourceApplyAdam/ReadVariableOp_1Htraining/Adam/Adam/update_dense3/bias/ResourceApplyAdam/ReadVariableOp_2Htraining/Adam/Adam/update_dense3/bias/ResourceApplyAdam/ReadVariableOp_37training/Adam/gradients/dense3/BiasAdd_grad/BiasAddGrad*
use_locking(*
T0*
_class
loc:@dense3/bias
В
6training/Adam/Adam/update_output/kernel/ReadVariableOpReadVariableOpiter"/device:CPU:0*
dtype0	*
_output_shapes
: 
С
-training/Adam/Adam/update_output/kernel/add/yConst*
value	B	 R* 
_class
loc:@output/kernel*
dtype0	*
_output_shapes
: 
▄
+training/Adam/Adam/update_output/kernel/addAdd6training/Adam/Adam/update_output/kernel/ReadVariableOp-training/Adam/Adam/update_output/kernel/add/y*
T0	* 
_class
loc:@output/kernel*
_output_shapes
: 
│
,training/Adam/Adam/update_output/kernel/CastCast+training/Adam/Adam/update_output/kernel/add*

SrcT0	* 
_class
loc:@output/kernel*
_output_shapes
: *

DstT0
y
:training/Adam/Adam/update_output/kernel/Pow/ReadVariableOpReadVariableOpbeta_1*
_output_shapes
: *
dtype0
▀
+training/Adam/Adam/update_output/kernel/PowPow:training/Adam/Adam/update_output/kernel/Pow/ReadVariableOp,training/Adam/Adam/update_output/kernel/Cast*
T0* 
_class
loc:@output/kernel*
_output_shapes
: 
{
<training/Adam/Adam/update_output/kernel/Pow_1/ReadVariableOpReadVariableOpbeta_2*
dtype0*
_output_shapes
: 
у
-training/Adam/Adam/update_output/kernel/Pow_1Pow<training/Adam/Adam/update_output/kernel/Pow_1/ReadVariableOp,training/Adam/Adam/update_output/kernel/Cast*
T0* 
_class
loc:@output/kernel*
_output_shapes
: 
О
Htraining/Adam/Adam/update_output/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOplearning_rate*
dtype0*
_output_shapes
: 
Й
Jtraining/Adam/Adam/update_output/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta_1*
dtype0*
_output_shapes
: 
Й
Jtraining/Adam/Adam/update_output/kernel/ResourceApplyAdam/ReadVariableOp_2ReadVariableOpbeta_2*
dtype0*
_output_shapes
: 
К
Jtraining/Adam/Adam/update_output/kernel/ResourceApplyAdam/ReadVariableOp_3ReadVariableOpepsilon*
dtype0*
_output_shapes
: 
Ш
9training/Adam/Adam/update_output/kernel/ResourceApplyAdamResourceApplyAdamoutput/kerneltraining/Adam/output/kernel/mtraining/Adam/output/kernel/v+training/Adam/Adam/update_output/kernel/Pow-training/Adam/Adam/update_output/kernel/Pow_1Htraining/Adam/Adam/update_output/kernel/ResourceApplyAdam/ReadVariableOpJtraining/Adam/Adam/update_output/kernel/ResourceApplyAdam/ReadVariableOp_1Jtraining/Adam/Adam/update_output/kernel/ResourceApplyAdam/ReadVariableOp_2Jtraining/Adam/Adam/update_output/kernel/ResourceApplyAdam/ReadVariableOp_33training/Adam/gradients/output/MatMul_grad/MatMul_1*
use_locking(*
T0* 
_class
loc:@output/kernel
А
4training/Adam/Adam/update_output/bias/ReadVariableOpReadVariableOpiter"/device:CPU:0*
dtype0	*
_output_shapes
: 
Н
+training/Adam/Adam/update_output/bias/add/yConst*
value	B	 R*
_class
loc:@output/bias*
dtype0	*
_output_shapes
: 
╘
)training/Adam/Adam/update_output/bias/addAdd4training/Adam/Adam/update_output/bias/ReadVariableOp+training/Adam/Adam/update_output/bias/add/y*
T0	*
_class
loc:@output/bias*
_output_shapes
: 
н
*training/Adam/Adam/update_output/bias/CastCast)training/Adam/Adam/update_output/bias/add*
_output_shapes
: *

DstT0*

SrcT0	*
_class
loc:@output/bias
w
8training/Adam/Adam/update_output/bias/Pow/ReadVariableOpReadVariableOpbeta_1*
dtype0*
_output_shapes
: 
╫
)training/Adam/Adam/update_output/bias/PowPow8training/Adam/Adam/update_output/bias/Pow/ReadVariableOp*training/Adam/Adam/update_output/bias/Cast*
T0*
_class
loc:@output/bias*
_output_shapes
: 
y
:training/Adam/Adam/update_output/bias/Pow_1/ReadVariableOpReadVariableOpbeta_2*
dtype0*
_output_shapes
: 
█
+training/Adam/Adam/update_output/bias/Pow_1Pow:training/Adam/Adam/update_output/bias/Pow_1/ReadVariableOp*training/Adam/Adam/update_output/bias/Cast*
_class
loc:@output/bias*
_output_shapes
: *
T0
М
Ftraining/Adam/Adam/update_output/bias/ResourceApplyAdam/ReadVariableOpReadVariableOplearning_rate*
dtype0*
_output_shapes
: 
З
Htraining/Adam/Adam/update_output/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta_1*
dtype0*
_output_shapes
: 
З
Htraining/Adam/Adam/update_output/bias/ResourceApplyAdam/ReadVariableOp_2ReadVariableOpbeta_2*
dtype0*
_output_shapes
: 
И
Htraining/Adam/Adam/update_output/bias/ResourceApplyAdam/ReadVariableOp_3ReadVariableOpepsilon*
dtype0*
_output_shapes
: 
Ж
7training/Adam/Adam/update_output/bias/ResourceApplyAdamResourceApplyAdamoutput/biastraining/Adam/output/bias/mtraining/Adam/output/bias/v)training/Adam/Adam/update_output/bias/Pow+training/Adam/Adam/update_output/bias/Pow_1Ftraining/Adam/Adam/update_output/bias/ResourceApplyAdam/ReadVariableOpHtraining/Adam/Adam/update_output/bias/ResourceApplyAdam/ReadVariableOp_1Htraining/Adam/Adam/update_output/bias/ResourceApplyAdam/ReadVariableOp_2Htraining/Adam/Adam/update_output/bias/ResourceApplyAdam/ReadVariableOp_37training/Adam/gradients/output/BiasAdd_grad/BiasAddGrad*
T0*
_class
loc:@output/bias*
use_locking(
▓
training/Adam/Adam/ConstConst8^training/Adam/Adam/update_dense1/bias/ResourceApplyAdam:^training/Adam/Adam/update_dense1/kernel/ResourceApplyAdam8^training/Adam/Adam/update_dense2/bias/ResourceApplyAdam:^training/Adam/Adam/update_dense2/kernel/ResourceApplyAdam8^training/Adam/Adam/update_dense3/bias/ResourceApplyAdam:^training/Adam/Adam/update_dense3/kernel/ResourceApplyAdam8^training/Adam/Adam/update_output/bias/ResourceApplyAdam:^training/Adam/Adam/update_output/kernel/ResourceApplyAdam*
value	B	 R*
dtype0	*
_output_shapes
: 
j
&training/Adam/Adam/AssignAddVariableOpAssignAddVariableOpitertraining/Adam/Adam/Const*
dtype0	
▀
!training/Adam/Adam/ReadVariableOpReadVariableOpiter'^training/Adam/Adam/AssignAddVariableOp8^training/Adam/Adam/update_dense1/bias/ResourceApplyAdam:^training/Adam/Adam/update_dense1/kernel/ResourceApplyAdam8^training/Adam/Adam/update_dense2/bias/ResourceApplyAdam:^training/Adam/Adam/update_dense2/kernel/ResourceApplyAdam8^training/Adam/Adam/update_dense3/bias/ResourceApplyAdam:^training/Adam/Adam/update_dense3/kernel/ResourceApplyAdam8^training/Adam/Adam/update_output/bias/ResourceApplyAdam:^training/Adam/Adam/update_output/kernel/ResourceApplyAdam*
dtype0	*
_output_shapes
: 
r
training_1/group_depsNoOp	^loss/mul^metrics/binary_accuracy/Mean_2'^training/Adam/Adam/AssignAddVariableOp
W
Const_1Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
W
Const_2Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
W
Const_3Const"/device:CPU:0*
dtype0*
_output_shapes
: *
valueB B 
W
Const_4Const"/device:CPU:0*
dtype0*
_output_shapes
: *
valueB B 
W
Const_5Const"/device:CPU:0*
dtype0*
_output_shapes
: *
valueB B 
W
Const_6Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
O
VarIsInitializedOpVarIsInitializedOpdense3/kernel*
_output_shapes
: 
O
VarIsInitializedOp_1VarIsInitializedOpdense3/bias*
_output_shapes
: 
I
VarIsInitializedOp_2VarIsInitializedOpdecay*
_output_shapes
: 
a
VarIsInitializedOp_3VarIsInitializedOptraining/Adam/dense1/kernel/m*
_output_shapes
: 
O
VarIsInitializedOp_4VarIsInitializedOpdense2/bias*
_output_shapes
: 
O
VarIsInitializedOp_5VarIsInitializedOpoutput/bias*
_output_shapes
: 
O
VarIsInitializedOp_6VarIsInitializedOpdense1/bias*
_output_shapes
: 
_
VarIsInitializedOp_7VarIsInitializedOptraining/Adam/dense1/bias/m*
_output_shapes
: 
J
VarIsInitializedOp_8VarIsInitializedOpbeta_2*
_output_shapes
: 
_
VarIsInitializedOp_9VarIsInitializedOptraining/Adam/dense2/bias/v*
_output_shapes
: 
b
VarIsInitializedOp_10VarIsInitializedOptraining/Adam/dense2/kernel/m*
_output_shapes
: 
`
VarIsInitializedOp_11VarIsInitializedOptraining/Adam/dense2/bias/m*
_output_shapes
: 
R
VarIsInitializedOp_12VarIsInitializedOpoutput/kernel*
_output_shapes
: 
b
VarIsInitializedOp_13VarIsInitializedOptraining/Adam/dense3/kernel/m*
_output_shapes
: 
R
VarIsInitializedOp_14VarIsInitializedOpdense2/kernel*
_output_shapes
: 
`
VarIsInitializedOp_15VarIsInitializedOptraining/Adam/dense3/bias/m*
_output_shapes
: 
J
VarIsInitializedOp_16VarIsInitializedOptotal*
_output_shapes
: 
R
VarIsInitializedOp_17VarIsInitializedOpdense1/kernel*
_output_shapes
: 
b
VarIsInitializedOp_18VarIsInitializedOptraining/Adam/output/kernel/m*
_output_shapes
: 
`
VarIsInitializedOp_19VarIsInitializedOptraining/Adam/output/bias/m*
_output_shapes
: 
b
VarIsInitializedOp_20VarIsInitializedOptraining/Adam/dense1/kernel/v*
_output_shapes
: 
K
VarIsInitializedOp_21VarIsInitializedOpbeta_1*
_output_shapes
: 
`
VarIsInitializedOp_22VarIsInitializedOptraining/Adam/dense1/bias/v*
_output_shapes
: 
L
VarIsInitializedOp_23VarIsInitializedOpepsilon*
_output_shapes
: 
b
VarIsInitializedOp_24VarIsInitializedOptraining/Adam/dense2/kernel/v*
_output_shapes
: 
I
VarIsInitializedOp_25VarIsInitializedOpiter*
_output_shapes
: 
b
VarIsInitializedOp_26VarIsInitializedOptraining/Adam/output/kernel/v*
_output_shapes
: 
`
VarIsInitializedOp_27VarIsInitializedOptraining/Adam/output/bias/v*
_output_shapes
: 
J
VarIsInitializedOp_28VarIsInitializedOpcount*
_output_shapes
: 
b
VarIsInitializedOp_29VarIsInitializedOptraining/Adam/dense3/kernel/v*
_output_shapes
: 
`
VarIsInitializedOp_30VarIsInitializedOptraining/Adam/dense3/bias/v*
_output_shapes
: 
R
VarIsInitializedOp_31VarIsInitializedOplearning_rate*
_output_shapes
: 
Ц
	init/NoOpNoOp^beta_1/Assign^beta_2/Assign^count/Assign^decay/Assign^dense1/bias/Assign^dense1/kernel/Assign^dense2/bias/Assign^dense2/kernel/Assign^dense3/bias/Assign^dense3/kernel/Assign^epsilon/Assign^learning_rate/Assign^output/bias/Assign^output/kernel/Assign^total/Assign#^training/Adam/dense1/bias/m/Assign#^training/Adam/dense1/bias/v/Assign%^training/Adam/dense1/kernel/m/Assign%^training/Adam/dense1/kernel/v/Assign#^training/Adam/dense2/bias/m/Assign#^training/Adam/dense2/bias/v/Assign%^training/Adam/dense2/kernel/m/Assign%^training/Adam/dense2/kernel/v/Assign#^training/Adam/dense3/bias/m/Assign#^training/Adam/dense3/bias/v/Assign%^training/Adam/dense3/kernel/m/Assign%^training/Adam/dense3/kernel/v/Assign#^training/Adam/output/bias/m/Assign#^training/Adam/output/bias/v/Assign%^training/Adam/output/kernel/m/Assign%^training/Adam/output/kernel/v/Assign
0
init/NoOp_1NoOp^iter/Assign"/device:CPU:0
&
initNoOp
^init/NoOp^init/NoOp_1
W
Const_7Const"/device:CPU:0*
_output_shapes
: *
valueB B *
dtype0
\
Const_8Const"/device:CPU:0*
valueB Bmodel*
dtype0*
_output_shapes
: 
W
Const_9Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
X
Const_10Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
X
Const_11Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
└
RestoreV2/tensor_namesConst"/device:CPU:0*g
value^B\BRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
r
RestoreV2/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Н
	RestoreV2	RestoreV2Const_8RestoreV2/tensor_namesRestoreV2/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
B
IdentityIdentity	RestoreV2*
_output_shapes
:*
T0
Z
AssignVariableOpAssignVariableOptraining/Adam/dense1/kernel/mIdentity*
dtype0
┬
RestoreV2_1/tensor_namesConst"/device:CPU:0*g
value^B\BRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
У
RestoreV2_1	RestoreV2Const_8RestoreV2_1/tensor_namesRestoreV2_1/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
F

Identity_1IdentityRestoreV2_1*
T0*
_output_shapes
:
^
AssignVariableOp_1AssignVariableOptraining/Adam/dense1/kernel/v
Identity_1*
dtype0
└
RestoreV2_2/tensor_namesConst"/device:CPU:0*e
value\BZBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_2/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
У
RestoreV2_2	RestoreV2Const_8RestoreV2_2/tensor_namesRestoreV2_2/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
F

Identity_2IdentityRestoreV2_2*
T0*
_output_shapes
:
\
AssignVariableOp_2AssignVariableOptraining/Adam/dense1/bias/m
Identity_2*
dtype0
└
RestoreV2_3/tensor_namesConst"/device:CPU:0*e
value\BZBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_3/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
У
RestoreV2_3	RestoreV2Const_8RestoreV2_3/tensor_namesRestoreV2_3/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
F

Identity_3IdentityRestoreV2_3*
T0*
_output_shapes
:
\
AssignVariableOp_3AssignVariableOptraining/Adam/dense1/bias/v
Identity_3*
dtype0
X
Const_12Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
┬
RestoreV2_4/tensor_namesConst"/device:CPU:0*g
value^B\BRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_4/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
У
RestoreV2_4	RestoreV2Const_8RestoreV2_4/tensor_namesRestoreV2_4/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
F

Identity_4IdentityRestoreV2_4*
_output_shapes
:*
T0
^
AssignVariableOp_4AssignVariableOptraining/Adam/dense2/kernel/m
Identity_4*
dtype0
┬
RestoreV2_5/tensor_namesConst"/device:CPU:0*g
value^B\BRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_5/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
valueB
B *
dtype0
У
RestoreV2_5	RestoreV2Const_8RestoreV2_5/tensor_namesRestoreV2_5/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
F

Identity_5IdentityRestoreV2_5*
T0*
_output_shapes
:
^
AssignVariableOp_5AssignVariableOptraining/Adam/dense2/kernel/v
Identity_5*
dtype0
└
RestoreV2_6/tensor_namesConst"/device:CPU:0*e
value\BZBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_6/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
У
RestoreV2_6	RestoreV2Const_8RestoreV2_6/tensor_namesRestoreV2_6/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
F

Identity_6IdentityRestoreV2_6*
T0*
_output_shapes
:
\
AssignVariableOp_6AssignVariableOptraining/Adam/dense2/bias/m
Identity_6*
dtype0
└
RestoreV2_7/tensor_namesConst"/device:CPU:0*e
value\BZBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_7/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
valueB
B *
dtype0
У
RestoreV2_7	RestoreV2Const_8RestoreV2_7/tensor_namesRestoreV2_7/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
F

Identity_7IdentityRestoreV2_7*
T0*
_output_shapes
:
\
AssignVariableOp_7AssignVariableOptraining/Adam/dense2/bias/v
Identity_7*
dtype0
X
Const_13Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
┬
RestoreV2_8/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*g
value^B\BRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
t
RestoreV2_8/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
У
RestoreV2_8	RestoreV2Const_8RestoreV2_8/tensor_namesRestoreV2_8/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
F

Identity_8IdentityRestoreV2_8*
_output_shapes
:*
T0
^
AssignVariableOp_8AssignVariableOptraining/Adam/dense3/kernel/m
Identity_8*
dtype0
┬
RestoreV2_9/tensor_namesConst"/device:CPU:0*
_output_shapes
:*g
value^B\BRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
dtype0
t
RestoreV2_9/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
У
RestoreV2_9	RestoreV2Const_8RestoreV2_9/tensor_namesRestoreV2_9/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
F

Identity_9IdentityRestoreV2_9*
T0*
_output_shapes
:
^
AssignVariableOp_9AssignVariableOptraining/Adam/dense3/kernel/v
Identity_9*
dtype0
┴
RestoreV2_10/tensor_namesConst"/device:CPU:0*e
value\BZBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_10/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ц
RestoreV2_10	RestoreV2Const_8RestoreV2_10/tensor_namesRestoreV2_10/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_10IdentityRestoreV2_10*
_output_shapes
:*
T0
^
AssignVariableOp_10AssignVariableOptraining/Adam/dense3/bias/mIdentity_10*
dtype0
┴
RestoreV2_11/tensor_namesConst"/device:CPU:0*e
value\BZBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_11/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ц
RestoreV2_11	RestoreV2Const_8RestoreV2_11/tensor_namesRestoreV2_11/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_11IdentityRestoreV2_11*
T0*
_output_shapes
:
^
AssignVariableOp_11AssignVariableOptraining/Adam/dense3/bias/vIdentity_11*
dtype0
X
Const_14Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
├
RestoreV2_12/tensor_namesConst"/device:CPU:0*g
value^B\BRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_12/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ц
RestoreV2_12	RestoreV2Const_8RestoreV2_12/tensor_namesRestoreV2_12/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_12IdentityRestoreV2_12*
T0*
_output_shapes
:
`
AssignVariableOp_12AssignVariableOptraining/Adam/output/kernel/mIdentity_12*
dtype0
├
RestoreV2_13/tensor_namesConst"/device:CPU:0*g
value^B\BRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_13/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ц
RestoreV2_13	RestoreV2Const_8RestoreV2_13/tensor_namesRestoreV2_13/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_13IdentityRestoreV2_13*
_output_shapes
:*
T0
`
AssignVariableOp_13AssignVariableOptraining/Adam/output/kernel/vIdentity_13*
dtype0
┴
RestoreV2_14/tensor_namesConst"/device:CPU:0*e
value\BZBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_14/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
Ц
RestoreV2_14	RestoreV2Const_8RestoreV2_14/tensor_namesRestoreV2_14/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_14IdentityRestoreV2_14*
T0*
_output_shapes
:
^
AssignVariableOp_14AssignVariableOptraining/Adam/output/bias/mIdentity_14*
dtype0
┴
RestoreV2_15/tensor_namesConst"/device:CPU:0*e
value\BZBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_15/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ц
RestoreV2_15	RestoreV2Const_8RestoreV2_15/tensor_namesRestoreV2_15/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_15IdentityRestoreV2_15*
_output_shapes
:*
T0
^
AssignVariableOp_15AssignVariableOptraining/Adam/output/bias/vIdentity_15*
dtype0
X
Const_15Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
з
RestoreV2_16/tensor_namesConst"/device:CPU:0*K
valueBB@B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_16/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ц
RestoreV2_16	RestoreV2Const_8RestoreV2_16/tensor_namesRestoreV2_16/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
H
Identity_16IdentityRestoreV2_16*
T0*
_output_shapes
:
P
AssignVariableOp_16AssignVariableOpdense1/kernelIdentity_16*
dtype0
е
RestoreV2_17/tensor_namesConst"/device:CPU:0*I
value@B>B4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_17/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ц
RestoreV2_17	RestoreV2Const_8RestoreV2_17/tensor_namesRestoreV2_17/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_17IdentityRestoreV2_17*
T0*
_output_shapes
:
N
AssignVariableOp_17AssignVariableOpdense1/biasIdentity_17*
dtype0
з
RestoreV2_18/tensor_namesConst"/device:CPU:0*K
valueBB@B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_18/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
Ц
RestoreV2_18	RestoreV2Const_8RestoreV2_18/tensor_namesRestoreV2_18/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_18IdentityRestoreV2_18*
T0*
_output_shapes
:
P
AssignVariableOp_18AssignVariableOpdense2/kernelIdentity_18*
dtype0
е
RestoreV2_19/tensor_namesConst"/device:CPU:0*I
value@B>B4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_19/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ц
RestoreV2_19	RestoreV2Const_8RestoreV2_19/tensor_namesRestoreV2_19/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
H
Identity_19IdentityRestoreV2_19*
_output_shapes
:*
T0
N
AssignVariableOp_19AssignVariableOpdense2/biasIdentity_19*
dtype0
з
RestoreV2_20/tensor_namesConst"/device:CPU:0*K
valueBB@B6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_20/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ц
RestoreV2_20	RestoreV2Const_8RestoreV2_20/tensor_namesRestoreV2_20/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_20IdentityRestoreV2_20*
T0*
_output_shapes
:
P
AssignVariableOp_20AssignVariableOpdense3/kernelIdentity_20*
dtype0
е
RestoreV2_21/tensor_namesConst"/device:CPU:0*I
value@B>B4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_21/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ц
RestoreV2_21	RestoreV2Const_8RestoreV2_21/tensor_namesRestoreV2_21/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_21IdentityRestoreV2_21*
T0*
_output_shapes
:
N
AssignVariableOp_21AssignVariableOpdense3/biasIdentity_21*
dtype0
з
RestoreV2_22/tensor_namesConst"/device:CPU:0*K
valueBB@B6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_22/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ц
RestoreV2_22	RestoreV2Const_8RestoreV2_22/tensor_namesRestoreV2_22/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_22IdentityRestoreV2_22*
T0*
_output_shapes
:
P
AssignVariableOp_22AssignVariableOpoutput/kernelIdentity_22*
dtype0
е
RestoreV2_23/tensor_namesConst"/device:CPU:0*I
value@B>B4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_23/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ц
RestoreV2_23	RestoreV2Const_8RestoreV2_23/tensor_namesRestoreV2_23/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_23IdentityRestoreV2_23*
_output_shapes
:*
T0
N
AssignVariableOp_23AssignVariableOpoutput/biasIdentity_23*
dtype0
Ъ
RestoreV2_24/tensor_namesConst"/device:CPU:0*>
value5B3B)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_24/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ц
RestoreV2_24	RestoreV2Const_8RestoreV2_24/tensor_namesRestoreV2_24/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2	
W
Identity_24IdentityRestoreV2_24"/device:CPU:0*
T0	*
_output_shapes
:
V
AssignVariableOp_24AssignVariableOpiterIdentity_24"/device:CPU:0*
dtype0	
г
RestoreV2_25/tensor_namesConst"/device:CPU:0*G
value>B<B2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_25/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ц
RestoreV2_25	RestoreV2Const_8RestoreV2_25/tensor_namesRestoreV2_25/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_25IdentityRestoreV2_25*
_output_shapes
:*
T0
P
AssignVariableOp_25AssignVariableOplearning_rateIdentity_25*
dtype0
Ы
RestoreV2_26/tensor_namesConst"/device:CPU:0*?
value6B4B*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_26/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ц
RestoreV2_26	RestoreV2Const_8RestoreV2_26/tensor_namesRestoreV2_26/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_26IdentityRestoreV2_26*
T0*
_output_shapes
:
H
AssignVariableOp_26AssignVariableOpdecayIdentity_26*
dtype0
Ь
RestoreV2_27/tensor_namesConst"/device:CPU:0*@
value7B5B+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_27/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ц
RestoreV2_27	RestoreV2Const_8RestoreV2_27/tensor_namesRestoreV2_27/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_27IdentityRestoreV2_27*
_output_shapes
:*
T0
I
AssignVariableOp_27AssignVariableOpbeta_1Identity_27*
dtype0
Ь
RestoreV2_28/tensor_namesConst"/device:CPU:0*
_output_shapes
:*@
value7B5B+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
dtype0
u
RestoreV2_28/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
valueB
B *
dtype0
Ц
RestoreV2_28	RestoreV2Const_8RestoreV2_28/tensor_namesRestoreV2_28/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
H
Identity_28IdentityRestoreV2_28*
_output_shapes
:*
T0
I
AssignVariableOp_28AssignVariableOpbeta_2Identity_28*
dtype0
Э
RestoreV2_29/tensor_namesConst"/device:CPU:0*A
value8B6B,optimizer/epsilon/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_29/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ц
RestoreV2_29	RestoreV2Const_8RestoreV2_29/tensor_namesRestoreV2_29/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_29IdentityRestoreV2_29*
T0*
_output_shapes
:
J
AssignVariableOp_29AssignVariableOpepsilonIdentity_29*
dtype0
X
Const_16Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
X
Const_17Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
╠
SaveV2/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:&*ї
valueыBш&B/.ATTRIBUTES/OBJECT_CONFIG_JSONB&layer-0/.ATTRIBUTES/OBJECT_CONFIG_JSONB3layer_with_weights-0/.ATTRIBUTES/OBJECT_CONFIG_JSONB3layer_with_weights-1/.ATTRIBUTES/OBJECT_CONFIG_JSONB3layer_with_weights-2/.ATTRIBUTES/OBJECT_CONFIG_JSONB3layer_with_weights-3/.ATTRIBUTES/OBJECT_CONFIG_JSONB(optimizer/.ATTRIBUTES/OBJECT_CONFIG_JSONB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB,optimizer/epsilon/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
╣
SaveV2/shape_and_slicesConst"/device:CPU:0*_
valueVBT&B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:&
╣
SaveV2SaveV2Const_17SaveV2/tensor_namesSaveV2/shape_and_slicesConst_9Const_10Const_11Const_12Const_13Const_14Const_15!dense1/kernel/Read/ReadVariableOpdense1/bias/Read/ReadVariableOp!dense2/kernel/Read/ReadVariableOpdense2/bias/Read/ReadVariableOp!dense3/kernel/Read/ReadVariableOpdense3/bias/Read/ReadVariableOp!output/kernel/Read/ReadVariableOpoutput/bias/Read/ReadVariableOpiter/Read/ReadVariableOp!learning_rate/Read/ReadVariableOpdecay/Read/ReadVariableOpbeta_1/Read/ReadVariableOpbeta_2/Read/ReadVariableOpepsilon/Read/ReadVariableOp1training/Adam/dense1/kernel/m/Read/ReadVariableOp/training/Adam/dense1/bias/m/Read/ReadVariableOp1training/Adam/dense2/kernel/m/Read/ReadVariableOp/training/Adam/dense2/bias/m/Read/ReadVariableOp1training/Adam/dense3/kernel/m/Read/ReadVariableOp/training/Adam/dense3/bias/m/Read/ReadVariableOp1training/Adam/output/kernel/m/Read/ReadVariableOp/training/Adam/output/bias/m/Read/ReadVariableOp1training/Adam/dense1/kernel/v/Read/ReadVariableOp/training/Adam/dense1/bias/v/Read/ReadVariableOp1training/Adam/dense2/kernel/v/Read/ReadVariableOp/training/Adam/dense2/bias/v/Read/ReadVariableOp1training/Adam/dense3/kernel/v/Read/ReadVariableOp/training/Adam/dense3/bias/v/Read/ReadVariableOp1training/Adam/output/kernel/v/Read/ReadVariableOp/training/Adam/output/bias/v/Read/ReadVariableOpConst_16"/device:CPU:0*4
dtypes*
(2&	
Z
Identity_30IdentityConst_17^SaveV2"/device:CPU:0*
_output_shapes
: *
T0
z
total_1/Initializer/zerosConst*
dtype0*
_output_shapes
: *
valueB
 *    *
_class
loc:@total_1
~
total_1VarHandleOp*
shared_name	total_1*
_class
loc:@total_1*
dtype0*
_output_shapes
: *
shape: 
_
(total_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptotal_1*
_output_shapes
: 
o
total_1/AssignAssignVariableOptotal_1total_1/Initializer/zeros*
_class
loc:@total_1*
dtype0
w
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_class
loc:@total_1*
dtype0*
_output_shapes
: 
z
count_1/Initializer/zerosConst*
valueB
 *    *
_class
loc:@count_1*
dtype0*
_output_shapes
: 
~
count_1VarHandleOp*
shared_name	count_1*
_class
loc:@count_1*
dtype0*
_output_shapes
: *
shape: 
_
(count_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpcount_1*
_output_shapes
: 
o
count_1/AssignAssignVariableOpcount_1count_1/Initializer/zeros*
_class
loc:@count_1*
dtype0
w
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_class
loc:@count_1*
dtype0*
_output_shapes
: 
K
Const_18Const*
_output_shapes
: *
valueB *
dtype0
U
SumSummetrics/binary_accuracy/Mean_2Const_18*
T0*
_output_shapes
: 
E
AssignAddVariableOpAssignAddVariableOptotal_1Sum*
dtype0
j
ReadVariableOpReadVariableOptotal_1^AssignAddVariableOp^Sum*
dtype0*
_output_shapes
: 
F
SizeConst*
value	B :*
dtype0*
_output_shapes
: 
B
CastCastSize*

SrcT0*
_output_shapes
: *

DstT0
^
AssignAddVariableOp_1AssignAddVariableOpcount_1Cast^AssignAddVariableOp*
dtype0
~
ReadVariableOp_1ReadVariableOpcount_1^AssignAddVariableOp^AssignAddVariableOp_1*
dtype0*
_output_shapes
: 
q
div_no_nan/ReadVariableOpReadVariableOptotal_1^AssignAddVariableOp_1*
dtype0*
_output_shapes
: 
s
div_no_nan/ReadVariableOp_1ReadVariableOpcount_1^AssignAddVariableOp_1*
dtype0*
_output_shapes
: 
o

div_no_nanDivNoNandiv_no_nan/ReadVariableOpdiv_no_nan/ReadVariableOp_1*
T0*
_output_shapes
: 
D
Identity_31Identity
div_no_nan*
T0*
_output_shapes
: 
[
div_no_nan_1/ReadVariableOpReadVariableOptotal_1*
dtype0*
_output_shapes
: 
]
div_no_nan_1/ReadVariableOp_1ReadVariableOpcount_1*
dtype0*
_output_shapes
: 
u
div_no_nan_1DivNoNandiv_no_nan_1/ReadVariableOpdiv_no_nan_1/ReadVariableOp_1*
T0*
_output_shapes
: 
F
Identity_32Identitydiv_no_nan_1*
T0*
_output_shapes
: 
l
metric_op_wrapperConst^AssignAddVariableOp_1*
valueB *
dtype0*
_output_shapes
: 
Y
save/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
n
save/filenamePlaceholderWithDefaultsave/filename/input*
dtype0*
_output_shapes
: *
shape: 
e

save/ConstPlaceholderWithDefaultsave/filename*
dtype0*
_output_shapes
: *
shape: 
№
save/Const_1Const*
dtype0*
_output_shapes
: *┐
value╡B▓ Bл{"class_name": "Model", "config": {"input_layers": ["in", 0, 0], "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": [null, 35], "dtype": "float32", "name": "in", "sparse": false}, "inbound_nodes": [], "name": "in"}, {"class_name": "Dense", "config": {"activation": "relu", "activity_regularizer": null, "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {}}, "bias_regularizer": null, "dtype": "float32", "kernel_constraint": null, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "kernel_regularizer": null, "name": "dense1", "trainable": true, "units": 100, "use_bias": true}, "inbound_nodes": [["in", 0, 0, {}]], "name": "dense1"}, {"class_name": "Dense", "config": {"activation": "relu", "activity_regularizer": null, "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {}}, "bias_regularizer": null, "dtype": "float32", "kernel_constraint": null, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "kernel_regularizer": null, "name": "dense2", "trainable": true, "units": 100, "use_bias": true}, "inbound_nodes": [["dense1", 0, 0, {}]], "name": "dense2"}, {"class_name": "Dense", "config": {"activation": "relu", "activity_regularizer": null, "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {}}, "bias_regularizer": null, "dtype": "float32", "kernel_constraint": null, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "kernel_regularizer": null, "name": "dense3", "trainable": true, "units": 100, "use_bias": true}, "inbound_nodes": [["dense2", 0, 0, {}]], "name": "dense3"}, {"class_name": "Dense", "config": {"activation": "sigmoid", "activity_regularizer": null, "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {}}, "bias_regularizer": null, "dtype": "float32", "kernel_constraint": null, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "kernel_regularizer": null, "name": "output", "trainable": true, "units": 1, "use_bias": true}, "inbound_nodes": [["dense3", 0, 0, {}]], "name": "output"}], "name": "model", "output_layers": ["output", 0, 0]}}
╠
save/Const_2Const*
_output_shapes
: *П
valueЕBВ B|{"class_name": "InputLayer", "config": {"batch_input_shape": [null, 35], "dtype": "float32", "name": "in", "sparse": false}}*
dtype0
ў
save/Const_3Const*║
value░Bн Bж{"class_name": "Dense", "config": {"activation": "relu", "activity_regularizer": null, "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {}}, "bias_regularizer": null, "dtype": "float32", "kernel_constraint": null, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "kernel_regularizer": null, "name": "dense1", "trainable": true, "units": 100, "use_bias": true}}*
dtype0*
_output_shapes
: 
ў
save/Const_4Const*║
value░Bн Bж{"class_name": "Dense", "config": {"activation": "relu", "activity_regularizer": null, "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {}}, "bias_regularizer": null, "dtype": "float32", "kernel_constraint": null, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "kernel_regularizer": null, "name": "dense2", "trainable": true, "units": 100, "use_bias": true}}*
dtype0*
_output_shapes
: 
ў
save/Const_5Const*║
value░Bн Bж{"class_name": "Dense", "config": {"activation": "relu", "activity_regularizer": null, "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {}}, "bias_regularizer": null, "dtype": "float32", "kernel_constraint": null, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "kernel_regularizer": null, "name": "dense3", "trainable": true, "units": 100, "use_bias": true}}*
dtype0*
_output_shapes
: 
°
save/Const_6Const*╗
value▒Bо Bз{"class_name": "Dense", "config": {"activation": "sigmoid", "activity_regularizer": null, "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {}}, "bias_regularizer": null, "dtype": "float32", "kernel_constraint": null, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "kernel_regularizer": null, "name": "output", "trainable": true, "units": 1, "use_bias": true}}*
dtype0*
_output_shapes
: 
N
save/VarIsInitializedOpVarIsInitializedOptotal_1*
_output_shapes
: 
P
save/VarIsInitializedOp_1VarIsInitializedOpcount_1*
_output_shapes
: 
3
	save/initNoOp^count_1/Assign^total_1/Assign
к
save/Const_7Const*э
valueуBр B┘{"class_name": "Adam", "config": {"amsgrad": false, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "decay": 0.0, "epsilon": 1.0000000116860974e-07, "learning_rate": 0.0003486784698907286, "name": "Adam"}}*
dtype0*
_output_shapes
: 
д
save/SaveV2/tensor_namesConst*╫
value═B╩%B/.ATTRIBUTES/OBJECT_CONFIG_JSONB&layer-0/.ATTRIBUTES/OBJECT_CONFIG_JSONB3layer_with_weights-0/.ATTRIBUTES/OBJECT_CONFIG_JSONB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB3layer_with_weights-1/.ATTRIBUTES/OBJECT_CONFIG_JSONB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB3layer_with_weights-2/.ATTRIBUTES/OBJECT_CONFIG_JSONB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB3layer_with_weights-3/.ATTRIBUTES/OBJECT_CONFIG_JSONB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/.ATTRIBUTES/OBJECT_CONFIG_JSONB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB,optimizer/epsilon/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:%
н
save/SaveV2/shape_and_slicesConst*]
valueTBR%B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:%
═
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicessave/Const_1save/Const_2save/Const_3dense1/bias/Read/ReadVariableOp/training/Adam/dense1/bias/m/Read/ReadVariableOp/training/Adam/dense1/bias/v/Read/ReadVariableOp!dense1/kernel/Read/ReadVariableOp1training/Adam/dense1/kernel/m/Read/ReadVariableOp1training/Adam/dense1/kernel/v/Read/ReadVariableOpsave/Const_4dense2/bias/Read/ReadVariableOp/training/Adam/dense2/bias/m/Read/ReadVariableOp/training/Adam/dense2/bias/v/Read/ReadVariableOp!dense2/kernel/Read/ReadVariableOp1training/Adam/dense2/kernel/m/Read/ReadVariableOp1training/Adam/dense2/kernel/v/Read/ReadVariableOpsave/Const_5dense3/bias/Read/ReadVariableOp/training/Adam/dense3/bias/m/Read/ReadVariableOp/training/Adam/dense3/bias/v/Read/ReadVariableOp!dense3/kernel/Read/ReadVariableOp1training/Adam/dense3/kernel/m/Read/ReadVariableOp1training/Adam/dense3/kernel/v/Read/ReadVariableOpsave/Const_6output/bias/Read/ReadVariableOp/training/Adam/output/bias/m/Read/ReadVariableOp/training/Adam/output/bias/v/Read/ReadVariableOp!output/kernel/Read/ReadVariableOp1training/Adam/output/kernel/m/Read/ReadVariableOp1training/Adam/output/kernel/v/Read/ReadVariableOpsave/Const_7beta_1/Read/ReadVariableOpbeta_2/Read/ReadVariableOpdecay/Read/ReadVariableOpepsilon/Read/ReadVariableOpiter/Read/ReadVariableOp!learning_rate/Read/ReadVariableOp*3
dtypes)
'2%	
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const*
_output_shapes
: 
╢
save/RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:%*╫
value═B╩%B/.ATTRIBUTES/OBJECT_CONFIG_JSONB&layer-0/.ATTRIBUTES/OBJECT_CONFIG_JSONB3layer_with_weights-0/.ATTRIBUTES/OBJECT_CONFIG_JSONB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB3layer_with_weights-1/.ATTRIBUTES/OBJECT_CONFIG_JSONB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB3layer_with_weights-2/.ATTRIBUTES/OBJECT_CONFIG_JSONB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB3layer_with_weights-3/.ATTRIBUTES/OBJECT_CONFIG_JSONB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/.ATTRIBUTES/OBJECT_CONFIG_JSONB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB,optimizer/epsilon/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
dtype0
┐
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*]
valueTBR%B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:%
╓
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*3
dtypes)
'2%	*к
_output_shapesЧ
Ф:::::::::::::::::::::::::::::::::::::

	save/NoOpNoOp

save/NoOp_1NoOp

save/NoOp_2NoOp
N
save/IdentityIdentitysave/RestoreV2:3*
_output_shapes
:*
T0
R
save/AssignVariableOpAssignVariableOpdense1/biassave/Identity*
dtype0
P
save/Identity_1Identitysave/RestoreV2:4*
_output_shapes
:*
T0
f
save/AssignVariableOp_1AssignVariableOptraining/Adam/dense1/bias/msave/Identity_1*
dtype0
P
save/Identity_2Identitysave/RestoreV2:5*
T0*
_output_shapes
:
f
save/AssignVariableOp_2AssignVariableOptraining/Adam/dense1/bias/vsave/Identity_2*
dtype0
P
save/Identity_3Identitysave/RestoreV2:6*
T0*
_output_shapes
:
X
save/AssignVariableOp_3AssignVariableOpdense1/kernelsave/Identity_3*
dtype0
P
save/Identity_4Identitysave/RestoreV2:7*
_output_shapes
:*
T0
h
save/AssignVariableOp_4AssignVariableOptraining/Adam/dense1/kernel/msave/Identity_4*
dtype0
P
save/Identity_5Identitysave/RestoreV2:8*
_output_shapes
:*
T0
h
save/AssignVariableOp_5AssignVariableOptraining/Adam/dense1/kernel/vsave/Identity_5*
dtype0

save/NoOp_3NoOp
Q
save/Identity_6Identitysave/RestoreV2:10*
_output_shapes
:*
T0
V
save/AssignVariableOp_6AssignVariableOpdense2/biassave/Identity_6*
dtype0
Q
save/Identity_7Identitysave/RestoreV2:11*
_output_shapes
:*
T0
f
save/AssignVariableOp_7AssignVariableOptraining/Adam/dense2/bias/msave/Identity_7*
dtype0
Q
save/Identity_8Identitysave/RestoreV2:12*
T0*
_output_shapes
:
f
save/AssignVariableOp_8AssignVariableOptraining/Adam/dense2/bias/vsave/Identity_8*
dtype0
Q
save/Identity_9Identitysave/RestoreV2:13*
T0*
_output_shapes
:
X
save/AssignVariableOp_9AssignVariableOpdense2/kernelsave/Identity_9*
dtype0
R
save/Identity_10Identitysave/RestoreV2:14*
_output_shapes
:*
T0
j
save/AssignVariableOp_10AssignVariableOptraining/Adam/dense2/kernel/msave/Identity_10*
dtype0
R
save/Identity_11Identitysave/RestoreV2:15*
_output_shapes
:*
T0
j
save/AssignVariableOp_11AssignVariableOptraining/Adam/dense2/kernel/vsave/Identity_11*
dtype0

save/NoOp_4NoOp
R
save/Identity_12Identitysave/RestoreV2:17*
T0*
_output_shapes
:
X
save/AssignVariableOp_12AssignVariableOpdense3/biassave/Identity_12*
dtype0
R
save/Identity_13Identitysave/RestoreV2:18*
T0*
_output_shapes
:
h
save/AssignVariableOp_13AssignVariableOptraining/Adam/dense3/bias/msave/Identity_13*
dtype0
R
save/Identity_14Identitysave/RestoreV2:19*
T0*
_output_shapes
:
h
save/AssignVariableOp_14AssignVariableOptraining/Adam/dense3/bias/vsave/Identity_14*
dtype0
R
save/Identity_15Identitysave/RestoreV2:20*
T0*
_output_shapes
:
Z
save/AssignVariableOp_15AssignVariableOpdense3/kernelsave/Identity_15*
dtype0
R
save/Identity_16Identitysave/RestoreV2:21*
T0*
_output_shapes
:
j
save/AssignVariableOp_16AssignVariableOptraining/Adam/dense3/kernel/msave/Identity_16*
dtype0
R
save/Identity_17Identitysave/RestoreV2:22*
_output_shapes
:*
T0
j
save/AssignVariableOp_17AssignVariableOptraining/Adam/dense3/kernel/vsave/Identity_17*
dtype0

save/NoOp_5NoOp
R
save/Identity_18Identitysave/RestoreV2:24*
_output_shapes
:*
T0
X
save/AssignVariableOp_18AssignVariableOpoutput/biassave/Identity_18*
dtype0
R
save/Identity_19Identitysave/RestoreV2:25*
T0*
_output_shapes
:
h
save/AssignVariableOp_19AssignVariableOptraining/Adam/output/bias/msave/Identity_19*
dtype0
R
save/Identity_20Identitysave/RestoreV2:26*
T0*
_output_shapes
:
h
save/AssignVariableOp_20AssignVariableOptraining/Adam/output/bias/vsave/Identity_20*
dtype0
R
save/Identity_21Identitysave/RestoreV2:27*
_output_shapes
:*
T0
Z
save/AssignVariableOp_21AssignVariableOpoutput/kernelsave/Identity_21*
dtype0
R
save/Identity_22Identitysave/RestoreV2:28*
_output_shapes
:*
T0
j
save/AssignVariableOp_22AssignVariableOptraining/Adam/output/kernel/msave/Identity_22*
dtype0
R
save/Identity_23Identitysave/RestoreV2:29*
T0*
_output_shapes
:
j
save/AssignVariableOp_23AssignVariableOptraining/Adam/output/kernel/vsave/Identity_23*
dtype0

save/NoOp_6NoOp
R
save/Identity_24Identitysave/RestoreV2:31*
T0*
_output_shapes
:
S
save/AssignVariableOp_24AssignVariableOpbeta_1save/Identity_24*
dtype0
R
save/Identity_25Identitysave/RestoreV2:32*
T0*
_output_shapes
:
S
save/AssignVariableOp_25AssignVariableOpbeta_2save/Identity_25*
dtype0
R
save/Identity_26Identitysave/RestoreV2:33*
_output_shapes
:*
T0
R
save/AssignVariableOp_26AssignVariableOpdecaysave/Identity_26*
dtype0
R
save/Identity_27Identitysave/RestoreV2:34*
T0*
_output_shapes
:
T
save/AssignVariableOp_27AssignVariableOpepsilonsave/Identity_27*
dtype0
a
save/Identity_28Identitysave/RestoreV2:35"/device:CPU:0*
T0	*
_output_shapes
:
`
save/AssignVariableOp_28AssignVariableOpitersave/Identity_28"/device:CPU:0*
dtype0	
R
save/Identity_29Identitysave/RestoreV2:36*
T0*
_output_shapes
:
Z
save/AssignVariableOp_29AssignVariableOplearning_ratesave/Identity_29*
dtype0
А
save/restore_all/NoOpNoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_10^save/AssignVariableOp_11^save/AssignVariableOp_12^save/AssignVariableOp_13^save/AssignVariableOp_14^save/AssignVariableOp_15^save/AssignVariableOp_16^save/AssignVariableOp_17^save/AssignVariableOp_18^save/AssignVariableOp_19^save/AssignVariableOp_2^save/AssignVariableOp_20^save/AssignVariableOp_21^save/AssignVariableOp_22^save/AssignVariableOp_23^save/AssignVariableOp_24^save/AssignVariableOp_25^save/AssignVariableOp_26^save/AssignVariableOp_27^save/AssignVariableOp_29^save/AssignVariableOp_3^save/AssignVariableOp_4^save/AssignVariableOp_5^save/AssignVariableOp_6^save/AssignVariableOp_7^save/AssignVariableOp_8^save/AssignVariableOp_9
^save/NoOp^save/NoOp_1^save/NoOp_2^save/NoOp_3^save/NoOp_4^save/NoOp_5^save/NoOp_6
I
save/restore_all/NoOp_1NoOp^save/AssignVariableOp_28"/device:CPU:0
J
save/restore_allNoOp^save/restore_all/NoOp^save/restore_all/NoOp_1
0
init_1NoOp^count_1/Assign^total_1/Assign"D
save/Const:0save/control_dependency:0save/restore_all 5 @F8"═
local_variables╣╢
Y
	count_1:0count_1/Assigncount_1/Read/ReadVariableOp:0(2count_1/Initializer/zeros:0
Y
	total_1:0total_1/Assigntotal_1/Read/ReadVariableOp:0(2total_1/Initializer/zeros:0"Ка
cond_context°ЯЇЯ
ц

rloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/cond_textrloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0sloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_t:0 *Д
eloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_scalar:0
sloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:0
sloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:1
rloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0
sloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_t:0ш
rloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0rloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0▄
eloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_scalar:0sloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:1
╨r
tloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/cond_text_1rloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0sloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_f:0*·5
Кloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Merge:0
Кloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Merge:1
Лloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:0
Лloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:1
Нloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
Нloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:1
оloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:0
оloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1
оloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:2
зloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0
йloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1
дloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim:0
аloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims:0
йloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0
лloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1
жloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim:0
вloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1:0
бloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis:0
Ьloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat:0
жloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims:0
еloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const:0
еloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shape:0
Яloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like:0
Чloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/x:0
Хloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims:0
Шloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch:0
Ъloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1:0
Сloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0
Мloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
Нloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0
Нloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0
rloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0
sloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_f:0
gloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/values/rank:0
hloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/values/shape:0
hloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/weights/rank:0
iloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/weights/shape:0Ф
hloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/values/shape:0зloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0З
hloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/weights/rank:0Ъloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1:0Д
gloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/values/rank:0Шloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch:0Ч
iloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/weights/shape:0йloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0ш
rloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0rloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:02Э,
Ъ,
Мloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/cond_textМloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0Нloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0 *ч(
оloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:0
оloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1
оloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:2
зloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0
йloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1
дloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim:0
аloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims:0
йloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0
лloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1
жloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim:0
вloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1:0
бloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis:0
Ьloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat:0
жloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims:0
еloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const:0
еloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shape:0
Яloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like:0
Чloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/x:0
Хloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims:0
Мloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
Нloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0
hloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/values/shape:0
iloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/weights/shape:0Щ
iloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/weights/shape:0лloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1╪
йloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0йloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0Ю
Мloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0Мloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0╘
зloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0зloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0Ц
hloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/values/shape:0йloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:12╤
╬
Оloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/cond_text_1Мloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0Нloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0*Ы

Нloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
Нloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:1
Сloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0
Мloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
Нloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0д
Сloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0Нloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0Ю
Мloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0Мloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
Э
oloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/cond_textoloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0ploss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_t:0 *─
zloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency:0
oloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0
ploss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_t:0т
oloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0oloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0
Х
qloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/cond_text_1oloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0ploss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f:0*╝
uloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch:0
wloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1:0
wloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2:0
wloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3:0
uloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_0:0
uloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_1:0
uloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_2:0
uloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_4:0
uloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_5:0
uloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_7:0
|loss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency_1:0
oloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0
ploss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f:0
eloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_scalar:0
ploss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge:0
hloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/values/shape:0
iloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/weights/shape:0т
oloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0oloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0ф
iloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/weights/shape:0wloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1:0р
eloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_scalar:0wloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3:0у
hloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/values/shape:0wloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2:0щ
ploss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge:0uloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch:0"`
global_stepQO
M
iter:0iter/Assigniter/Read/ReadVariableOp:0(2iter/Initializer/zeros:0"Г"
	variablesї!Є!
|
dense1/kernel:0dense1/kernel/Assign#dense1/kernel/Read/ReadVariableOp:0(2*dense1/kernel/Initializer/random_uniform:08
k
dense1/bias:0dense1/bias/Assign!dense1/bias/Read/ReadVariableOp:0(2dense1/bias/Initializer/zeros:08
|
dense2/kernel:0dense2/kernel/Assign#dense2/kernel/Read/ReadVariableOp:0(2*dense2/kernel/Initializer/random_uniform:08
k
dense2/bias:0dense2/bias/Assign!dense2/bias/Read/ReadVariableOp:0(2dense2/bias/Initializer/zeros:08
|
dense3/kernel:0dense3/kernel/Assign#dense3/kernel/Read/ReadVariableOp:0(2*dense3/kernel/Initializer/random_uniform:08
k
dense3/bias:0dense3/bias/Assign!dense3/bias/Read/ReadVariableOp:0(2dense3/bias/Initializer/zeros:08
|
output/kernel:0output/kernel/Assign#output/kernel/Read/ReadVariableOp:0(2*output/kernel/Initializer/random_uniform:08
k
output/bias:0output/bias/Assign!output/bias/Read/ReadVariableOp:0(2output/bias/Initializer/zeros:08
M
iter:0iter/Assigniter/Read/ReadVariableOp:0(2iter/Initializer/zeros:0
y
learning_rate:0learning_rate/Assign#learning_rate/Read/ReadVariableOp:0(2)learning_rate/Initializer/initial_value:0
Y
decay:0decay/Assigndecay/Read/ReadVariableOp:0(2!decay/Initializer/initial_value:0
]
beta_1:0beta_1/Assignbeta_1/Read/ReadVariableOp:0(2"beta_1/Initializer/initial_value:0
]
beta_2:0beta_2/Assignbeta_2/Read/ReadVariableOp:0(2"beta_2/Initializer/initial_value:0
a
	epsilon:0epsilon/Assignepsilon/Read/ReadVariableOp:0(2#epsilon/Initializer/initial_value:0
▒
training/Adam/dense1/kernel/m:0$training/Adam/dense1/kernel/m/Assign3training/Adam/dense1/kernel/m/Read/ReadVariableOp:0(21training/Adam/dense1/kernel/m/Initializer/zeros:0
й
training/Adam/dense1/bias/m:0"training/Adam/dense1/bias/m/Assign1training/Adam/dense1/bias/m/Read/ReadVariableOp:0(2/training/Adam/dense1/bias/m/Initializer/zeros:0
▒
training/Adam/dense2/kernel/m:0$training/Adam/dense2/kernel/m/Assign3training/Adam/dense2/kernel/m/Read/ReadVariableOp:0(21training/Adam/dense2/kernel/m/Initializer/zeros:0
й
training/Adam/dense2/bias/m:0"training/Adam/dense2/bias/m/Assign1training/Adam/dense2/bias/m/Read/ReadVariableOp:0(2/training/Adam/dense2/bias/m/Initializer/zeros:0
▒
training/Adam/dense3/kernel/m:0$training/Adam/dense3/kernel/m/Assign3training/Adam/dense3/kernel/m/Read/ReadVariableOp:0(21training/Adam/dense3/kernel/m/Initializer/zeros:0
й
training/Adam/dense3/bias/m:0"training/Adam/dense3/bias/m/Assign1training/Adam/dense3/bias/m/Read/ReadVariableOp:0(2/training/Adam/dense3/bias/m/Initializer/zeros:0
▒
training/Adam/output/kernel/m:0$training/Adam/output/kernel/m/Assign3training/Adam/output/kernel/m/Read/ReadVariableOp:0(21training/Adam/output/kernel/m/Initializer/zeros:0
й
training/Adam/output/bias/m:0"training/Adam/output/bias/m/Assign1training/Adam/output/bias/m/Read/ReadVariableOp:0(2/training/Adam/output/bias/m/Initializer/zeros:0
▒
training/Adam/dense1/kernel/v:0$training/Adam/dense1/kernel/v/Assign3training/Adam/dense1/kernel/v/Read/ReadVariableOp:0(21training/Adam/dense1/kernel/v/Initializer/zeros:0
й
training/Adam/dense1/bias/v:0"training/Adam/dense1/bias/v/Assign1training/Adam/dense1/bias/v/Read/ReadVariableOp:0(2/training/Adam/dense1/bias/v/Initializer/zeros:0
▒
training/Adam/dense2/kernel/v:0$training/Adam/dense2/kernel/v/Assign3training/Adam/dense2/kernel/v/Read/ReadVariableOp:0(21training/Adam/dense2/kernel/v/Initializer/zeros:0
й
training/Adam/dense2/bias/v:0"training/Adam/dense2/bias/v/Assign1training/Adam/dense2/bias/v/Read/ReadVariableOp:0(2/training/Adam/dense2/bias/v/Initializer/zeros:0
▒
training/Adam/dense3/kernel/v:0$training/Adam/dense3/kernel/v/Assign3training/Adam/dense3/kernel/v/Read/ReadVariableOp:0(21training/Adam/dense3/kernel/v/Initializer/zeros:0
й
training/Adam/dense3/bias/v:0"training/Adam/dense3/bias/v/Assign1training/Adam/dense3/bias/v/Read/ReadVariableOp:0(2/training/Adam/dense3/bias/v/Initializer/zeros:0
▒
training/Adam/output/kernel/v:0$training/Adam/output/kernel/v/Assign3training/Adam/output/kernel/v/Read/ReadVariableOp:0(21training/Adam/output/kernel/v/Initializer/zeros:0
й
training/Adam/output/bias/v:0"training/Adam/output/bias/v/Assign1training/Adam/output/bias/v/Read/ReadVariableOp:0(2/training/Adam/output/bias/v/Initializer/zeros:0"╟
trainable_variablesпм
|
dense1/kernel:0dense1/kernel/Assign#dense1/kernel/Read/ReadVariableOp:0(2*dense1/kernel/Initializer/random_uniform:08
k
dense1/bias:0dense1/bias/Assign!dense1/bias/Read/ReadVariableOp:0(2dense1/bias/Initializer/zeros:08
|
dense2/kernel:0dense2/kernel/Assign#dense2/kernel/Read/ReadVariableOp:0(2*dense2/kernel/Initializer/random_uniform:08
k
dense2/bias:0dense2/bias/Assign!dense2/bias/Read/ReadVariableOp:0(2dense2/bias/Initializer/zeros:08
|
dense3/kernel:0dense3/kernel/Assign#dense3/kernel/Read/ReadVariableOp:0(2*dense3/kernel/Initializer/random_uniform:08
k
dense3/bias:0dense3/bias/Assign!dense3/bias/Read/ReadVariableOp:0(2dense3/bias/Initializer/zeros:08
|
output/kernel:0output/kernel/Assign#output/kernel/Read/ReadVariableOp:0(2*output/kernel/Initializer/random_uniform:08
k
output/bias:0output/bias/Assign!output/bias/Read/ReadVariableOp:0(2output/bias/Initializer/zeros:08*Q
__saved_model_train_op75
__saved_model_train_op
training_1/group_deps*р
train╓
!
in
in:0         #
@
output_target/
output_target:0                  =
predictions/output'
output/Sigmoid:0         
loss

loss/mul:0 @
!metrics/binary_accuracy/update_op
metric_op_wrapper:0 4
metrics/binary_accuracy/value
Identity_32:0 tensorflow/supervised/training*@
__saved_model_init_op'%
__saved_model_init_op
init_1о╢
Шх
:
Add
x"T
y"T
z"T"
Ttype:
2	
P
Assert
	condition
	
data2T"
T
list(type)(0"
	summarizeintИ
E
AssignAddVariableOp
resource
value"dtype"
dtypetypeИ
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
╣
DenseToDenseSetOperation	
set1"T	
set2"T
result_indices	
result_values"T
result_shape	"
set_operationstring"
validate_indicesbool("
Ttype:
	2	
5
DivNoNan
x"T
y"T
z"T"
Ttype:
2
B
Equal
x"T
y"T
z
"
Ttype:
2	
Р
,
Exp
x"T
y"T"
Ttype:

2
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
=
Greater
x"T
y"T
z
"
Ttype:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
.
Log1p
x"T
y"T"
Ttype:

2
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
Н
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
=
Mul
x"T
y"T
z"T"
Ttype:
2	Р
.
Neg
x"T
y"T"
Ttype:

2	

NoOp
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	И
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
0
Sigmoid
x"T
y"T"
Ttype:

2
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
:
Sub
x"T
y"T
z"T"
Ttype:
2	
М
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshapeИ
9
VarIsInitializedOp
resource
is_initialized
И
&
	ZerosLike
x"T
y"T"	
Ttype"eval*2.0.0-alpha02v1.12.0-9492-g2c319fb4158Щт
e
inPlaceholder*
dtype0*'
_output_shapes
:         #*
shape:         #
б
.dense1/kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:*
valueB"#   d   * 
_class
loc:@dense1/kernel*
dtype0
У
,dense1/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *╧рW╛* 
_class
loc:@dense1/kernel
У
,dense1/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *╧рW>* 
_class
loc:@dense1/kernel
╧
6dense1/kernel/Initializer/random_uniform/RandomUniformRandomUniform.dense1/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes

:#d*
T0* 
_class
loc:@dense1/kernel
╥
,dense1/kernel/Initializer/random_uniform/subSub,dense1/kernel/Initializer/random_uniform/max,dense1/kernel/Initializer/random_uniform/min*
T0* 
_class
loc:@dense1/kernel*
_output_shapes
: 
ф
,dense1/kernel/Initializer/random_uniform/mulMul6dense1/kernel/Initializer/random_uniform/RandomUniform,dense1/kernel/Initializer/random_uniform/sub*
T0* 
_class
loc:@dense1/kernel*
_output_shapes

:#d
╓
(dense1/kernel/Initializer/random_uniformAdd,dense1/kernel/Initializer/random_uniform/mul,dense1/kernel/Initializer/random_uniform/min*
T0* 
_class
loc:@dense1/kernel*
_output_shapes

:#d
Ш
dense1/kernelVarHandleOp*
shared_namedense1/kernel* 
_class
loc:@dense1/kernel*
dtype0*
_output_shapes
: *
shape
:#d
k
.dense1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense1/kernel*
_output_shapes
: 
Р
dense1/kernel/AssignAssignVariableOpdense1/kernel(dense1/kernel/Initializer/random_uniform* 
_class
loc:@dense1/kernel*
dtype0
С
!dense1/kernel/Read/ReadVariableOpReadVariableOpdense1/kernel*
dtype0*
_output_shapes

:#d* 
_class
loc:@dense1/kernel
К
dense1/bias/Initializer/zerosConst*
valueBd*    *
_class
loc:@dense1/bias*
dtype0*
_output_shapes
:d
О
dense1/biasVarHandleOp*
shared_namedense1/bias*
_class
loc:@dense1/bias*
dtype0*
_output_shapes
: *
shape:d
g
,dense1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense1/bias*
_output_shapes
: 

dense1/bias/AssignAssignVariableOpdense1/biasdense1/bias/Initializer/zeros*
_class
loc:@dense1/bias*
dtype0
З
dense1/bias/Read/ReadVariableOpReadVariableOpdense1/bias*
_class
loc:@dense1/bias*
dtype0*
_output_shapes
:d
j
dense1/MatMul/ReadVariableOpReadVariableOpdense1/kernel*
dtype0*
_output_shapes

:#d
k
dense1/MatMulMatMulindense1/MatMul/ReadVariableOp*'
_output_shapes
:         d*
T0
e
dense1/BiasAdd/ReadVariableOpReadVariableOpdense1/bias*
dtype0*
_output_shapes
:d
y
dense1/BiasAddBiasAdddense1/MatMuldense1/BiasAdd/ReadVariableOp*
T0*'
_output_shapes
:         d
U
dense1/ReluReludense1/BiasAdd*'
_output_shapes
:         d*
T0
б
.dense2/kernel/Initializer/random_uniform/shapeConst*
valueB"d   d   * 
_class
loc:@dense2/kernel*
dtype0*
_output_shapes
:
У
,dense2/kernel/Initializer/random_uniform/minConst*
valueB
 *м\1╛* 
_class
loc:@dense2/kernel*
dtype0*
_output_shapes
: 
У
,dense2/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *м\1>* 
_class
loc:@dense2/kernel
╧
6dense2/kernel/Initializer/random_uniform/RandomUniformRandomUniform.dense2/kernel/Initializer/random_uniform/shape*
T0* 
_class
loc:@dense2/kernel*
dtype0*
_output_shapes

:dd
╥
,dense2/kernel/Initializer/random_uniform/subSub,dense2/kernel/Initializer/random_uniform/max,dense2/kernel/Initializer/random_uniform/min*
T0* 
_class
loc:@dense2/kernel*
_output_shapes
: 
ф
,dense2/kernel/Initializer/random_uniform/mulMul6dense2/kernel/Initializer/random_uniform/RandomUniform,dense2/kernel/Initializer/random_uniform/sub*
T0* 
_class
loc:@dense2/kernel*
_output_shapes

:dd
╓
(dense2/kernel/Initializer/random_uniformAdd,dense2/kernel/Initializer/random_uniform/mul,dense2/kernel/Initializer/random_uniform/min*
T0* 
_class
loc:@dense2/kernel*
_output_shapes

:dd
Ш
dense2/kernelVarHandleOp* 
_class
loc:@dense2/kernel*
dtype0*
_output_shapes
: *
shape
:dd*
shared_namedense2/kernel
k
.dense2/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense2/kernel*
_output_shapes
: 
Р
dense2/kernel/AssignAssignVariableOpdense2/kernel(dense2/kernel/Initializer/random_uniform* 
_class
loc:@dense2/kernel*
dtype0
С
!dense2/kernel/Read/ReadVariableOpReadVariableOpdense2/kernel* 
_class
loc:@dense2/kernel*
dtype0*
_output_shapes

:dd
К
dense2/bias/Initializer/zerosConst*
valueBd*    *
_class
loc:@dense2/bias*
dtype0*
_output_shapes
:d
О
dense2/biasVarHandleOp*
_class
loc:@dense2/bias*
dtype0*
_output_shapes
: *
shape:d*
shared_namedense2/bias
g
,dense2/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense2/bias*
_output_shapes
: 

dense2/bias/AssignAssignVariableOpdense2/biasdense2/bias/Initializer/zeros*
_class
loc:@dense2/bias*
dtype0
З
dense2/bias/Read/ReadVariableOpReadVariableOpdense2/bias*
_class
loc:@dense2/bias*
dtype0*
_output_shapes
:d
j
dense2/MatMul/ReadVariableOpReadVariableOpdense2/kernel*
dtype0*
_output_shapes

:dd
t
dense2/MatMulMatMuldense1/Reludense2/MatMul/ReadVariableOp*
T0*'
_output_shapes
:         d
e
dense2/BiasAdd/ReadVariableOpReadVariableOpdense2/bias*
dtype0*
_output_shapes
:d
y
dense2/BiasAddBiasAdddense2/MatMuldense2/BiasAdd/ReadVariableOp*'
_output_shapes
:         d*
T0
U
dense2/ReluReludense2/BiasAdd*
T0*'
_output_shapes
:         d
б
.dense3/kernel/Initializer/random_uniform/shapeConst*
valueB"d   d   * 
_class
loc:@dense3/kernel*
dtype0*
_output_shapes
:
У
,dense3/kernel/Initializer/random_uniform/minConst*
valueB
 *м\1╛* 
_class
loc:@dense3/kernel*
dtype0*
_output_shapes
: 
У
,dense3/kernel/Initializer/random_uniform/maxConst*
valueB
 *м\1>* 
_class
loc:@dense3/kernel*
dtype0*
_output_shapes
: 
╧
6dense3/kernel/Initializer/random_uniform/RandomUniformRandomUniform.dense3/kernel/Initializer/random_uniform/shape*
T0* 
_class
loc:@dense3/kernel*
dtype0*
_output_shapes

:dd
╥
,dense3/kernel/Initializer/random_uniform/subSub,dense3/kernel/Initializer/random_uniform/max,dense3/kernel/Initializer/random_uniform/min*
T0* 
_class
loc:@dense3/kernel*
_output_shapes
: 
ф
,dense3/kernel/Initializer/random_uniform/mulMul6dense3/kernel/Initializer/random_uniform/RandomUniform,dense3/kernel/Initializer/random_uniform/sub*
T0* 
_class
loc:@dense3/kernel*
_output_shapes

:dd
╓
(dense3/kernel/Initializer/random_uniformAdd,dense3/kernel/Initializer/random_uniform/mul,dense3/kernel/Initializer/random_uniform/min*
T0* 
_class
loc:@dense3/kernel*
_output_shapes

:dd
Ш
dense3/kernelVarHandleOp*
_output_shapes
: *
shape
:dd*
shared_namedense3/kernel* 
_class
loc:@dense3/kernel*
dtype0
k
.dense3/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense3/kernel*
_output_shapes
: 
Р
dense3/kernel/AssignAssignVariableOpdense3/kernel(dense3/kernel/Initializer/random_uniform* 
_class
loc:@dense3/kernel*
dtype0
С
!dense3/kernel/Read/ReadVariableOpReadVariableOpdense3/kernel* 
_class
loc:@dense3/kernel*
dtype0*
_output_shapes

:dd
К
dense3/bias/Initializer/zerosConst*
valueBd*    *
_class
loc:@dense3/bias*
dtype0*
_output_shapes
:d
О
dense3/biasVarHandleOp*
_output_shapes
: *
shape:d*
shared_namedense3/bias*
_class
loc:@dense3/bias*
dtype0
g
,dense3/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense3/bias*
_output_shapes
: 

dense3/bias/AssignAssignVariableOpdense3/biasdense3/bias/Initializer/zeros*
_class
loc:@dense3/bias*
dtype0
З
dense3/bias/Read/ReadVariableOpReadVariableOpdense3/bias*
_class
loc:@dense3/bias*
dtype0*
_output_shapes
:d
j
dense3/MatMul/ReadVariableOpReadVariableOpdense3/kernel*
dtype0*
_output_shapes

:dd
t
dense3/MatMulMatMuldense2/Reludense3/MatMul/ReadVariableOp*'
_output_shapes
:         d*
T0
e
dense3/BiasAdd/ReadVariableOpReadVariableOpdense3/bias*
_output_shapes
:d*
dtype0
y
dense3/BiasAddBiasAdddense3/MatMuldense3/BiasAdd/ReadVariableOp*
T0*'
_output_shapes
:         d
U
dense3/ReluReludense3/BiasAdd*'
_output_shapes
:         d*
T0
б
.output/kernel/Initializer/random_uniform/shapeConst*
valueB"d      * 
_class
loc:@output/kernel*
dtype0*
_output_shapes
:
У
,output/kernel/Initializer/random_uniform/minConst*
valueB
 *<Хy╛* 
_class
loc:@output/kernel*
dtype0*
_output_shapes
: 
У
,output/kernel/Initializer/random_uniform/maxConst*
valueB
 *<Хy>* 
_class
loc:@output/kernel*
dtype0*
_output_shapes
: 
╧
6output/kernel/Initializer/random_uniform/RandomUniformRandomUniform.output/kernel/Initializer/random_uniform/shape*
_output_shapes

:d*
T0* 
_class
loc:@output/kernel*
dtype0
╥
,output/kernel/Initializer/random_uniform/subSub,output/kernel/Initializer/random_uniform/max,output/kernel/Initializer/random_uniform/min*
T0* 
_class
loc:@output/kernel*
_output_shapes
: 
ф
,output/kernel/Initializer/random_uniform/mulMul6output/kernel/Initializer/random_uniform/RandomUniform,output/kernel/Initializer/random_uniform/sub* 
_class
loc:@output/kernel*
_output_shapes

:d*
T0
╓
(output/kernel/Initializer/random_uniformAdd,output/kernel/Initializer/random_uniform/mul,output/kernel/Initializer/random_uniform/min*
T0* 
_class
loc:@output/kernel*
_output_shapes

:d
Ш
output/kernelVarHandleOp*
shared_nameoutput/kernel* 
_class
loc:@output/kernel*
dtype0*
_output_shapes
: *
shape
:d
k
.output/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpoutput/kernel*
_output_shapes
: 
Р
output/kernel/AssignAssignVariableOpoutput/kernel(output/kernel/Initializer/random_uniform* 
_class
loc:@output/kernel*
dtype0
С
!output/kernel/Read/ReadVariableOpReadVariableOpoutput/kernel* 
_class
loc:@output/kernel*
dtype0*
_output_shapes

:d
К
output/bias/Initializer/zerosConst*
valueB*    *
_class
loc:@output/bias*
dtype0*
_output_shapes
:
О
output/biasVarHandleOp*
_class
loc:@output/bias*
dtype0*
_output_shapes
: *
shape:*
shared_nameoutput/bias
g
,output/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpoutput/bias*
_output_shapes
: 

output/bias/AssignAssignVariableOpoutput/biasoutput/bias/Initializer/zeros*
_class
loc:@output/bias*
dtype0
З
output/bias/Read/ReadVariableOpReadVariableOpoutput/bias*
_class
loc:@output/bias*
dtype0*
_output_shapes
:
j
output/MatMul/ReadVariableOpReadVariableOpoutput/kernel*
dtype0*
_output_shapes

:d
t
output/MatMulMatMuldense3/Reluoutput/MatMul/ReadVariableOp*'
_output_shapes
:         *
T0
e
output/BiasAdd/ReadVariableOpReadVariableOpoutput/bias*
dtype0*
_output_shapes
:
y
output/BiasAddBiasAddoutput/MatMuloutput/BiasAdd/ReadVariableOp*'
_output_shapes
:         *
T0
[
output/SigmoidSigmoidoutput/BiasAdd*
T0*'
_output_shapes
:         
В
output_targetPlaceholder*
dtype0*0
_output_shapes
:                  *%
shape:                  
R
ConstConst*
valueB*  А?*
dtype0*
_output_shapes
:
В
output_sample_weightsPlaceholderWithDefaultConst*
dtype0*#
_output_shapes
:         *
shape:         
v
total/Initializer/zerosConst*
valueB
 *    *
_class

loc:@total*
dtype0*
_output_shapes
: 
x
totalVarHandleOp*
_output_shapes
: *
shape: *
shared_nametotal*
_class

loc:@total*
dtype0
[
&total/IsInitialized/VarIsInitializedOpVarIsInitializedOptotal*
_output_shapes
: 
g
total/AssignAssignVariableOptotaltotal/Initializer/zeros*
_class

loc:@total*
dtype0
q
total/Read/ReadVariableOpReadVariableOptotal*
_class

loc:@total*
dtype0*
_output_shapes
: 
v
count/Initializer/zerosConst*
valueB
 *    *
_class

loc:@count*
dtype0*
_output_shapes
: 
x
countVarHandleOp*
_class

loc:@count*
dtype0*
_output_shapes
: *
shape: *
shared_namecount
[
&count/IsInitialized/VarIsInitializedOpVarIsInitializedOpcount*
_output_shapes
: 
g
count/AssignAssignVariableOpcountcount/Initializer/zeros*
_class

loc:@count*
dtype0
q
count/Read/ReadVariableOpReadVariableOpcount*
_class

loc:@count*
dtype0*
_output_shapes
: 
c
metrics/binary_accuracy/Cast/xConst*
valueB
 *   ?*
dtype0*
_output_shapes
: 
М
metrics/binary_accuracy/GreaterGreateroutput/Sigmoidmetrics/binary_accuracy/Cast/x*
T0*'
_output_shapes
:         
И
metrics/binary_accuracy/Cast_1Castmetrics/binary_accuracy/Greater*'
_output_shapes
:         *

DstT0*

SrcT0

Р
metrics/binary_accuracy/EqualEqualoutput_targetmetrics/binary_accuracy/Cast_1*0
_output_shapes
:                  *
T0
П
metrics/binary_accuracy/Cast_2Castmetrics/binary_accuracy/Equal*

SrcT0
*0
_output_shapes
:                  *

DstT0
y
.metrics/binary_accuracy/Mean/reduction_indicesConst*
dtype0*
_output_shapes
: *
valueB :
         
в
metrics/binary_accuracy/MeanMeanmetrics/binary_accuracy/Cast_2.metrics/binary_accuracy/Mean/reduction_indices*
T0*#
_output_shapes
:         
g
metrics/binary_accuracy/ConstConst*
_output_shapes
:*
valueB: *
dtype0
А
metrics/binary_accuracy/SumSummetrics/binary_accuracy/Meanmetrics/binary_accuracy/Const*
T0*
_output_shapes
: 
s
+metrics/binary_accuracy/AssignAddVariableOpAssignAddVariableOptotalmetrics/binary_accuracy/Sum*
dtype0
░
&metrics/binary_accuracy/ReadVariableOpReadVariableOptotal,^metrics/binary_accuracy/AssignAddVariableOp^metrics/binary_accuracy/Sum*
dtype0*
_output_shapes
: 
c
metrics/binary_accuracy/SizeSizemetrics/binary_accuracy/Mean*
T0*
_output_shapes
: 
t
metrics/binary_accuracy/Cast_3Castmetrics/binary_accuracy/Size*
_output_shapes
: *

DstT0*

SrcT0
ж
-metrics/binary_accuracy/AssignAddVariableOp_1AssignAddVariableOpcountmetrics/binary_accuracy/Cast_3,^metrics/binary_accuracy/AssignAddVariableOp*
dtype0
─
(metrics/binary_accuracy/ReadVariableOp_1ReadVariableOpcount,^metrics/binary_accuracy/AssignAddVariableOp.^metrics/binary_accuracy/AssignAddVariableOp_1*
dtype0*
_output_shapes
: 
Я
1metrics/binary_accuracy/div_no_nan/ReadVariableOpReadVariableOptotal.^metrics/binary_accuracy/AssignAddVariableOp_1*
_output_shapes
: *
dtype0
б
3metrics/binary_accuracy/div_no_nan/ReadVariableOp_1ReadVariableOpcount.^metrics/binary_accuracy/AssignAddVariableOp_1*
dtype0*
_output_shapes
: 
╖
"metrics/binary_accuracy/div_no_nanDivNoNan1metrics/binary_accuracy/div_no_nan/ReadVariableOp3metrics/binary_accuracy/div_no_nan/ReadVariableOp_1*
_output_shapes
: *
T0
q
 metrics/binary_accuracy/IdentityIdentity"metrics/binary_accuracy/div_no_nan*
T0*
_output_shapes
: 
e
 metrics/binary_accuracy/Cast_4/xConst*
valueB
 *   ?*
dtype0*
_output_shapes
: 
Р
!metrics/binary_accuracy/Greater_1Greateroutput/Sigmoid metrics/binary_accuracy/Cast_4/x*
T0*'
_output_shapes
:         
К
metrics/binary_accuracy/Cast_5Cast!metrics/binary_accuracy/Greater_1*

SrcT0
*'
_output_shapes
:         *

DstT0
Т
metrics/binary_accuracy/Equal_1Equaloutput_targetmetrics/binary_accuracy/Cast_5*0
_output_shapes
:                  *
T0
С
metrics/binary_accuracy/Cast_6Castmetrics/binary_accuracy/Equal_1*

SrcT0
*0
_output_shapes
:                  *

DstT0
{
0metrics/binary_accuracy/Mean_1/reduction_indicesConst*
valueB :
         *
dtype0*
_output_shapes
: 
ж
metrics/binary_accuracy/Mean_1Meanmetrics/binary_accuracy/Cast_60metrics/binary_accuracy/Mean_1/reduction_indices*
T0*#
_output_shapes
:         
i
metrics/binary_accuracy/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
И
metrics/binary_accuracy/Mean_2Meanmetrics/binary_accuracy/Mean_1metrics/binary_accuracy/Const_1*
_output_shapes
: *
T0
o
*loss/output_loss/binary_crossentropy/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
М
=loss/output_loss/binary_crossentropy/logistic_loss/zeros_like	ZerosLikeoutput/BiasAdd*'
_output_shapes
:         *
T0
╨
?loss/output_loss/binary_crossentropy/logistic_loss/GreaterEqualGreaterEqualoutput/BiasAdd=loss/output_loss/binary_crossentropy/logistic_loss/zeros_like*
T0*'
_output_shapes
:         
Е
9loss/output_loss/binary_crossentropy/logistic_loss/SelectSelect?loss/output_loss/binary_crossentropy/logistic_loss/GreaterEqualoutput/BiasAdd=loss/output_loss/binary_crossentropy/logistic_loss/zeros_like*
T0*'
_output_shapes
:         

6loss/output_loss/binary_crossentropy/logistic_loss/NegNegoutput/BiasAdd*
T0*'
_output_shapes
:         
А
;loss/output_loss/binary_crossentropy/logistic_loss/Select_1Select?loss/output_loss/binary_crossentropy/logistic_loss/GreaterEqual6loss/output_loss/binary_crossentropy/logistic_loss/Negoutput/BiasAdd*
T0*'
_output_shapes
:         
Ч
6loss/output_loss/binary_crossentropy/logistic_loss/mulMuloutput/BiasAddoutput_target*
T0*0
_output_shapes
:                  
ы
6loss/output_loss/binary_crossentropy/logistic_loss/subSub9loss/output_loss/binary_crossentropy/logistic_loss/Select6loss/output_loss/binary_crossentropy/logistic_loss/mul*0
_output_shapes
:                  *
T0
м
6loss/output_loss/binary_crossentropy/logistic_loss/ExpExp;loss/output_loss/binary_crossentropy/logistic_loss/Select_1*'
_output_shapes
:         *
T0
л
8loss/output_loss/binary_crossentropy/logistic_loss/Log1pLog1p6loss/output_loss/binary_crossentropy/logistic_loss/Exp*
T0*'
_output_shapes
:         
ц
2loss/output_loss/binary_crossentropy/logistic_lossAdd6loss/output_loss/binary_crossentropy/logistic_loss/sub8loss/output_loss/binary_crossentropy/logistic_loss/Log1p*0
_output_shapes
:                  *
T0
Ж
;loss/output_loss/binary_crossentropy/Mean/reduction_indicesConst*
valueB :
         *
dtype0*
_output_shapes
: 
╨
)loss/output_loss/binary_crossentropy/MeanMean2loss/output_loss/binary_crossentropy/logistic_loss;loss/output_loss/binary_crossentropy/Mean/reduction_indices*
T0*#
_output_shapes
:         
м
gloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/weights/shapeShapeoutput_sample_weights*
_output_shapes
:*
T0
и
floss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/weights/rankConst*
value	B :*
dtype0*
_output_shapes
: 
┐
floss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/values/shapeShape)loss/output_loss/binary_crossentropy/Mean*
T0*
_output_shapes
:
з
eloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 
з
eloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_scalar/xConst*
value	B : *
dtype0*
_output_shapes
: 
▄
closs/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_scalarEqualeloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_scalar/xfloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/weights/rank*
T0*
_output_shapes
: 
ц
oloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/SwitchSwitchcloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_scalarcloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_scalar*
_output_shapes
: : *
T0

С
qloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_tIdentityqloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch:1*
T0
*
_output_shapes
: 
П
qloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_fIdentityoloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch*
T0
*
_output_shapes
: 
В
ploss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_idIdentitycloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_scalar*
T0
*
_output_shapes
: 
э
qloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1Switchcloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_scalarploss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
T0
*v
_classl
jhloc:@loss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_scalar*
_output_shapes
: : 
ю
Пloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankEqualЦloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/SwitchШloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1*
T0*
_output_shapes
: 
Ч
Цloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/SwitchSwitcheloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/values/rankploss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
T0*x
_classn
ljloc:@loss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/values/rank*
_output_shapes
: : 
Ы
Шloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1Switchfloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/weights/rankploss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*y
_classo
mkloc:@loss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/weights/rank*
_output_shapes
: : *
T0
█
Йloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/SwitchSwitchПloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankПloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
_output_shapes
: : *
T0

╟
Лloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_tIdentityЛloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:1*
T0
*
_output_shapes
: 
┼
Лloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_fIdentityЙloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch*
T0
*
_output_shapes
: 
╩
Кloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_idIdentityПloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
T0
*
_output_shapes
: 
¤
вloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dimConstМ^loss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
valueB :
         *
dtype0*
_output_shapes
: 
з
Юloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims
ExpandDimsйloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1вloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim*
_output_shapes

:*
T0
░
еloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/SwitchSwitchfloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/values/shapeploss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
T0*y
_classo
mkloc:@loss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/values/shape* 
_output_shapes
::
Н
зloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1Switchеloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/SwitchКloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
T0*y
_classo
mkloc:@loss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/values/shape* 
_output_shapes
::
Д
гloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ShapeConstМ^loss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
valueB"      *
dtype0*
_output_shapes
:
ї
гloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ConstConstМ^loss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
dtype0*
_output_shapes
: *
value	B :
Ы
Эloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_likeFillгloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shapeгloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const*
_output_shapes

:*
T0
ё
Яloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axisConstМ^loss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
value	B :*
dtype0*
_output_shapes
: 
╝
Ъloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concatConcatV2Юloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDimsЭloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_likeЯloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis*
_output_shapes

:*
T0*
N
 
дloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dimConstМ^loss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
_output_shapes
: *
valueB :
         *
dtype0
н
аloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1
ExpandDimsлloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1дloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim*
T0*
_output_shapes

:
┤
зloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/SwitchSwitchgloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/weights/shapeploss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*z
_classp
nlloc:@loss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/weights/shape* 
_output_shapes
::*
T0
Т
йloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1Switchзloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/SwitchКloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
T0*z
_classp
nlloc:@loss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/weights/shape* 
_output_shapes
::
ш
мloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperationDenseToDenseSetOperationаloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1Ъloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat*
T0*<
_output_shapes*
(:         :         :*
set_operationa-b
 
дloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dimsSizeоloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1*
_output_shapes
: *
T0
ч
Хloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/xConstМ^loss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
value	B : *
dtype0*
_output_shapes
: 
¤
Уloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dimsEqualХloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/xдloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims*
T0*
_output_shapes
: 
А
Лloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1SwitchПloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankКloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
T0
*е
_classЪ
ЧФloc:@loss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
_output_shapes
: : 
т
Иloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/MergeMergeЛloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1Уloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims*
T0
*
N*
_output_shapes
: : 
г
nloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/MergeMergeИloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Mergesloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:1*
N*
_output_shapes
: : *
T0

╟
_loss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/ConstConst*8
value/B- B'weights can not be broadcast to values.*
dtype0*
_output_shapes
: 
░
aloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/Const_1Const*
valueB Bweights.shape=*
dtype0*
_output_shapes
: 
╣
aloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/Const_2Const*(
valueB Boutput_sample_weights:0*
dtype0*
_output_shapes
: 
п
aloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/Const_3Const*
dtype0*
_output_shapes
: *
valueB Bvalues.shape=
═
aloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/Const_4Const*<
value3B1 B+loss/output_loss/binary_crossentropy/Mean:0*
dtype0*
_output_shapes
: 
м
aloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/Const_5Const*
valueB B
is_scalar=*
dtype0*
_output_shapes
: 
∙
lloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/SwitchSwitchnloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Mergenloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge*
_output_shapes
: : *
T0

Л
nloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_tIdentitynloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Switch:1*
_output_shapes
: *
T0

Й
nloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_fIdentitylloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Switch*
_output_shapes
: *
T0

К
mloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_idIdentitynloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge*
T0
*
_output_shapes
: 
у
jloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/NoOpNoOpo^loss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_t
Ж
xloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependencyIdentitynloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_tk^loss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/NoOp*Б
_classw
usloc:@loss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_t*
_output_shapes
: *
T0

╠
sloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_0Consto^loss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*8
value/B- B'weights can not be broadcast to values.*
dtype0*
_output_shapes
: 
│
sloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_1Consto^loss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
valueB Bweights.shape=*
dtype0*
_output_shapes
: 
╝
sloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_2Consto^loss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
_output_shapes
: *(
valueB Boutput_sample_weights:0*
dtype0
▓
sloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_4Consto^loss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
valueB Bvalues.shape=*
dtype0*
_output_shapes
: 
╨
sloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_5Consto^loss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*<
value3B1 B+loss/output_loss/binary_crossentropy/Mean:0*
dtype0*
_output_shapes
: 
п
sloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_7Consto^loss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
valueB B
is_scalar=*
dtype0*
_output_shapes
: 
в

lloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/AssertAssertsloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switchsloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_0sloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_1sloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_2uloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1sloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_4sloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_5uloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2sloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_7uloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3*
T
2	

Г
sloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/SwitchSwitchnloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Mergemloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*
T0
*Б
_classw
usloc:@loss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge*
_output_shapes
: : 
■
uloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1Switchgloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/weights/shapemloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*
T0*z
_classp
nlloc:@loss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/weights/shape* 
_output_shapes
::
№
uloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2Switchfloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/values/shapemloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*
T0*y
_classo
mkloc:@loss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/values/shape* 
_output_shapes
::
ю
uloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3Switchcloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_scalarmloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*
T0
*v
_classl
jhloc:@loss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_scalar*
_output_shapes
: : 
К
zloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency_1Identitynloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_fm^loss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert*Б
_classw
usloc:@loss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
_output_shapes
: *
T0

Ц
kloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/MergeMergezloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency_1xloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency*
T0
*
N*
_output_shapes
: : 
Ы
Tloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/ones_like/ShapeShape)loss/output_loss/binary_crossentropy/Meanl^loss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Merge*
T0*
_output_shapes
:
З
Tloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/ones_like/ConstConstl^loss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Merge*
valueB
 *  А?*
dtype0*
_output_shapes
: 
░
Nloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/ones_likeFillTloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/ones_like/ShapeTloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/ones_like/Const*#
_output_shapes
:         *
T0
р
Dloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weightsMuloutput_sample_weightsNloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/ones_like*
T0*#
_output_shapes
:         
▄
6loss/output_loss/binary_crossentropy/weighted_loss/MulMul)loss/output_loss/binary_crossentropy/MeanDloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights*#
_output_shapes
:         *
T0
`
loss/output_loss/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
М
loss/output_loss/SumSum6loss/output_loss/binary_crossentropy/weighted_loss/Mulloss/output_loss/Const*
_output_shapes
: *
T0
~
loss/output_loss/num_elementsSize6loss/output_loss/binary_crossentropy/weighted_loss/Mul*
_output_shapes
: *
T0
y
"loss/output_loss/num_elements/CastCastloss/output_loss/num_elements*

SrcT0*
_output_shapes
: *

DstT0
[
loss/output_loss/mul/xConst*
dtype0*
_output_shapes
: *
valueB
 *  А?
x
loss/output_loss/mulMulloss/output_loss/mul/x"loss/output_loss/num_elements/Cast*
_output_shapes
: *
T0
[
loss/output_loss/Const_1Const*
_output_shapes
: *
valueB *
dtype0
n
loss/output_loss/Sum_1Sumloss/output_loss/Sumloss/output_loss/Const_1*
T0*
_output_shapes
: 
q
loss/output_loss/valueDivNoNanloss/output_loss/Sum_1loss/output_loss/mul*
T0*
_output_shapes
: 
O

loss/mul/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
T
loss/mulMul
loss/mul/xloss/output_loss/value*
_output_shapes
: *
T0
q
iter/Initializer/zerosConst*
value	B	 R *
_class
	loc:@iter*
dtype0	*
_output_shapes
: 
Д
iterVarHandleOp"/device:CPU:0*
shared_nameiter*
_class
	loc:@iter*
dtype0	*
_output_shapes
: *
shape: 
h
%iter/IsInitialized/VarIsInitializedOpVarIsInitializedOpiter"/device:CPU:0*
_output_shapes
: 
r
iter/AssignAssignVariableOpiteriter/Initializer/zeros"/device:CPU:0*
_class
	loc:@iter*
dtype0	
}
iter/Read/ReadVariableOpReadVariableOpiter"/device:CPU:0*
_class
	loc:@iter*
dtype0	*
_output_shapes
: 
О
'learning_rate/Initializer/initial_valueConst*
valueB
 *╒╬╢9* 
_class
loc:@learning_rate*
dtype0*
_output_shapes
: 
Р
learning_rateVarHandleOp*
dtype0*
_output_shapes
: *
shape: *
shared_namelearning_rate* 
_class
loc:@learning_rate
k
.learning_rate/IsInitialized/VarIsInitializedOpVarIsInitializedOplearning_rate*
_output_shapes
: 
П
learning_rate/AssignAssignVariableOplearning_rate'learning_rate/Initializer/initial_value* 
_class
loc:@learning_rate*
dtype0
Й
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate* 
_class
loc:@learning_rate*
dtype0*
_output_shapes
: 
~
decay/Initializer/initial_valueConst*
valueB
 *    *
_class

loc:@decay*
dtype0*
_output_shapes
: 
x
decayVarHandleOp*
shape: *
shared_namedecay*
_class

loc:@decay*
dtype0*
_output_shapes
: 
[
&decay/IsInitialized/VarIsInitializedOpVarIsInitializedOpdecay*
_output_shapes
: 
o
decay/AssignAssignVariableOpdecaydecay/Initializer/initial_value*
_class

loc:@decay*
dtype0
q
decay/Read/ReadVariableOpReadVariableOpdecay*
_class

loc:@decay*
dtype0*
_output_shapes
: 
А
 beta_1/Initializer/initial_valueConst*
valueB
 *fff?*
_class
loc:@beta_1*
dtype0*
_output_shapes
: 
{
beta_1VarHandleOp*
_class
loc:@beta_1*
dtype0*
_output_shapes
: *
shape: *
shared_namebeta_1
]
'beta_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpbeta_1*
_output_shapes
: 
s
beta_1/AssignAssignVariableOpbeta_1 beta_1/Initializer/initial_value*
_class
loc:@beta_1*
dtype0
t
beta_1/Read/ReadVariableOpReadVariableOpbeta_1*
_class
loc:@beta_1*
dtype0*
_output_shapes
: 
А
 beta_2/Initializer/initial_valueConst*
valueB
 *w╛?*
_class
loc:@beta_2*
dtype0*
_output_shapes
: 
{
beta_2VarHandleOp*
shared_namebeta_2*
_class
loc:@beta_2*
dtype0*
_output_shapes
: *
shape: 
]
'beta_2/IsInitialized/VarIsInitializedOpVarIsInitializedOpbeta_2*
_output_shapes
: 
s
beta_2/AssignAssignVariableOpbeta_2 beta_2/Initializer/initial_value*
_class
loc:@beta_2*
dtype0
t
beta_2/Read/ReadVariableOpReadVariableOpbeta_2*
_class
loc:@beta_2*
dtype0*
_output_shapes
: 
В
!epsilon/Initializer/initial_valueConst*
valueB
 *Х┐╓3*
_class
loc:@epsilon*
dtype0*
_output_shapes
: 
~
epsilonVarHandleOp*
_class
loc:@epsilon*
dtype0*
_output_shapes
: *
shape: *
shared_name	epsilon
_
(epsilon/IsInitialized/VarIsInitializedOpVarIsInitializedOpepsilon*
_output_shapes
: 
w
epsilon/AssignAssignVariableOpepsilon!epsilon/Initializer/initial_value*
_class
loc:@epsilon*
dtype0
w
epsilon/Read/ReadVariableOpReadVariableOpepsilon*
_class
loc:@epsilon*
dtype0*
_output_shapes
: 
I
evaluation/group_depsNoOp	^loss/mul^metrics/binary_accuracy/Mean_2
W
Const_1Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
W
Const_2Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
W
Const_3Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
W
Const_4Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
W
Const_5Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
W
Const_6Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
O
VarIsInitializedOpVarIsInitializedOpoutput/kernel*
_output_shapes
: 
O
VarIsInitializedOp_1VarIsInitializedOpoutput/bias*
_output_shapes
: 
I
VarIsInitializedOp_2VarIsInitializedOpdecay*
_output_shapes
: 
Q
VarIsInitializedOp_3VarIsInitializedOpdense3/kernel*
_output_shapes
: 
J
VarIsInitializedOp_4VarIsInitializedOpbeta_1*
_output_shapes
: 
Q
VarIsInitializedOp_5VarIsInitializedOpdense1/kernel*
_output_shapes
: 
J
VarIsInitializedOp_6VarIsInitializedOpbeta_2*
_output_shapes
: 
O
VarIsInitializedOp_7VarIsInitializedOpdense3/bias*
_output_shapes
: 
K
VarIsInitializedOp_8VarIsInitializedOpepsilon*
_output_shapes
: 
Q
VarIsInitializedOp_9VarIsInitializedOpdense2/kernel*
_output_shapes
: 
R
VarIsInitializedOp_10VarIsInitializedOplearning_rate*
_output_shapes
: 
J
VarIsInitializedOp_11VarIsInitializedOpcount*
_output_shapes
: 
P
VarIsInitializedOp_12VarIsInitializedOpdense2/bias*
_output_shapes
: 
I
VarIsInitializedOp_13VarIsInitializedOpiter*
_output_shapes
: 
P
VarIsInitializedOp_14VarIsInitializedOpdense1/bias*
_output_shapes
: 
J
VarIsInitializedOp_15VarIsInitializedOptotal*
_output_shapes
: 
╢
	init/NoOpNoOp^beta_1/Assign^beta_2/Assign^count/Assign^decay/Assign^dense1/bias/Assign^dense1/kernel/Assign^dense2/bias/Assign^dense2/kernel/Assign^dense3/bias/Assign^dense3/kernel/Assign^epsilon/Assign^learning_rate/Assign^output/bias/Assign^output/kernel/Assign^total/Assign
0
init/NoOp_1NoOp^iter/Assign"/device:CPU:0
&
initNoOp
^init/NoOp^init/NoOp_1
W
Const_7Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
\
Const_8Const"/device:CPU:0*
valueB Bmodel*
dtype0*
_output_shapes
: 
W
Const_9Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
X
Const_10Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
X
Const_11Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
X
Const_12Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
X
Const_13Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
X
Const_14Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
X
Const_15Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
д
RestoreV2/tensor_namesConst"/device:CPU:0*K
valueBB@B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
r
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
valueB
B *
dtype0
Н
	RestoreV2	RestoreV2Const_8RestoreV2/tensor_namesRestoreV2/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
B
IdentityIdentity	RestoreV2*
T0*
_output_shapes
:
J
AssignVariableOpAssignVariableOpdense1/kernelIdentity*
dtype0
д
RestoreV2_1/tensor_namesConst"/device:CPU:0*I
value@B>B4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
У
RestoreV2_1	RestoreV2Const_8RestoreV2_1/tensor_namesRestoreV2_1/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
F

Identity_1IdentityRestoreV2_1*
T0*
_output_shapes
:
L
AssignVariableOp_1AssignVariableOpdense1/bias
Identity_1*
dtype0
ж
RestoreV2_2/tensor_namesConst"/device:CPU:0*K
valueBB@B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_2/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
У
RestoreV2_2	RestoreV2Const_8RestoreV2_2/tensor_namesRestoreV2_2/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
F

Identity_2IdentityRestoreV2_2*
T0*
_output_shapes
:
N
AssignVariableOp_2AssignVariableOpdense2/kernel
Identity_2*
dtype0
д
RestoreV2_3/tensor_namesConst"/device:CPU:0*I
value@B>B4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_3/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
У
RestoreV2_3	RestoreV2Const_8RestoreV2_3/tensor_namesRestoreV2_3/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
F

Identity_3IdentityRestoreV2_3*
T0*
_output_shapes
:
L
AssignVariableOp_3AssignVariableOpdense2/bias
Identity_3*
dtype0
ж
RestoreV2_4/tensor_namesConst"/device:CPU:0*K
valueBB@B6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_4/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
У
RestoreV2_4	RestoreV2Const_8RestoreV2_4/tensor_namesRestoreV2_4/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
F

Identity_4IdentityRestoreV2_4*
T0*
_output_shapes
:
N
AssignVariableOp_4AssignVariableOpdense3/kernel
Identity_4*
dtype0
д
RestoreV2_5/tensor_namesConst"/device:CPU:0*I
value@B>B4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_5/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
У
RestoreV2_5	RestoreV2Const_8RestoreV2_5/tensor_namesRestoreV2_5/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
F

Identity_5IdentityRestoreV2_5*
T0*
_output_shapes
:
L
AssignVariableOp_5AssignVariableOpdense3/bias
Identity_5*
dtype0
ж
RestoreV2_6/tensor_namesConst"/device:CPU:0*K
valueBB@B6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_6/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
У
RestoreV2_6	RestoreV2Const_8RestoreV2_6/tensor_namesRestoreV2_6/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
F

Identity_6IdentityRestoreV2_6*
T0*
_output_shapes
:
N
AssignVariableOp_6AssignVariableOpoutput/kernel
Identity_6*
dtype0
д
RestoreV2_7/tensor_namesConst"/device:CPU:0*I
value@B>B4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_7/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
У
RestoreV2_7	RestoreV2Const_8RestoreV2_7/tensor_namesRestoreV2_7/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
F

Identity_7IdentityRestoreV2_7*
_output_shapes
:*
T0
L
AssignVariableOp_7AssignVariableOpoutput/bias
Identity_7*
dtype0
Щ
RestoreV2_8/tensor_namesConst"/device:CPU:0*>
value5B3B)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_8/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
У
RestoreV2_8	RestoreV2Const_8RestoreV2_8/tensor_namesRestoreV2_8/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2	
U

Identity_8IdentityRestoreV2_8"/device:CPU:0*
T0	*
_output_shapes
:
T
AssignVariableOp_8AssignVariableOpiter
Identity_8"/device:CPU:0*
dtype0	
в
RestoreV2_9/tensor_namesConst"/device:CPU:0*
_output_shapes
:*G
value>B<B2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
dtype0
t
RestoreV2_9/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
У
RestoreV2_9	RestoreV2Const_8RestoreV2_9/tensor_namesRestoreV2_9/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
F

Identity_9IdentityRestoreV2_9*
T0*
_output_shapes
:
N
AssignVariableOp_9AssignVariableOplearning_rate
Identity_9*
dtype0
Ы
RestoreV2_10/tensor_namesConst"/device:CPU:0*?
value6B4B*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_10/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
Ц
RestoreV2_10	RestoreV2Const_8RestoreV2_10/tensor_namesRestoreV2_10/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
H
Identity_10IdentityRestoreV2_10*
T0*
_output_shapes
:
H
AssignVariableOp_10AssignVariableOpdecayIdentity_10*
dtype0
Ь
RestoreV2_11/tensor_namesConst"/device:CPU:0*@
value7B5B+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_11/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ц
RestoreV2_11	RestoreV2Const_8RestoreV2_11/tensor_namesRestoreV2_11/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_11IdentityRestoreV2_11*
T0*
_output_shapes
:
I
AssignVariableOp_11AssignVariableOpbeta_1Identity_11*
dtype0
Ь
RestoreV2_12/tensor_namesConst"/device:CPU:0*@
value7B5B+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_12/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ц
RestoreV2_12	RestoreV2Const_8RestoreV2_12/tensor_namesRestoreV2_12/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_12IdentityRestoreV2_12*
_output_shapes
:*
T0
I
AssignVariableOp_12AssignVariableOpbeta_2Identity_12*
dtype0
Э
RestoreV2_13/tensor_namesConst"/device:CPU:0*A
value8B6B,optimizer/epsilon/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_13/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
valueB
B *
dtype0
Ц
RestoreV2_13	RestoreV2Const_8RestoreV2_13/tensor_namesRestoreV2_13/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_13IdentityRestoreV2_13*
T0*
_output_shapes
:
J
AssignVariableOp_13AssignVariableOpepsilonIdentity_13*
dtype0
z
total_1/Initializer/zerosConst*
valueB
 *    *
_class
loc:@total_1*
dtype0*
_output_shapes
: 
~
total_1VarHandleOp*
dtype0*
_output_shapes
: *
shape: *
shared_name	total_1*
_class
loc:@total_1
_
(total_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptotal_1*
_output_shapes
: 
o
total_1/AssignAssignVariableOptotal_1total_1/Initializer/zeros*
_class
loc:@total_1*
dtype0
w
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_class
loc:@total_1*
dtype0*
_output_shapes
: 
z
count_1/Initializer/zerosConst*
valueB
 *    *
_class
loc:@count_1*
dtype0*
_output_shapes
: 
~
count_1VarHandleOp*
shape: *
shared_name	count_1*
_class
loc:@count_1*
dtype0*
_output_shapes
: 
_
(count_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpcount_1*
_output_shapes
: 
o
count_1/AssignAssignVariableOpcount_1count_1/Initializer/zeros*
_class
loc:@count_1*
dtype0
w
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_class
loc:@count_1*
dtype0*
_output_shapes
: 
K
Const_16Const*
valueB *
dtype0*
_output_shapes
: 
U
SumSummetrics/binary_accuracy/Mean_2Const_16*
T0*
_output_shapes
: 
E
AssignAddVariableOpAssignAddVariableOptotal_1Sum*
dtype0
j
ReadVariableOpReadVariableOptotal_1^AssignAddVariableOp^Sum*
dtype0*
_output_shapes
: 
F
SizeConst*
value	B :*
dtype0*
_output_shapes
: 
B
CastCastSize*

SrcT0*
_output_shapes
: *

DstT0
^
AssignAddVariableOp_1AssignAddVariableOpcount_1Cast^AssignAddVariableOp*
dtype0
~
ReadVariableOp_1ReadVariableOpcount_1^AssignAddVariableOp^AssignAddVariableOp_1*
dtype0*
_output_shapes
: 
q
div_no_nan/ReadVariableOpReadVariableOptotal_1^AssignAddVariableOp_1*
dtype0*
_output_shapes
: 
s
div_no_nan/ReadVariableOp_1ReadVariableOpcount_1^AssignAddVariableOp_1*
dtype0*
_output_shapes
: 
o

div_no_nanDivNoNandiv_no_nan/ReadVariableOpdiv_no_nan/ReadVariableOp_1*
T0*
_output_shapes
: 
D
Identity_14Identity
div_no_nan*
_output_shapes
: *
T0
[
div_no_nan_1/ReadVariableOpReadVariableOptotal_1*
dtype0*
_output_shapes
: 
]
div_no_nan_1/ReadVariableOp_1ReadVariableOpcount_1*
dtype0*
_output_shapes
: 
u
div_no_nan_1DivNoNandiv_no_nan_1/ReadVariableOpdiv_no_nan_1/ReadVariableOp_1*
_output_shapes
: *
T0
F
Identity_15Identitydiv_no_nan_1*
_output_shapes
: *
T0
l
metric_op_wrapperConst^AssignAddVariableOp_1*
valueB *
dtype0*
_output_shapes
: 
Y
save/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
n
save/filenamePlaceholderWithDefaultsave/filename/input*
_output_shapes
: *
shape: *
dtype0
e

save/ConstPlaceholderWithDefaultsave/filename*
shape: *
dtype0*
_output_shapes
: 
№
save/Const_1Const*┐
value╡B▓ Bл{"class_name": "Model", "config": {"input_layers": ["in", 0, 0], "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": [null, 35], "dtype": "float32", "name": "in", "sparse": false}, "inbound_nodes": [], "name": "in"}, {"class_name": "Dense", "config": {"activation": "relu", "activity_regularizer": null, "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {}}, "bias_regularizer": null, "dtype": "float32", "kernel_constraint": null, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "kernel_regularizer": null, "name": "dense1", "trainable": true, "units": 100, "use_bias": true}, "inbound_nodes": [["in", 0, 0, {}]], "name": "dense1"}, {"class_name": "Dense", "config": {"activation": "relu", "activity_regularizer": null, "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {}}, "bias_regularizer": null, "dtype": "float32", "kernel_constraint": null, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "kernel_regularizer": null, "name": "dense2", "trainable": true, "units": 100, "use_bias": true}, "inbound_nodes": [["dense1", 0, 0, {}]], "name": "dense2"}, {"class_name": "Dense", "config": {"activation": "relu", "activity_regularizer": null, "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {}}, "bias_regularizer": null, "dtype": "float32", "kernel_constraint": null, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "kernel_regularizer": null, "name": "dense3", "trainable": true, "units": 100, "use_bias": true}, "inbound_nodes": [["dense2", 0, 0, {}]], "name": "dense3"}, {"class_name": "Dense", "config": {"activation": "sigmoid", "activity_regularizer": null, "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {}}, "bias_regularizer": null, "dtype": "float32", "kernel_constraint": null, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "kernel_regularizer": null, "name": "output", "trainable": true, "units": 1, "use_bias": true}, "inbound_nodes": [["dense3", 0, 0, {}]], "name": "output"}], "name": "model", "output_layers": ["output", 0, 0]}}*
dtype0*
_output_shapes
: 
╠
save/Const_2Const*П
valueЕBВ B|{"class_name": "InputLayer", "config": {"batch_input_shape": [null, 35], "dtype": "float32", "name": "in", "sparse": false}}*
dtype0*
_output_shapes
: 
ў
save/Const_3Const*║
value░Bн Bж{"class_name": "Dense", "config": {"activation": "relu", "activity_regularizer": null, "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {}}, "bias_regularizer": null, "dtype": "float32", "kernel_constraint": null, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "kernel_regularizer": null, "name": "dense1", "trainable": true, "units": 100, "use_bias": true}}*
dtype0*
_output_shapes
: 
ў
save/Const_4Const*║
value░Bн Bж{"class_name": "Dense", "config": {"activation": "relu", "activity_regularizer": null, "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {}}, "bias_regularizer": null, "dtype": "float32", "kernel_constraint": null, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "kernel_regularizer": null, "name": "dense2", "trainable": true, "units": 100, "use_bias": true}}*
dtype0*
_output_shapes
: 
ў
save/Const_5Const*
dtype0*
_output_shapes
: *║
value░Bн Bж{"class_name": "Dense", "config": {"activation": "relu", "activity_regularizer": null, "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {}}, "bias_regularizer": null, "dtype": "float32", "kernel_constraint": null, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "kernel_regularizer": null, "name": "dense3", "trainable": true, "units": 100, "use_bias": true}}
°
save/Const_6Const*╗
value▒Bо Bз{"class_name": "Dense", "config": {"activation": "sigmoid", "activity_regularizer": null, "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {}}, "bias_regularizer": null, "dtype": "float32", "kernel_constraint": null, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "kernel_regularizer": null, "name": "output", "trainable": true, "units": 1, "use_bias": true}}*
dtype0*
_output_shapes
: 
N
save/VarIsInitializedOpVarIsInitializedOpcount_1*
_output_shapes
: 
P
save/VarIsInitializedOp_1VarIsInitializedOptotal_1*
_output_shapes
: 
3
	save/initNoOp^count_1/Assign^total_1/Assign
к
save/Const_7Const*э
valueуBр B┘{"class_name": "Adam", "config": {"amsgrad": false, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "decay": 0.0, "epsilon": 1.0000000116860974e-07, "learning_rate": 0.0003486784698907286, "name": "Adam"}}*
dtype0*
_output_shapes
: 
Ї
save/SaveV2/tensor_namesConst*
_output_shapes
:*з
valueЭBЪB/.ATTRIBUTES/OBJECT_CONFIG_JSONB&layer-0/.ATTRIBUTES/OBJECT_CONFIG_JSONB3layer_with_weights-0/.ATTRIBUTES/OBJECT_CONFIG_JSONB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB3layer_with_weights-1/.ATTRIBUTES/OBJECT_CONFIG_JSONB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB3layer_with_weights-2/.ATTRIBUTES/OBJECT_CONFIG_JSONB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB3layer_with_weights-3/.ATTRIBUTES/OBJECT_CONFIG_JSONB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/.ATTRIBUTES/OBJECT_CONFIG_JSONB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB,optimizer/epsilon/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
dtype0
Н
save/SaveV2/shape_and_slicesConst*=
value4B2B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
Э
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicessave/Const_1save/Const_2save/Const_3dense1/bias/Read/ReadVariableOp!dense1/kernel/Read/ReadVariableOpsave/Const_4dense2/bias/Read/ReadVariableOp!dense2/kernel/Read/ReadVariableOpsave/Const_5dense3/bias/Read/ReadVariableOp!dense3/kernel/Read/ReadVariableOpsave/Const_6output/bias/Read/ReadVariableOp!output/kernel/Read/ReadVariableOpsave/Const_7beta_1/Read/ReadVariableOpbeta_2/Read/ReadVariableOpdecay/Read/ReadVariableOpepsilon/Read/ReadVariableOpiter/Read/ReadVariableOp!learning_rate/Read/ReadVariableOp*#
dtypes
2	
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const*
_output_shapes
: 
Ж	
save/RestoreV2/tensor_namesConst"/device:CPU:0*з
valueЭBЪB/.ATTRIBUTES/OBJECT_CONFIG_JSONB&layer-0/.ATTRIBUTES/OBJECT_CONFIG_JSONB3layer_with_weights-0/.ATTRIBUTES/OBJECT_CONFIG_JSONB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB3layer_with_weights-1/.ATTRIBUTES/OBJECT_CONFIG_JSONB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB3layer_with_weights-2/.ATTRIBUTES/OBJECT_CONFIG_JSONB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB3layer_with_weights-3/.ATTRIBUTES/OBJECT_CONFIG_JSONB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/.ATTRIBUTES/OBJECT_CONFIG_JSONB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB,optimizer/epsilon/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
Я
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*=
value4B2B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
Г
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*#
dtypes
2	*h
_output_shapesV
T:::::::::::::::::::::

	save/NoOpNoOp

save/NoOp_1NoOp

save/NoOp_2NoOp
N
save/IdentityIdentitysave/RestoreV2:3*
_output_shapes
:*
T0
R
save/AssignVariableOpAssignVariableOpdense1/biassave/Identity*
dtype0
P
save/Identity_1Identitysave/RestoreV2:4*
T0*
_output_shapes
:
X
save/AssignVariableOp_1AssignVariableOpdense1/kernelsave/Identity_1*
dtype0

save/NoOp_3NoOp
P
save/Identity_2Identitysave/RestoreV2:6*
T0*
_output_shapes
:
V
save/AssignVariableOp_2AssignVariableOpdense2/biassave/Identity_2*
dtype0
P
save/Identity_3Identitysave/RestoreV2:7*
_output_shapes
:*
T0
X
save/AssignVariableOp_3AssignVariableOpdense2/kernelsave/Identity_3*
dtype0

save/NoOp_4NoOp
P
save/Identity_4Identitysave/RestoreV2:9*
_output_shapes
:*
T0
V
save/AssignVariableOp_4AssignVariableOpdense3/biassave/Identity_4*
dtype0
Q
save/Identity_5Identitysave/RestoreV2:10*
_output_shapes
:*
T0
X
save/AssignVariableOp_5AssignVariableOpdense3/kernelsave/Identity_5*
dtype0

save/NoOp_5NoOp
Q
save/Identity_6Identitysave/RestoreV2:12*
T0*
_output_shapes
:
V
save/AssignVariableOp_6AssignVariableOpoutput/biassave/Identity_6*
dtype0
Q
save/Identity_7Identitysave/RestoreV2:13*
_output_shapes
:*
T0
X
save/AssignVariableOp_7AssignVariableOpoutput/kernelsave/Identity_7*
dtype0

save/NoOp_6NoOp
Q
save/Identity_8Identitysave/RestoreV2:15*
T0*
_output_shapes
:
Q
save/AssignVariableOp_8AssignVariableOpbeta_1save/Identity_8*
dtype0
Q
save/Identity_9Identitysave/RestoreV2:16*
T0*
_output_shapes
:
Q
save/AssignVariableOp_9AssignVariableOpbeta_2save/Identity_9*
dtype0
R
save/Identity_10Identitysave/RestoreV2:17*
T0*
_output_shapes
:
R
save/AssignVariableOp_10AssignVariableOpdecaysave/Identity_10*
dtype0
R
save/Identity_11Identitysave/RestoreV2:18*
T0*
_output_shapes
:
T
save/AssignVariableOp_11AssignVariableOpepsilonsave/Identity_11*
dtype0
a
save/Identity_12Identitysave/RestoreV2:19"/device:CPU:0*
_output_shapes
:*
T0	
`
save/AssignVariableOp_12AssignVariableOpitersave/Identity_12"/device:CPU:0*
dtype0	
R
save/Identity_13Identitysave/RestoreV2:20*
_output_shapes
:*
T0
Z
save/AssignVariableOp_13AssignVariableOplearning_ratesave/Identity_13*
dtype0
╨
save/restore_all/NoOpNoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_10^save/AssignVariableOp_11^save/AssignVariableOp_13^save/AssignVariableOp_2^save/AssignVariableOp_3^save/AssignVariableOp_4^save/AssignVariableOp_5^save/AssignVariableOp_6^save/AssignVariableOp_7^save/AssignVariableOp_8^save/AssignVariableOp_9
^save/NoOp^save/NoOp_1^save/NoOp_2^save/NoOp_3^save/NoOp_4^save/NoOp_5^save/NoOp_6
I
save/restore_all/NoOp_1NoOp^save/AssignVariableOp_12"/device:CPU:0
J
save/restore_allNoOp^save/restore_all/NoOp^save/restore_all/NoOp_1
0
init_1NoOp^count_1/Assign^total_1/Assign"D
save/Const:0save/control_dependency:0save/restore_all 5 @F8"╟
trainable_variablesпм
|
dense1/kernel:0dense1/kernel/Assign#dense1/kernel/Read/ReadVariableOp:0(2*dense1/kernel/Initializer/random_uniform:08
k
dense1/bias:0dense1/bias/Assign!dense1/bias/Read/ReadVariableOp:0(2dense1/bias/Initializer/zeros:08
|
dense2/kernel:0dense2/kernel/Assign#dense2/kernel/Read/ReadVariableOp:0(2*dense2/kernel/Initializer/random_uniform:08
k
dense2/bias:0dense2/bias/Assign!dense2/bias/Read/ReadVariableOp:0(2dense2/bias/Initializer/zeros:08
|
dense3/kernel:0dense3/kernel/Assign#dense3/kernel/Read/ReadVariableOp:0(2*dense3/kernel/Initializer/random_uniform:08
k
dense3/bias:0dense3/bias/Assign!dense3/bias/Read/ReadVariableOp:0(2dense3/bias/Initializer/zeros:08
|
output/kernel:0output/kernel/Assign#output/kernel/Read/ReadVariableOp:0(2*output/kernel/Initializer/random_uniform:08
k
output/bias:0output/bias/Assign!output/bias/Read/ReadVariableOp:0(2output/bias/Initializer/zeros:08"═
local_variables╣╢
Y
	total_1:0total_1/Assigntotal_1/Read/ReadVariableOp:0(2total_1/Initializer/zeros:0
Y
	count_1:0count_1/Assigncount_1/Read/ReadVariableOp:0(2count_1/Initializer/zeros:0"Ка
cond_context°ЯЇЯ
ц

rloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/cond_textrloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0sloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_t:0 *Д
eloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_scalar:0
sloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:0
sloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:1
rloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0
sloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_t:0ш
rloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0rloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0▄
eloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_scalar:0sloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:1
╨r
tloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/cond_text_1rloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0sloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_f:0*·5
Кloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Merge:0
Кloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Merge:1
Лloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:0
Лloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:1
Нloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
Нloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:1
оloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:0
оloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1
оloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:2
зloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0
йloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1
дloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim:0
аloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims:0
йloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0
лloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1
жloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim:0
вloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1:0
бloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis:0
Ьloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat:0
жloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims:0
еloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const:0
еloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shape:0
Яloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like:0
Чloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/x:0
Хloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims:0
Шloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch:0
Ъloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1:0
Сloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0
Мloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
Нloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0
Нloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0
rloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0
sloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_f:0
gloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/values/rank:0
hloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/values/shape:0
hloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/weights/rank:0
iloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/weights/shape:0Ф
hloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/values/shape:0зloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0З
hloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/weights/rank:0Ъloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1:0Д
gloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/values/rank:0Шloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch:0Ч
iloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/weights/shape:0йloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0ш
rloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0rloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:02Э,
Ъ,
Мloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/cond_textМloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0Нloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0 *ч(
оloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:0
оloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1
оloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:2
зloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0
йloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1
дloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim:0
аloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims:0
йloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0
лloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1
жloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim:0
вloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1:0
бloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis:0
Ьloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat:0
жloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims:0
еloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const:0
еloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shape:0
Яloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like:0
Чloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/x:0
Хloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims:0
Мloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
Нloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0
hloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/values/shape:0
iloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/weights/shape:0Щ
iloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/weights/shape:0лloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1╪
йloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0йloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0Ю
Мloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0Мloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0╘
зloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0зloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0Ц
hloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/values/shape:0йloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:12╤
╬
Оloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/cond_text_1Мloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0Нloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0*Ы

Нloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
Нloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:1
Сloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0
Мloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
Нloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0д
Сloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0Нloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0Ю
Мloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0Мloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
Э
oloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/cond_textoloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0ploss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_t:0 *─
zloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency:0
oloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0
ploss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_t:0т
oloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0oloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0
Х
qloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/cond_text_1oloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0ploss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f:0*╝
uloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch:0
wloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1:0
wloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2:0
wloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3:0
uloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_0:0
uloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_1:0
uloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_2:0
uloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_4:0
uloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_5:0
uloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_7:0
|loss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency_1:0
oloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0
ploss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f:0
eloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_scalar:0
ploss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge:0
hloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/values/shape:0
iloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/weights/shape:0т
oloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0oloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0ф
iloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/weights/shape:0wloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1:0р
eloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_scalar:0wloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3:0у
hloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/values/shape:0wloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2:0щ
ploss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge:0uloss/output_loss/binary_crossentropy/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch:0"`
global_stepQO
M
iter:0iter/Assigniter/Read/ReadVariableOp:0(2iter/Initializer/zeros:0"Г
	variablesїЄ
|
dense1/kernel:0dense1/kernel/Assign#dense1/kernel/Read/ReadVariableOp:0(2*dense1/kernel/Initializer/random_uniform:08
k
dense1/bias:0dense1/bias/Assign!dense1/bias/Read/ReadVariableOp:0(2dense1/bias/Initializer/zeros:08
|
dense2/kernel:0dense2/kernel/Assign#dense2/kernel/Read/ReadVariableOp:0(2*dense2/kernel/Initializer/random_uniform:08
k
dense2/bias:0dense2/bias/Assign!dense2/bias/Read/ReadVariableOp:0(2dense2/bias/Initializer/zeros:08
|
dense3/kernel:0dense3/kernel/Assign#dense3/kernel/Read/ReadVariableOp:0(2*dense3/kernel/Initializer/random_uniform:08
k
dense3/bias:0dense3/bias/Assign!dense3/bias/Read/ReadVariableOp:0(2dense3/bias/Initializer/zeros:08
|
output/kernel:0output/kernel/Assign#output/kernel/Read/ReadVariableOp:0(2*output/kernel/Initializer/random_uniform:08
k
output/bias:0output/bias/Assign!output/bias/Read/ReadVariableOp:0(2output/bias/Initializer/zeros:08
M
iter:0iter/Assigniter/Read/ReadVariableOp:0(2iter/Initializer/zeros:0
y
learning_rate:0learning_rate/Assign#learning_rate/Read/ReadVariableOp:0(2)learning_rate/Initializer/initial_value:0
Y
decay:0decay/Assigndecay/Read/ReadVariableOp:0(2!decay/Initializer/initial_value:0
]
beta_1:0beta_1/Assignbeta_1/Read/ReadVariableOp:0(2"beta_1/Initializer/initial_value:0
]
beta_2:0beta_2/Assignbeta_2/Read/ReadVariableOp:0(2"beta_2/Initializer/initial_value:0
a
	epsilon:0epsilon/Assignepsilon/Read/ReadVariableOp:0(2#epsilon/Initializer/initial_value:0*█
eval╥
@
output_target/
output_target:0                  
!
in
in:0         #=
predictions/output'
output/Sigmoid:0         
loss

loss/mul:0 @
!metrics/binary_accuracy/update_op
metric_op_wrapper:0 4
metrics/binary_accuracy/value
Identity_15:0 tensorflow/supervised/eval*@
__saved_model_init_op'%
__saved_model_init_op
init_1√№
√╟
:
Add
x"T
y"T
z"T"
Ttype:
2	
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
=
Mul
x"T
y"T
z"T"
Ttype:
2	Р

NoOp
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	И
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
0
Sigmoid
x"T
y"T"
Ttype:

2
:
Sub
x"T
y"T
z"T"
Ttype:
2	
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshapeИ
9
VarIsInitializedOp
resource
is_initialized
И"serve*2.0.0-alpha02v1.12.0-9492-g2c319fb4158▀▀
e
inPlaceholder*
dtype0*'
_output_shapes
:         #*
shape:         #
б
.dense1/kernel/Initializer/random_uniform/shapeConst*
valueB"#   d   * 
_class
loc:@dense1/kernel*
dtype0*
_output_shapes
:
У
,dense1/kernel/Initializer/random_uniform/minConst*
valueB
 *╧рW╛* 
_class
loc:@dense1/kernel*
dtype0*
_output_shapes
: 
У
,dense1/kernel/Initializer/random_uniform/maxConst*
_output_shapes
: *
valueB
 *╧рW>* 
_class
loc:@dense1/kernel*
dtype0
╧
6dense1/kernel/Initializer/random_uniform/RandomUniformRandomUniform.dense1/kernel/Initializer/random_uniform/shape*
T0* 
_class
loc:@dense1/kernel*
dtype0*
_output_shapes

:#d
╥
,dense1/kernel/Initializer/random_uniform/subSub,dense1/kernel/Initializer/random_uniform/max,dense1/kernel/Initializer/random_uniform/min*
T0* 
_class
loc:@dense1/kernel*
_output_shapes
: 
ф
,dense1/kernel/Initializer/random_uniform/mulMul6dense1/kernel/Initializer/random_uniform/RandomUniform,dense1/kernel/Initializer/random_uniform/sub* 
_class
loc:@dense1/kernel*
_output_shapes

:#d*
T0
╓
(dense1/kernel/Initializer/random_uniformAdd,dense1/kernel/Initializer/random_uniform/mul,dense1/kernel/Initializer/random_uniform/min*
T0* 
_class
loc:@dense1/kernel*
_output_shapes

:#d
Ш
dense1/kernelVarHandleOp* 
_class
loc:@dense1/kernel*
dtype0*
_output_shapes
: *
shape
:#d*
shared_namedense1/kernel
k
.dense1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense1/kernel*
_output_shapes
: 
Р
dense1/kernel/AssignAssignVariableOpdense1/kernel(dense1/kernel/Initializer/random_uniform* 
_class
loc:@dense1/kernel*
dtype0
С
!dense1/kernel/Read/ReadVariableOpReadVariableOpdense1/kernel* 
_class
loc:@dense1/kernel*
dtype0*
_output_shapes

:#d
К
dense1/bias/Initializer/zerosConst*
_output_shapes
:d*
valueBd*    *
_class
loc:@dense1/bias*
dtype0
О
dense1/biasVarHandleOp*
shared_namedense1/bias*
_class
loc:@dense1/bias*
dtype0*
_output_shapes
: *
shape:d
g
,dense1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense1/bias*
_output_shapes
: 

dense1/bias/AssignAssignVariableOpdense1/biasdense1/bias/Initializer/zeros*
_class
loc:@dense1/bias*
dtype0
З
dense1/bias/Read/ReadVariableOpReadVariableOpdense1/bias*
_output_shapes
:d*
_class
loc:@dense1/bias*
dtype0
j
dense1/MatMul/ReadVariableOpReadVariableOpdense1/kernel*
dtype0*
_output_shapes

:#d
k
dense1/MatMulMatMulindense1/MatMul/ReadVariableOp*'
_output_shapes
:         d*
T0
e
dense1/BiasAdd/ReadVariableOpReadVariableOpdense1/bias*
dtype0*
_output_shapes
:d
y
dense1/BiasAddBiasAdddense1/MatMuldense1/BiasAdd/ReadVariableOp*'
_output_shapes
:         d*
T0
U
dense1/ReluReludense1/BiasAdd*
T0*'
_output_shapes
:         d
б
.dense2/kernel/Initializer/random_uniform/shapeConst*
valueB"d   d   * 
_class
loc:@dense2/kernel*
dtype0*
_output_shapes
:
У
,dense2/kernel/Initializer/random_uniform/minConst*
valueB
 *м\1╛* 
_class
loc:@dense2/kernel*
dtype0*
_output_shapes
: 
У
,dense2/kernel/Initializer/random_uniform/maxConst*
valueB
 *м\1>* 
_class
loc:@dense2/kernel*
dtype0*
_output_shapes
: 
╧
6dense2/kernel/Initializer/random_uniform/RandomUniformRandomUniform.dense2/kernel/Initializer/random_uniform/shape*
T0* 
_class
loc:@dense2/kernel*
dtype0*
_output_shapes

:dd
╥
,dense2/kernel/Initializer/random_uniform/subSub,dense2/kernel/Initializer/random_uniform/max,dense2/kernel/Initializer/random_uniform/min*
T0* 
_class
loc:@dense2/kernel*
_output_shapes
: 
ф
,dense2/kernel/Initializer/random_uniform/mulMul6dense2/kernel/Initializer/random_uniform/RandomUniform,dense2/kernel/Initializer/random_uniform/sub* 
_class
loc:@dense2/kernel*
_output_shapes

:dd*
T0
╓
(dense2/kernel/Initializer/random_uniformAdd,dense2/kernel/Initializer/random_uniform/mul,dense2/kernel/Initializer/random_uniform/min*
T0* 
_class
loc:@dense2/kernel*
_output_shapes

:dd
Ш
dense2/kernelVarHandleOp*
dtype0*
_output_shapes
: *
shape
:dd*
shared_namedense2/kernel* 
_class
loc:@dense2/kernel
k
.dense2/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense2/kernel*
_output_shapes
: 
Р
dense2/kernel/AssignAssignVariableOpdense2/kernel(dense2/kernel/Initializer/random_uniform* 
_class
loc:@dense2/kernel*
dtype0
С
!dense2/kernel/Read/ReadVariableOpReadVariableOpdense2/kernel* 
_class
loc:@dense2/kernel*
dtype0*
_output_shapes

:dd
К
dense2/bias/Initializer/zerosConst*
valueBd*    *
_class
loc:@dense2/bias*
dtype0*
_output_shapes
:d
О
dense2/biasVarHandleOp*
dtype0*
_output_shapes
: *
shape:d*
shared_namedense2/bias*
_class
loc:@dense2/bias
g
,dense2/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense2/bias*
_output_shapes
: 

dense2/bias/AssignAssignVariableOpdense2/biasdense2/bias/Initializer/zeros*
_class
loc:@dense2/bias*
dtype0
З
dense2/bias/Read/ReadVariableOpReadVariableOpdense2/bias*
_output_shapes
:d*
_class
loc:@dense2/bias*
dtype0
j
dense2/MatMul/ReadVariableOpReadVariableOpdense2/kernel*
dtype0*
_output_shapes

:dd
t
dense2/MatMulMatMuldense1/Reludense2/MatMul/ReadVariableOp*
T0*'
_output_shapes
:         d
e
dense2/BiasAdd/ReadVariableOpReadVariableOpdense2/bias*
dtype0*
_output_shapes
:d
y
dense2/BiasAddBiasAdddense2/MatMuldense2/BiasAdd/ReadVariableOp*
T0*'
_output_shapes
:         d
U
dense2/ReluReludense2/BiasAdd*
T0*'
_output_shapes
:         d
б
.dense3/kernel/Initializer/random_uniform/shapeConst*
valueB"d   d   * 
_class
loc:@dense3/kernel*
dtype0*
_output_shapes
:
У
,dense3/kernel/Initializer/random_uniform/minConst*
valueB
 *м\1╛* 
_class
loc:@dense3/kernel*
dtype0*
_output_shapes
: 
У
,dense3/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *м\1>* 
_class
loc:@dense3/kernel
╧
6dense3/kernel/Initializer/random_uniform/RandomUniformRandomUniform.dense3/kernel/Initializer/random_uniform/shape*
T0* 
_class
loc:@dense3/kernel*
dtype0*
_output_shapes

:dd
╥
,dense3/kernel/Initializer/random_uniform/subSub,dense3/kernel/Initializer/random_uniform/max,dense3/kernel/Initializer/random_uniform/min*
T0* 
_class
loc:@dense3/kernel*
_output_shapes
: 
ф
,dense3/kernel/Initializer/random_uniform/mulMul6dense3/kernel/Initializer/random_uniform/RandomUniform,dense3/kernel/Initializer/random_uniform/sub*
T0* 
_class
loc:@dense3/kernel*
_output_shapes

:dd
╓
(dense3/kernel/Initializer/random_uniformAdd,dense3/kernel/Initializer/random_uniform/mul,dense3/kernel/Initializer/random_uniform/min*
T0* 
_class
loc:@dense3/kernel*
_output_shapes

:dd
Ш
dense3/kernelVarHandleOp*
shared_namedense3/kernel* 
_class
loc:@dense3/kernel*
dtype0*
_output_shapes
: *
shape
:dd
k
.dense3/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense3/kernel*
_output_shapes
: 
Р
dense3/kernel/AssignAssignVariableOpdense3/kernel(dense3/kernel/Initializer/random_uniform* 
_class
loc:@dense3/kernel*
dtype0
С
!dense3/kernel/Read/ReadVariableOpReadVariableOpdense3/kernel* 
_class
loc:@dense3/kernel*
dtype0*
_output_shapes

:dd
К
dense3/bias/Initializer/zerosConst*
valueBd*    *
_class
loc:@dense3/bias*
dtype0*
_output_shapes
:d
О
dense3/biasVarHandleOp*
_class
loc:@dense3/bias*
dtype0*
_output_shapes
: *
shape:d*
shared_namedense3/bias
g
,dense3/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense3/bias*
_output_shapes
: 

dense3/bias/AssignAssignVariableOpdense3/biasdense3/bias/Initializer/zeros*
dtype0*
_class
loc:@dense3/bias
З
dense3/bias/Read/ReadVariableOpReadVariableOpdense3/bias*
dtype0*
_output_shapes
:d*
_class
loc:@dense3/bias
j
dense3/MatMul/ReadVariableOpReadVariableOpdense3/kernel*
dtype0*
_output_shapes

:dd
t
dense3/MatMulMatMuldense2/Reludense3/MatMul/ReadVariableOp*'
_output_shapes
:         d*
T0
e
dense3/BiasAdd/ReadVariableOpReadVariableOpdense3/bias*
dtype0*
_output_shapes
:d
y
dense3/BiasAddBiasAdddense3/MatMuldense3/BiasAdd/ReadVariableOp*
T0*'
_output_shapes
:         d
U
dense3/ReluReludense3/BiasAdd*'
_output_shapes
:         d*
T0
б
.output/kernel/Initializer/random_uniform/shapeConst*
valueB"d      * 
_class
loc:@output/kernel*
dtype0*
_output_shapes
:
У
,output/kernel/Initializer/random_uniform/minConst*
valueB
 *<Хy╛* 
_class
loc:@output/kernel*
dtype0*
_output_shapes
: 
У
,output/kernel/Initializer/random_uniform/maxConst*
valueB
 *<Хy>* 
_class
loc:@output/kernel*
dtype0*
_output_shapes
: 
╧
6output/kernel/Initializer/random_uniform/RandomUniformRandomUniform.output/kernel/Initializer/random_uniform/shape*
T0* 
_class
loc:@output/kernel*
dtype0*
_output_shapes

:d
╥
,output/kernel/Initializer/random_uniform/subSub,output/kernel/Initializer/random_uniform/max,output/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0* 
_class
loc:@output/kernel
ф
,output/kernel/Initializer/random_uniform/mulMul6output/kernel/Initializer/random_uniform/RandomUniform,output/kernel/Initializer/random_uniform/sub*
T0* 
_class
loc:@output/kernel*
_output_shapes

:d
╓
(output/kernel/Initializer/random_uniformAdd,output/kernel/Initializer/random_uniform/mul,output/kernel/Initializer/random_uniform/min*
T0* 
_class
loc:@output/kernel*
_output_shapes

:d
Ш
output/kernelVarHandleOp*
shared_nameoutput/kernel* 
_class
loc:@output/kernel*
dtype0*
_output_shapes
: *
shape
:d
k
.output/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpoutput/kernel*
_output_shapes
: 
Р
output/kernel/AssignAssignVariableOpoutput/kernel(output/kernel/Initializer/random_uniform* 
_class
loc:@output/kernel*
dtype0
С
!output/kernel/Read/ReadVariableOpReadVariableOpoutput/kernel*
_output_shapes

:d* 
_class
loc:@output/kernel*
dtype0
К
output/bias/Initializer/zerosConst*
valueB*    *
_class
loc:@output/bias*
dtype0*
_output_shapes
:
О
output/biasVarHandleOp*
_output_shapes
: *
shape:*
shared_nameoutput/bias*
_class
loc:@output/bias*
dtype0
g
,output/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpoutput/bias*
_output_shapes
: 

output/bias/AssignAssignVariableOpoutput/biasoutput/bias/Initializer/zeros*
_class
loc:@output/bias*
dtype0
З
output/bias/Read/ReadVariableOpReadVariableOpoutput/bias*
_class
loc:@output/bias*
dtype0*
_output_shapes
:
j
output/MatMul/ReadVariableOpReadVariableOpoutput/kernel*
dtype0*
_output_shapes

:d
t
output/MatMulMatMuldense3/Reluoutput/MatMul/ReadVariableOp*
T0*'
_output_shapes
:         
e
output/BiasAdd/ReadVariableOpReadVariableOpoutput/bias*
dtype0*
_output_shapes
:
y
output/BiasAddBiasAddoutput/MatMuloutput/BiasAdd/ReadVariableOp*
T0*'
_output_shapes
:         
[
output/SigmoidSigmoidoutput/BiasAdd*'
_output_shapes
:         *
T0
+
predict/group_depsNoOp^output/Sigmoid
U
ConstConst"/device:CPU:0*
_output_shapes
: *
valueB B *
dtype0
W
Const_1Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
W
Const_2Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
W
Const_3Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
W
Const_4Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
W
Const_5Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
\
Const_6Const"/device:CPU:0*
valueB Bmodel*
dtype0*
_output_shapes
: 
W
Const_7Const"/device:CPU:0*
_output_shapes
: *
valueB B *
dtype0
W
Const_8Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
W
Const_9Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
X
Const_10Const"/device:CPU:0*
dtype0*
_output_shapes
: *
valueB B 
X
Const_11Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
X
Const_12Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
д
RestoreV2/tensor_namesConst"/device:CPU:0*K
valueBB@B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
r
RestoreV2/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Н
	RestoreV2	RestoreV2Const_6RestoreV2/tensor_namesRestoreV2/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
B
IdentityIdentity	RestoreV2*
T0*
_output_shapes
:
J
AssignVariableOpAssignVariableOpdense1/kernelIdentity*
dtype0
д
RestoreV2_1/tensor_namesConst"/device:CPU:0*
_output_shapes
:*I
value@B>B4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
dtype0
t
RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
У
RestoreV2_1	RestoreV2Const_6RestoreV2_1/tensor_namesRestoreV2_1/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
F

Identity_1IdentityRestoreV2_1*
T0*
_output_shapes
:
L
AssignVariableOp_1AssignVariableOpdense1/bias
Identity_1*
dtype0
ж
RestoreV2_2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*K
valueBB@B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
dtype0
t
RestoreV2_2/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
У
RestoreV2_2	RestoreV2Const_6RestoreV2_2/tensor_namesRestoreV2_2/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
F

Identity_2IdentityRestoreV2_2*
T0*
_output_shapes
:
N
AssignVariableOp_2AssignVariableOpdense2/kernel
Identity_2*
dtype0
д
RestoreV2_3/tensor_namesConst"/device:CPU:0*I
value@B>B4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_3/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
У
RestoreV2_3	RestoreV2Const_6RestoreV2_3/tensor_namesRestoreV2_3/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
F

Identity_3IdentityRestoreV2_3*
T0*
_output_shapes
:
L
AssignVariableOp_3AssignVariableOpdense2/bias
Identity_3*
dtype0
ж
RestoreV2_4/tensor_namesConst"/device:CPU:0*K
valueBB@B6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_4/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
У
RestoreV2_4	RestoreV2Const_6RestoreV2_4/tensor_namesRestoreV2_4/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
F

Identity_4IdentityRestoreV2_4*
T0*
_output_shapes
:
N
AssignVariableOp_4AssignVariableOpdense3/kernel
Identity_4*
dtype0
д
RestoreV2_5/tensor_namesConst"/device:CPU:0*I
value@B>B4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_5/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
valueB
B *
dtype0
У
RestoreV2_5	RestoreV2Const_6RestoreV2_5/tensor_namesRestoreV2_5/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
F

Identity_5IdentityRestoreV2_5*
T0*
_output_shapes
:
L
AssignVariableOp_5AssignVariableOpdense3/bias
Identity_5*
dtype0
ж
RestoreV2_6/tensor_namesConst"/device:CPU:0*K
valueBB@B6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_6/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
У
RestoreV2_6	RestoreV2Const_6RestoreV2_6/tensor_namesRestoreV2_6/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
F

Identity_6IdentityRestoreV2_6*
_output_shapes
:*
T0
N
AssignVariableOp_6AssignVariableOpoutput/kernel
Identity_6*
dtype0
д
RestoreV2_7/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*I
value@B>B4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
t
RestoreV2_7/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
У
RestoreV2_7	RestoreV2Const_6RestoreV2_7/tensor_namesRestoreV2_7/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
F

Identity_7IdentityRestoreV2_7*
_output_shapes
:*
T0
L
AssignVariableOp_7AssignVariableOpoutput/bias
Identity_7*
dtype0
M
VarIsInitializedOpVarIsInitializedOpdense3/bias*
_output_shapes
: 
Q
VarIsInitializedOp_1VarIsInitializedOpdense2/kernel*
_output_shapes
: 
O
VarIsInitializedOp_2VarIsInitializedOpdense2/bias*
_output_shapes
: 
Q
VarIsInitializedOp_3VarIsInitializedOpoutput/kernel*
_output_shapes
: 
O
VarIsInitializedOp_4VarIsInitializedOpdense1/bias*
_output_shapes
: 
Q
VarIsInitializedOp_5VarIsInitializedOpdense1/kernel*
_output_shapes
: 
O
VarIsInitializedOp_6VarIsInitializedOpoutput/bias*
_output_shapes
: 
Q
VarIsInitializedOp_7VarIsInitializedOpdense3/kernel*
_output_shapes
: 
╝
initNoOp^dense1/bias/Assign^dense1/kernel/Assign^dense2/bias/Assign^dense2/kernel/Assign^dense3/bias/Assign^dense3/kernel/Assign^output/bias/Assign^output/kernel/Assign
Y
save/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
n
save/filenamePlaceholderWithDefaultsave/filename/input*
dtype0*
_output_shapes
: *
shape: 
e

save/ConstPlaceholderWithDefaultsave/filename*
dtype0*
_output_shapes
: *
shape: 
№
save/Const_1Const*┐
value╡B▓ Bл{"class_name": "Model", "config": {"input_layers": ["in", 0, 0], "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": [null, 35], "dtype": "float32", "name": "in", "sparse": false}, "inbound_nodes": [], "name": "in"}, {"class_name": "Dense", "config": {"activation": "relu", "activity_regularizer": null, "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {}}, "bias_regularizer": null, "dtype": "float32", "kernel_constraint": null, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "kernel_regularizer": null, "name": "dense1", "trainable": true, "units": 100, "use_bias": true}, "inbound_nodes": [["in", 0, 0, {}]], "name": "dense1"}, {"class_name": "Dense", "config": {"activation": "relu", "activity_regularizer": null, "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {}}, "bias_regularizer": null, "dtype": "float32", "kernel_constraint": null, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "kernel_regularizer": null, "name": "dense2", "trainable": true, "units": 100, "use_bias": true}, "inbound_nodes": [["dense1", 0, 0, {}]], "name": "dense2"}, {"class_name": "Dense", "config": {"activation": "relu", "activity_regularizer": null, "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {}}, "bias_regularizer": null, "dtype": "float32", "kernel_constraint": null, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "kernel_regularizer": null, "name": "dense3", "trainable": true, "units": 100, "use_bias": true}, "inbound_nodes": [["dense2", 0, 0, {}]], "name": "dense3"}, {"class_name": "Dense", "config": {"activation": "sigmoid", "activity_regularizer": null, "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {}}, "bias_regularizer": null, "dtype": "float32", "kernel_constraint": null, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "kernel_regularizer": null, "name": "output", "trainable": true, "units": 1, "use_bias": true}, "inbound_nodes": [["dense3", 0, 0, {}]], "name": "output"}], "name": "model", "output_layers": ["output", 0, 0]}}*
dtype0*
_output_shapes
: 
╠
save/Const_2Const*П
valueЕBВ B|{"class_name": "InputLayer", "config": {"batch_input_shape": [null, 35], "dtype": "float32", "name": "in", "sparse": false}}*
dtype0*
_output_shapes
: 
ў
save/Const_3Const*
_output_shapes
: *║
value░Bн Bж{"class_name": "Dense", "config": {"activation": "relu", "activity_regularizer": null, "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {}}, "bias_regularizer": null, "dtype": "float32", "kernel_constraint": null, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "kernel_regularizer": null, "name": "dense1", "trainable": true, "units": 100, "use_bias": true}}*
dtype0
ў
save/Const_4Const*
dtype0*
_output_shapes
: *║
value░Bн Bж{"class_name": "Dense", "config": {"activation": "relu", "activity_regularizer": null, "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {}}, "bias_regularizer": null, "dtype": "float32", "kernel_constraint": null, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "kernel_regularizer": null, "name": "dense2", "trainable": true, "units": 100, "use_bias": true}}
ў
save/Const_5Const*║
value░Bн Bж{"class_name": "Dense", "config": {"activation": "relu", "activity_regularizer": null, "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {}}, "bias_regularizer": null, "dtype": "float32", "kernel_constraint": null, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "kernel_regularizer": null, "name": "dense3", "trainable": true, "units": 100, "use_bias": true}}*
dtype0*
_output_shapes
: 
°
save/Const_6Const*╗
value▒Bо Bз{"class_name": "Dense", "config": {"activation": "sigmoid", "activity_regularizer": null, "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {}}, "bias_regularizer": null, "dtype": "float32", "kernel_constraint": null, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "kernel_regularizer": null, "name": "output", "trainable": true, "units": 1, "use_bias": true}}*
dtype0*
_output_shapes
: 
╖
save/SaveV2/tensor_namesConst*ъ
valueрB▌B/.ATTRIBUTES/OBJECT_CONFIG_JSONB&layer-0/.ATTRIBUTES/OBJECT_CONFIG_JSONB3layer_with_weights-0/.ATTRIBUTES/OBJECT_CONFIG_JSONB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB3layer_with_weights-1/.ATTRIBUTES/OBJECT_CONFIG_JSONB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB3layer_with_weights-2/.ATTRIBUTES/OBJECT_CONFIG_JSONB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB3layer_with_weights-3/.ATTRIBUTES/OBJECT_CONFIG_JSONB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:

save/SaveV2/shape_and_slicesConst*/
value&B$B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
█
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicessave/Const_1save/Const_2save/Const_3dense1/bias/Read/ReadVariableOp!dense1/kernel/Read/ReadVariableOpsave/Const_4dense2/bias/Read/ReadVariableOp!dense2/kernel/Read/ReadVariableOpsave/Const_5dense3/bias/Read/ReadVariableOp!dense3/kernel/Read/ReadVariableOpsave/Const_6output/bias/Read/ReadVariableOp!output/kernel/Read/ReadVariableOp*
dtypes
2
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const*
_output_shapes
: 
╔
save/RestoreV2/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*ъ
valueрB▌B/.ATTRIBUTES/OBJECT_CONFIG_JSONB&layer-0/.ATTRIBUTES/OBJECT_CONFIG_JSONB3layer_with_weights-0/.ATTRIBUTES/OBJECT_CONFIG_JSONB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB3layer_with_weights-1/.ATTRIBUTES/OBJECT_CONFIG_JSONB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB3layer_with_weights-2/.ATTRIBUTES/OBJECT_CONFIG_JSONB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB3layer_with_weights-3/.ATTRIBUTES/OBJECT_CONFIG_JSONB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
С
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*/
value&B$B B B B B B B B B B B B B B 
р
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*
dtypes
2*L
_output_shapes:
8::::::::::::::

	save/NoOpNoOp

save/NoOp_1NoOp

save/NoOp_2NoOp
N
save/IdentityIdentitysave/RestoreV2:3*
T0*
_output_shapes
:
R
save/AssignVariableOpAssignVariableOpdense1/biassave/Identity*
dtype0
P
save/Identity_1Identitysave/RestoreV2:4*
_output_shapes
:*
T0
X
save/AssignVariableOp_1AssignVariableOpdense1/kernelsave/Identity_1*
dtype0

save/NoOp_3NoOp
P
save/Identity_2Identitysave/RestoreV2:6*
_output_shapes
:*
T0
V
save/AssignVariableOp_2AssignVariableOpdense2/biassave/Identity_2*
dtype0
P
save/Identity_3Identitysave/RestoreV2:7*
T0*
_output_shapes
:
X
save/AssignVariableOp_3AssignVariableOpdense2/kernelsave/Identity_3*
dtype0

save/NoOp_4NoOp
P
save/Identity_4Identitysave/RestoreV2:9*
_output_shapes
:*
T0
V
save/AssignVariableOp_4AssignVariableOpdense3/biassave/Identity_4*
dtype0
Q
save/Identity_5Identitysave/RestoreV2:10*
_output_shapes
:*
T0
X
save/AssignVariableOp_5AssignVariableOpdense3/kernelsave/Identity_5*
dtype0

save/NoOp_5NoOp
Q
save/Identity_6Identitysave/RestoreV2:12*
_output_shapes
:*
T0
V
save/AssignVariableOp_6AssignVariableOpoutput/biassave/Identity_6*
dtype0
Q
save/Identity_7Identitysave/RestoreV2:13*
T0*
_output_shapes
:
X
save/AssignVariableOp_7AssignVariableOpoutput/kernelsave/Identity_7*
dtype0
╕
save/restore_allNoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_2^save/AssignVariableOp_3^save/AssignVariableOp_4^save/AssignVariableOp_5^save/AssignVariableOp_6^save/AssignVariableOp_7
^save/NoOp^save/NoOp_1^save/NoOp_2^save/NoOp_3^save/NoOp_4^save/NoOp_5

init_1NoOp"D
save/Const:0save/control_dependency:0save/restore_all 5 @F8"╜
	variablesпм
|
dense1/kernel:0dense1/kernel/Assign#dense1/kernel/Read/ReadVariableOp:0(2*dense1/kernel/Initializer/random_uniform:08
k
dense1/bias:0dense1/bias/Assign!dense1/bias/Read/ReadVariableOp:0(2dense1/bias/Initializer/zeros:08
|
dense2/kernel:0dense2/kernel/Assign#dense2/kernel/Read/ReadVariableOp:0(2*dense2/kernel/Initializer/random_uniform:08
k
dense2/bias:0dense2/bias/Assign!dense2/bias/Read/ReadVariableOp:0(2dense2/bias/Initializer/zeros:08
|
dense3/kernel:0dense3/kernel/Assign#dense3/kernel/Read/ReadVariableOp:0(2*dense3/kernel/Initializer/random_uniform:08
k
dense3/bias:0dense3/bias/Assign!dense3/bias/Read/ReadVariableOp:0(2dense3/bias/Initializer/zeros:08
|
output/kernel:0output/kernel/Assign#output/kernel/Read/ReadVariableOp:0(2*output/kernel/Initializer/random_uniform:08
k
output/bias:0output/bias/Assign!output/bias/Read/ReadVariableOp:0(2output/bias/Initializer/zeros:08"╟
trainable_variablesпм
|
dense1/kernel:0dense1/kernel/Assign#dense1/kernel/Read/ReadVariableOp:0(2*dense1/kernel/Initializer/random_uniform:08
k
dense1/bias:0dense1/bias/Assign!dense1/bias/Read/ReadVariableOp:0(2dense1/bias/Initializer/zeros:08
|
dense2/kernel:0dense2/kernel/Assign#dense2/kernel/Read/ReadVariableOp:0(2*dense2/kernel/Initializer/random_uniform:08
k
dense2/bias:0dense2/bias/Assign!dense2/bias/Read/ReadVariableOp:0(2dense2/bias/Initializer/zeros:08
|
dense3/kernel:0dense3/kernel/Assign#dense3/kernel/Read/ReadVariableOp:0(2*dense3/kernel/Initializer/random_uniform:08
k
dense3/bias:0dense3/bias/Assign!dense3/bias/Read/ReadVariableOp:0(2dense3/bias/Initializer/zeros:08
|
output/kernel:0output/kernel/Assign#output/kernel/Read/ReadVariableOp:0(2*output/kernel/Initializer/random_uniform:08
k
output/bias:0output/bias/Assign!output/bias/Read/ReadVariableOp:0(2output/bias/Initializer/zeros:08*Е
serving_defaultr
!
in
in:0         #1
output'
output/Sigmoid:0         tensorflow/serving/predict*@
__saved_model_init_op'%
__saved_model_init_op
init_1