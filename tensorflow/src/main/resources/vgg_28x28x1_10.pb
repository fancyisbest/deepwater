
[
global_step/initial_valueConst*
dtype0*
value	B : *
_output_shapes
: 
m
global_stepVariable*
dtype0*
shape: *
	container *
shared_name *
_output_shapes
: 
Ž
global_step/AssignAssignglobal_stepglobal_step/initial_value*
validate_shape(*
_class
loc:@global_step*
use_locking(*
T0*
_output_shapes
: 
j
global_step/readIdentityglobal_step*
_class
loc:@global_step*
T0*
_output_shapes
: 
z
'inference/BatchImageInput_0/PlaceholderPlaceholder*
dtype0*
shape: *(
_output_shapes
:˙˙˙˙˙˙˙˙˙

)inference/BatchImageInput_0/Reshape/shapeConst*
dtype0*%
valueB"˙˙˙˙         *
_output_shapes
:
ź
#inference/BatchImageInput_0/ReshapeReshape'inference/BatchImageInput_0/Placeholder)inference/BatchImageInput_0/Reshape/shape*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙
~
,inference/BatchImageInput_0/ImageSummary/tagConst*
dtype0*"
valueB Bbatch_image_input*
_output_shapes
: 
ß
(inference/BatchImageInput_0/ImageSummaryImageSummary,inference/BatchImageInput_0/ImageSummary/tag#inference/BatchImageInput_0/Reshape*
	bad_colorB:˙  ˙*

max_images
*
T0*
_output_shapes
: 

&inference/ZeroPadding2D_0/Pad/paddingsConst*
dtype0*9
value0B."                             *
_output_shapes

:
Ť
inference/ZeroPadding2D_0/PadPad#inference/BatchImageInput_0/Reshape&inference/ZeroPadding2D_0/Pad/paddings*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
 inference/Convolution2D_0/Sqrt/xConst*
dtype0*
valueB
 *9c;*
_output_shapes
: 
i
inference/Convolution2D_0/SqrtSqrt inference/Convolution2D_0/Sqrt/x*
T0*
_output_shapes
: 
˘
 inference/Convolution2D_0/kernelVariable*
dtype0*
shape:@*
	container *
shared_name *&
_output_shapes
:@
Ń
Cinference/Convolution2D_0/kernel/Initializer/truncated_normal/shapeConst*
dtype0*3
_class)
'%loc:@inference/Convolution2D_0/kernel*%
valueB"         @   *
_output_shapes
:
ź
Binference/Convolution2D_0/kernel/Initializer/truncated_normal/meanConst*
dtype0*3
_class)
'%loc:@inference/Convolution2D_0/kernel*
valueB
 *    *
_output_shapes
: 
˛
Minference/Convolution2D_0/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalCinference/Convolution2D_0/kernel/Initializer/truncated_normal/shape*&
_output_shapes
:@*
dtype0*
seed2*
seedŇ	*
T0*3
_class)
'%loc:@inference/Convolution2D_0/kernel

Ainference/Convolution2D_0/kernel/Initializer/truncated_normal/mulMulMinference/Convolution2D_0/kernel/Initializer/truncated_normal/TruncatedNormalinference/Convolution2D_0/Sqrt*3
_class)
'%loc:@inference/Convolution2D_0/kernel*
T0*&
_output_shapes
:@
ą
=inference/Convolution2D_0/kernel/Initializer/truncated_normalAddAinference/Convolution2D_0/kernel/Initializer/truncated_normal/mulBinference/Convolution2D_0/kernel/Initializer/truncated_normal/mean*3
_class)
'%loc:@inference/Convolution2D_0/kernel*
T0*&
_output_shapes
:@
Ą
'inference/Convolution2D_0/kernel/AssignAssign inference/Convolution2D_0/kernel=inference/Convolution2D_0/kernel/Initializer/truncated_normal*
validate_shape(*3
_class)
'%loc:@inference/Convolution2D_0/kernel*
use_locking(*
T0*&
_output_shapes
:@
š
%inference/Convolution2D_0/kernel/readIdentity inference/Convolution2D_0/kernel*3
_class)
'%loc:@inference/Convolution2D_0/kernel*
T0*&
_output_shapes
:@

 inference/Convolution2D_0/Conv2DConv2Dinference/ZeroPadding2D_0/Pad%inference/Convolution2D_0/kernel/read*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0

$inference/RectifiedLinearUnit_0/reluRelu inference/Convolution2D_0/Conv2D*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@

&inference/ZeroPadding2D_1/Pad/paddingsConst*
dtype0*9
value0B."                             *
_output_shapes

:
Ź
inference/ZeroPadding2D_1/PadPad$inference/RectifiedLinearUnit_0/relu&inference/ZeroPadding2D_1/Pad/paddings*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  @
e
 inference/Convolution2D_1/Sqrt/xConst*
dtype0*
valueB
 *9c;*
_output_shapes
: 
i
inference/Convolution2D_1/SqrtSqrt inference/Convolution2D_1/Sqrt/x*
T0*
_output_shapes
: 
˘
 inference/Convolution2D_1/kernelVariable*
dtype0*
shape:@@*
	container *
shared_name *&
_output_shapes
:@@
Ń
Cinference/Convolution2D_1/kernel/Initializer/truncated_normal/shapeConst*
dtype0*3
_class)
'%loc:@inference/Convolution2D_1/kernel*%
valueB"      @   @   *
_output_shapes
:
ź
Binference/Convolution2D_1/kernel/Initializer/truncated_normal/meanConst*
dtype0*3
_class)
'%loc:@inference/Convolution2D_1/kernel*
valueB
 *    *
_output_shapes
: 
˛
Minference/Convolution2D_1/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalCinference/Convolution2D_1/kernel/Initializer/truncated_normal/shape*&
_output_shapes
:@@*
dtype0*
seed2*
seedŇ	*
T0*3
_class)
'%loc:@inference/Convolution2D_1/kernel

Ainference/Convolution2D_1/kernel/Initializer/truncated_normal/mulMulMinference/Convolution2D_1/kernel/Initializer/truncated_normal/TruncatedNormalinference/Convolution2D_1/Sqrt*3
_class)
'%loc:@inference/Convolution2D_1/kernel*
T0*&
_output_shapes
:@@
ą
=inference/Convolution2D_1/kernel/Initializer/truncated_normalAddAinference/Convolution2D_1/kernel/Initializer/truncated_normal/mulBinference/Convolution2D_1/kernel/Initializer/truncated_normal/mean*3
_class)
'%loc:@inference/Convolution2D_1/kernel*
T0*&
_output_shapes
:@@
Ą
'inference/Convolution2D_1/kernel/AssignAssign inference/Convolution2D_1/kernel=inference/Convolution2D_1/kernel/Initializer/truncated_normal*
validate_shape(*3
_class)
'%loc:@inference/Convolution2D_1/kernel*
use_locking(*
T0*&
_output_shapes
:@@
š
%inference/Convolution2D_1/kernel/readIdentity inference/Convolution2D_1/kernel*3
_class)
'%loc:@inference/Convolution2D_1/kernel*
T0*&
_output_shapes
:@@

 inference/Convolution2D_1/Conv2DConv2Dinference/ZeroPadding2D_1/Pad%inference/Convolution2D_1/kernel/read*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  @*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0

$inference/RectifiedLinearUnit_1/reluRelu inference/Convolution2D_1/Conv2D*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  @
Ý
 inference/MaxPooling2D_0/MaxPoolMaxPool$inference/RectifiedLinearUnit_1/relu*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
data_formatNHWC*
paddingSAME*
strides
*
ksize
*
T0

&inference/ZeroPadding2D_2/Pad/paddingsConst*
dtype0*9
value0B."                             *
_output_shapes

:
¨
inference/ZeroPadding2D_2/PadPad inference/MaxPooling2D_0/MaxPool&inference/ZeroPadding2D_2/Pad/paddings*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
e
 inference/Convolution2D_2/Sqrt/xConst*
dtype0*
valueB
 *9ă:*
_output_shapes
: 
i
inference/Convolution2D_2/SqrtSqrt inference/Convolution2D_2/Sqrt/x*
T0*
_output_shapes
: 
¤
 inference/Convolution2D_2/kernelVariable*
dtype0*
shape:@*
	container *
shared_name *'
_output_shapes
:@
Ń
Cinference/Convolution2D_2/kernel/Initializer/truncated_normal/shapeConst*
dtype0*3
_class)
'%loc:@inference/Convolution2D_2/kernel*%
valueB"      @      *
_output_shapes
:
ź
Binference/Convolution2D_2/kernel/Initializer/truncated_normal/meanConst*
dtype0*3
_class)
'%loc:@inference/Convolution2D_2/kernel*
valueB
 *    *
_output_shapes
: 
ł
Minference/Convolution2D_2/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalCinference/Convolution2D_2/kernel/Initializer/truncated_normal/shape*'
_output_shapes
:@*
dtype0*
seed2-*
seedŇ	*
T0*3
_class)
'%loc:@inference/Convolution2D_2/kernel

Ainference/Convolution2D_2/kernel/Initializer/truncated_normal/mulMulMinference/Convolution2D_2/kernel/Initializer/truncated_normal/TruncatedNormalinference/Convolution2D_2/Sqrt*3
_class)
'%loc:@inference/Convolution2D_2/kernel*
T0*'
_output_shapes
:@
˛
=inference/Convolution2D_2/kernel/Initializer/truncated_normalAddAinference/Convolution2D_2/kernel/Initializer/truncated_normal/mulBinference/Convolution2D_2/kernel/Initializer/truncated_normal/mean*3
_class)
'%loc:@inference/Convolution2D_2/kernel*
T0*'
_output_shapes
:@
˘
'inference/Convolution2D_2/kernel/AssignAssign inference/Convolution2D_2/kernel=inference/Convolution2D_2/kernel/Initializer/truncated_normal*
validate_shape(*3
_class)
'%loc:@inference/Convolution2D_2/kernel*
use_locking(*
T0*'
_output_shapes
:@
ş
%inference/Convolution2D_2/kernel/readIdentity inference/Convolution2D_2/kernel*3
_class)
'%loc:@inference/Convolution2D_2/kernel*
T0*'
_output_shapes
:@

 inference/Convolution2D_2/Conv2DConv2Dinference/ZeroPadding2D_2/Pad%inference/Convolution2D_2/kernel/read*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0

$inference/RectifiedLinearUnit_2/reluRelu inference/Convolution2D_2/Conv2D*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙

&inference/ZeroPadding2D_3/Pad/paddingsConst*
dtype0*9
value0B."                             *
_output_shapes

:
­
inference/ZeroPadding2D_3/PadPad$inference/RectifiedLinearUnit_2/relu&inference/ZeroPadding2D_3/Pad/paddings*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
 inference/Convolution2D_3/Sqrt/xConst*
dtype0*
valueB
 *9ă:*
_output_shapes
: 
i
inference/Convolution2D_3/SqrtSqrt inference/Convolution2D_3/Sqrt/x*
T0*
_output_shapes
: 
Ś
 inference/Convolution2D_3/kernelVariable*
dtype0*
shape:*
	container *
shared_name *(
_output_shapes
:
Ń
Cinference/Convolution2D_3/kernel/Initializer/truncated_normal/shapeConst*
dtype0*3
_class)
'%loc:@inference/Convolution2D_3/kernel*%
valueB"            *
_output_shapes
:
ź
Binference/Convolution2D_3/kernel/Initializer/truncated_normal/meanConst*
dtype0*3
_class)
'%loc:@inference/Convolution2D_3/kernel*
valueB
 *    *
_output_shapes
: 
´
Minference/Convolution2D_3/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalCinference/Convolution2D_3/kernel/Initializer/truncated_normal/shape*(
_output_shapes
:*
dtype0*
seed2;*
seedŇ	*
T0*3
_class)
'%loc:@inference/Convolution2D_3/kernel

Ainference/Convolution2D_3/kernel/Initializer/truncated_normal/mulMulMinference/Convolution2D_3/kernel/Initializer/truncated_normal/TruncatedNormalinference/Convolution2D_3/Sqrt*3
_class)
'%loc:@inference/Convolution2D_3/kernel*
T0*(
_output_shapes
:
ł
=inference/Convolution2D_3/kernel/Initializer/truncated_normalAddAinference/Convolution2D_3/kernel/Initializer/truncated_normal/mulBinference/Convolution2D_3/kernel/Initializer/truncated_normal/mean*3
_class)
'%loc:@inference/Convolution2D_3/kernel*
T0*(
_output_shapes
:
Ł
'inference/Convolution2D_3/kernel/AssignAssign inference/Convolution2D_3/kernel=inference/Convolution2D_3/kernel/Initializer/truncated_normal*
validate_shape(*3
_class)
'%loc:@inference/Convolution2D_3/kernel*
use_locking(*
T0*(
_output_shapes
:
ť
%inference/Convolution2D_3/kernel/readIdentity inference/Convolution2D_3/kernel*3
_class)
'%loc:@inference/Convolution2D_3/kernel*
T0*(
_output_shapes
:

 inference/Convolution2D_3/Conv2DConv2Dinference/ZeroPadding2D_3/Pad%inference/Convolution2D_3/kernel/read*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0

$inference/RectifiedLinearUnit_3/reluRelu inference/Convolution2D_3/Conv2D*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ţ
 inference/MaxPooling2D_1/MaxPoolMaxPool$inference/RectifiedLinearUnit_3/relu*0
_output_shapes
:˙˙˙˙˙˙˙˙˙

*
data_formatNHWC*
paddingSAME*
strides
*
ksize
*
T0

&inference/ZeroPadding2D_4/Pad/paddingsConst*
dtype0*9
value0B."                             *
_output_shapes

:
Š
inference/ZeroPadding2D_4/PadPad inference/MaxPooling2D_1/MaxPool&inference/ZeroPadding2D_4/Pad/paddings*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
 inference/Convolution2D_4/Sqrt/xConst*
dtype0*
valueB
 *9c:*
_output_shapes
: 
i
inference/Convolution2D_4/SqrtSqrt inference/Convolution2D_4/Sqrt/x*
T0*
_output_shapes
: 
Ś
 inference/Convolution2D_4/kernelVariable*
dtype0*
shape:*
	container *
shared_name *(
_output_shapes
:
Ń
Cinference/Convolution2D_4/kernel/Initializer/truncated_normal/shapeConst*
dtype0*3
_class)
'%loc:@inference/Convolution2D_4/kernel*%
valueB"            *
_output_shapes
:
ź
Binference/Convolution2D_4/kernel/Initializer/truncated_normal/meanConst*
dtype0*3
_class)
'%loc:@inference/Convolution2D_4/kernel*
valueB
 *    *
_output_shapes
: 
´
Minference/Convolution2D_4/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalCinference/Convolution2D_4/kernel/Initializer/truncated_normal/shape*(
_output_shapes
:*
dtype0*
seed2J*
seedŇ	*
T0*3
_class)
'%loc:@inference/Convolution2D_4/kernel

Ainference/Convolution2D_4/kernel/Initializer/truncated_normal/mulMulMinference/Convolution2D_4/kernel/Initializer/truncated_normal/TruncatedNormalinference/Convolution2D_4/Sqrt*3
_class)
'%loc:@inference/Convolution2D_4/kernel*
T0*(
_output_shapes
:
ł
=inference/Convolution2D_4/kernel/Initializer/truncated_normalAddAinference/Convolution2D_4/kernel/Initializer/truncated_normal/mulBinference/Convolution2D_4/kernel/Initializer/truncated_normal/mean*3
_class)
'%loc:@inference/Convolution2D_4/kernel*
T0*(
_output_shapes
:
Ł
'inference/Convolution2D_4/kernel/AssignAssign inference/Convolution2D_4/kernel=inference/Convolution2D_4/kernel/Initializer/truncated_normal*
validate_shape(*3
_class)
'%loc:@inference/Convolution2D_4/kernel*
use_locking(*
T0*(
_output_shapes
:
ť
%inference/Convolution2D_4/kernel/readIdentity inference/Convolution2D_4/kernel*3
_class)
'%loc:@inference/Convolution2D_4/kernel*
T0*(
_output_shapes
:

 inference/Convolution2D_4/Conv2DConv2Dinference/ZeroPadding2D_4/Pad%inference/Convolution2D_4/kernel/read*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0

$inference/RectifiedLinearUnit_4/reluRelu inference/Convolution2D_4/Conv2D*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙

&inference/ZeroPadding2D_5/Pad/paddingsConst*
dtype0*9
value0B."                             *
_output_shapes

:
­
inference/ZeroPadding2D_5/PadPad$inference/RectifiedLinearUnit_4/relu&inference/ZeroPadding2D_5/Pad/paddings*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
 inference/Convolution2D_5/Sqrt/xConst*
dtype0*
valueB
 *9c:*
_output_shapes
: 
i
inference/Convolution2D_5/SqrtSqrt inference/Convolution2D_5/Sqrt/x*
T0*
_output_shapes
: 
Ś
 inference/Convolution2D_5/kernelVariable*
dtype0*
shape:*
	container *
shared_name *(
_output_shapes
:
Ń
Cinference/Convolution2D_5/kernel/Initializer/truncated_normal/shapeConst*
dtype0*3
_class)
'%loc:@inference/Convolution2D_5/kernel*%
valueB"            *
_output_shapes
:
ź
Binference/Convolution2D_5/kernel/Initializer/truncated_normal/meanConst*
dtype0*3
_class)
'%loc:@inference/Convolution2D_5/kernel*
valueB
 *    *
_output_shapes
: 
´
Minference/Convolution2D_5/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalCinference/Convolution2D_5/kernel/Initializer/truncated_normal/shape*(
_output_shapes
:*
dtype0*
seed2X*
seedŇ	*
T0*3
_class)
'%loc:@inference/Convolution2D_5/kernel

Ainference/Convolution2D_5/kernel/Initializer/truncated_normal/mulMulMinference/Convolution2D_5/kernel/Initializer/truncated_normal/TruncatedNormalinference/Convolution2D_5/Sqrt*3
_class)
'%loc:@inference/Convolution2D_5/kernel*
T0*(
_output_shapes
:
ł
=inference/Convolution2D_5/kernel/Initializer/truncated_normalAddAinference/Convolution2D_5/kernel/Initializer/truncated_normal/mulBinference/Convolution2D_5/kernel/Initializer/truncated_normal/mean*3
_class)
'%loc:@inference/Convolution2D_5/kernel*
T0*(
_output_shapes
:
Ł
'inference/Convolution2D_5/kernel/AssignAssign inference/Convolution2D_5/kernel=inference/Convolution2D_5/kernel/Initializer/truncated_normal*
validate_shape(*3
_class)
'%loc:@inference/Convolution2D_5/kernel*
use_locking(*
T0*(
_output_shapes
:
ť
%inference/Convolution2D_5/kernel/readIdentity inference/Convolution2D_5/kernel*3
_class)
'%loc:@inference/Convolution2D_5/kernel*
T0*(
_output_shapes
:

 inference/Convolution2D_5/Conv2DConv2Dinference/ZeroPadding2D_5/Pad%inference/Convolution2D_5/kernel/read*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0

$inference/RectifiedLinearUnit_5/reluRelu inference/Convolution2D_5/Conv2D*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙

&inference/ZeroPadding2D_6/Pad/paddingsConst*
dtype0*9
value0B."                             *
_output_shapes

:
­
inference/ZeroPadding2D_6/PadPad$inference/RectifiedLinearUnit_5/relu&inference/ZeroPadding2D_6/Pad/paddings*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
 inference/Convolution2D_6/Sqrt/xConst*
dtype0*
valueB
 *9c:*
_output_shapes
: 
i
inference/Convolution2D_6/SqrtSqrt inference/Convolution2D_6/Sqrt/x*
T0*
_output_shapes
: 
Ś
 inference/Convolution2D_6/kernelVariable*
dtype0*
shape:*
	container *
shared_name *(
_output_shapes
:
Ń
Cinference/Convolution2D_6/kernel/Initializer/truncated_normal/shapeConst*
dtype0*3
_class)
'%loc:@inference/Convolution2D_6/kernel*%
valueB"            *
_output_shapes
:
ź
Binference/Convolution2D_6/kernel/Initializer/truncated_normal/meanConst*
dtype0*3
_class)
'%loc:@inference/Convolution2D_6/kernel*
valueB
 *    *
_output_shapes
: 
´
Minference/Convolution2D_6/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalCinference/Convolution2D_6/kernel/Initializer/truncated_normal/shape*(
_output_shapes
:*
dtype0*
seed2f*
seedŇ	*
T0*3
_class)
'%loc:@inference/Convolution2D_6/kernel

Ainference/Convolution2D_6/kernel/Initializer/truncated_normal/mulMulMinference/Convolution2D_6/kernel/Initializer/truncated_normal/TruncatedNormalinference/Convolution2D_6/Sqrt*3
_class)
'%loc:@inference/Convolution2D_6/kernel*
T0*(
_output_shapes
:
ł
=inference/Convolution2D_6/kernel/Initializer/truncated_normalAddAinference/Convolution2D_6/kernel/Initializer/truncated_normal/mulBinference/Convolution2D_6/kernel/Initializer/truncated_normal/mean*3
_class)
'%loc:@inference/Convolution2D_6/kernel*
T0*(
_output_shapes
:
Ł
'inference/Convolution2D_6/kernel/AssignAssign inference/Convolution2D_6/kernel=inference/Convolution2D_6/kernel/Initializer/truncated_normal*
validate_shape(*3
_class)
'%loc:@inference/Convolution2D_6/kernel*
use_locking(*
T0*(
_output_shapes
:
ť
%inference/Convolution2D_6/kernel/readIdentity inference/Convolution2D_6/kernel*3
_class)
'%loc:@inference/Convolution2D_6/kernel*
T0*(
_output_shapes
:

 inference/Convolution2D_6/Conv2DConv2Dinference/ZeroPadding2D_6/Pad%inference/Convolution2D_6/kernel/read*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0

$inference/RectifiedLinearUnit_6/reluRelu inference/Convolution2D_6/Conv2D*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ţ
 inference/MaxPooling2D_2/MaxPoolMaxPool$inference/RectifiedLinearUnit_6/relu*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
data_formatNHWC*
paddingSAME*
strides
*
ksize
*
T0

&inference/ZeroPadding2D_7/Pad/paddingsConst*
dtype0*9
value0B."                             *
_output_shapes

:
Š
inference/ZeroPadding2D_7/PadPad inference/MaxPooling2D_2/MaxPool&inference/ZeroPadding2D_7/Pad/paddings*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙


e
 inference/Convolution2D_7/Sqrt/xConst*
dtype0*
valueB
 *9ă9*
_output_shapes
: 
i
inference/Convolution2D_7/SqrtSqrt inference/Convolution2D_7/Sqrt/x*
T0*
_output_shapes
: 
Ś
 inference/Convolution2D_7/kernelVariable*
dtype0*
shape:*
	container *
shared_name *(
_output_shapes
:
Ń
Cinference/Convolution2D_7/kernel/Initializer/truncated_normal/shapeConst*
dtype0*3
_class)
'%loc:@inference/Convolution2D_7/kernel*%
valueB"            *
_output_shapes
:
ź
Binference/Convolution2D_7/kernel/Initializer/truncated_normal/meanConst*
dtype0*3
_class)
'%loc:@inference/Convolution2D_7/kernel*
valueB
 *    *
_output_shapes
: 
´
Minference/Convolution2D_7/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalCinference/Convolution2D_7/kernel/Initializer/truncated_normal/shape*(
_output_shapes
:*
dtype0*
seed2u*
seedŇ	*
T0*3
_class)
'%loc:@inference/Convolution2D_7/kernel

Ainference/Convolution2D_7/kernel/Initializer/truncated_normal/mulMulMinference/Convolution2D_7/kernel/Initializer/truncated_normal/TruncatedNormalinference/Convolution2D_7/Sqrt*3
_class)
'%loc:@inference/Convolution2D_7/kernel*
T0*(
_output_shapes
:
ł
=inference/Convolution2D_7/kernel/Initializer/truncated_normalAddAinference/Convolution2D_7/kernel/Initializer/truncated_normal/mulBinference/Convolution2D_7/kernel/Initializer/truncated_normal/mean*3
_class)
'%loc:@inference/Convolution2D_7/kernel*
T0*(
_output_shapes
:
Ł
'inference/Convolution2D_7/kernel/AssignAssign inference/Convolution2D_7/kernel=inference/Convolution2D_7/kernel/Initializer/truncated_normal*
validate_shape(*3
_class)
'%loc:@inference/Convolution2D_7/kernel*
use_locking(*
T0*(
_output_shapes
:
ť
%inference/Convolution2D_7/kernel/readIdentity inference/Convolution2D_7/kernel*3
_class)
'%loc:@inference/Convolution2D_7/kernel*
T0*(
_output_shapes
:

 inference/Convolution2D_7/Conv2DConv2Dinference/ZeroPadding2D_7/Pad%inference/Convolution2D_7/kernel/read*0
_output_shapes
:˙˙˙˙˙˙˙˙˙

*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0

$inference/RectifiedLinearUnit_7/reluRelu inference/Convolution2D_7/Conv2D*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙



&inference/ZeroPadding2D_8/Pad/paddingsConst*
dtype0*9
value0B."                             *
_output_shapes

:
­
inference/ZeroPadding2D_8/PadPad$inference/RectifiedLinearUnit_7/relu&inference/ZeroPadding2D_8/Pad/paddings*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
 inference/Convolution2D_8/Sqrt/xConst*
dtype0*
valueB
 *9ă9*
_output_shapes
: 
i
inference/Convolution2D_8/SqrtSqrt inference/Convolution2D_8/Sqrt/x*
T0*
_output_shapes
: 
Ś
 inference/Convolution2D_8/kernelVariable*
dtype0*
shape:*
	container *
shared_name *(
_output_shapes
:
Ń
Cinference/Convolution2D_8/kernel/Initializer/truncated_normal/shapeConst*
dtype0*3
_class)
'%loc:@inference/Convolution2D_8/kernel*%
valueB"            *
_output_shapes
:
ź
Binference/Convolution2D_8/kernel/Initializer/truncated_normal/meanConst*
dtype0*3
_class)
'%loc:@inference/Convolution2D_8/kernel*
valueB
 *    *
_output_shapes
: 
ľ
Minference/Convolution2D_8/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalCinference/Convolution2D_8/kernel/Initializer/truncated_normal/shape*(
_output_shapes
:*
dtype0*
seed2*
seedŇ	*
T0*3
_class)
'%loc:@inference/Convolution2D_8/kernel

Ainference/Convolution2D_8/kernel/Initializer/truncated_normal/mulMulMinference/Convolution2D_8/kernel/Initializer/truncated_normal/TruncatedNormalinference/Convolution2D_8/Sqrt*3
_class)
'%loc:@inference/Convolution2D_8/kernel*
T0*(
_output_shapes
:
ł
=inference/Convolution2D_8/kernel/Initializer/truncated_normalAddAinference/Convolution2D_8/kernel/Initializer/truncated_normal/mulBinference/Convolution2D_8/kernel/Initializer/truncated_normal/mean*3
_class)
'%loc:@inference/Convolution2D_8/kernel*
T0*(
_output_shapes
:
Ł
'inference/Convolution2D_8/kernel/AssignAssign inference/Convolution2D_8/kernel=inference/Convolution2D_8/kernel/Initializer/truncated_normal*
validate_shape(*3
_class)
'%loc:@inference/Convolution2D_8/kernel*
use_locking(*
T0*(
_output_shapes
:
ť
%inference/Convolution2D_8/kernel/readIdentity inference/Convolution2D_8/kernel*3
_class)
'%loc:@inference/Convolution2D_8/kernel*
T0*(
_output_shapes
:

 inference/Convolution2D_8/Conv2DConv2Dinference/ZeroPadding2D_8/Pad%inference/Convolution2D_8/kernel/read*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0

$inference/RectifiedLinearUnit_8/reluRelu inference/Convolution2D_8/Conv2D*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙

&inference/ZeroPadding2D_9/Pad/paddingsConst*
dtype0*9
value0B."                             *
_output_shapes

:
­
inference/ZeroPadding2D_9/PadPad$inference/RectifiedLinearUnit_8/relu&inference/ZeroPadding2D_9/Pad/paddings*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
 inference/Convolution2D_9/Sqrt/xConst*
dtype0*
valueB
 *9ă9*
_output_shapes
: 
i
inference/Convolution2D_9/SqrtSqrt inference/Convolution2D_9/Sqrt/x*
T0*
_output_shapes
: 
Ś
 inference/Convolution2D_9/kernelVariable*
dtype0*
shape:*
	container *
shared_name *(
_output_shapes
:
Ń
Cinference/Convolution2D_9/kernel/Initializer/truncated_normal/shapeConst*
dtype0*3
_class)
'%loc:@inference/Convolution2D_9/kernel*%
valueB"            *
_output_shapes
:
ź
Binference/Convolution2D_9/kernel/Initializer/truncated_normal/meanConst*
dtype0*3
_class)
'%loc:@inference/Convolution2D_9/kernel*
valueB
 *    *
_output_shapes
: 
ľ
Minference/Convolution2D_9/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalCinference/Convolution2D_9/kernel/Initializer/truncated_normal/shape*(
_output_shapes
:*
dtype0*
seed2*
seedŇ	*
T0*3
_class)
'%loc:@inference/Convolution2D_9/kernel

Ainference/Convolution2D_9/kernel/Initializer/truncated_normal/mulMulMinference/Convolution2D_9/kernel/Initializer/truncated_normal/TruncatedNormalinference/Convolution2D_9/Sqrt*3
_class)
'%loc:@inference/Convolution2D_9/kernel*
T0*(
_output_shapes
:
ł
=inference/Convolution2D_9/kernel/Initializer/truncated_normalAddAinference/Convolution2D_9/kernel/Initializer/truncated_normal/mulBinference/Convolution2D_9/kernel/Initializer/truncated_normal/mean*3
_class)
'%loc:@inference/Convolution2D_9/kernel*
T0*(
_output_shapes
:
Ł
'inference/Convolution2D_9/kernel/AssignAssign inference/Convolution2D_9/kernel=inference/Convolution2D_9/kernel/Initializer/truncated_normal*
validate_shape(*3
_class)
'%loc:@inference/Convolution2D_9/kernel*
use_locking(*
T0*(
_output_shapes
:
ť
%inference/Convolution2D_9/kernel/readIdentity inference/Convolution2D_9/kernel*3
_class)
'%loc:@inference/Convolution2D_9/kernel*
T0*(
_output_shapes
:

 inference/Convolution2D_9/Conv2DConv2Dinference/ZeroPadding2D_9/Pad%inference/Convolution2D_9/kernel/read*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0

$inference/RectifiedLinearUnit_9/reluRelu inference/Convolution2D_9/Conv2D*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ţ
 inference/MaxPooling2D_3/MaxPoolMaxPool$inference/RectifiedLinearUnit_9/relu*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
data_formatNHWC*
paddingSAME*
strides
*
ksize
*
T0

'inference/ZeroPadding2D_10/Pad/paddingsConst*
dtype0*9
value0B."                             *
_output_shapes

:
Ť
inference/ZeroPadding2D_10/PadPad inference/MaxPooling2D_3/MaxPool'inference/ZeroPadding2D_10/Pad/paddings*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙		
f
!inference/Convolution2D_10/Sqrt/xConst*
dtype0*
valueB
 *9ă9*
_output_shapes
: 
k
inference/Convolution2D_10/SqrtSqrt!inference/Convolution2D_10/Sqrt/x*
T0*
_output_shapes
: 
§
!inference/Convolution2D_10/kernelVariable*
dtype0*
shape:*
	container *
shared_name *(
_output_shapes
:
Ó
Dinference/Convolution2D_10/kernel/Initializer/truncated_normal/shapeConst*
dtype0*4
_class*
(&loc:@inference/Convolution2D_10/kernel*%
valueB"            *
_output_shapes
:
ž
Cinference/Convolution2D_10/kernel/Initializer/truncated_normal/meanConst*
dtype0*4
_class*
(&loc:@inference/Convolution2D_10/kernel*
valueB
 *    *
_output_shapes
: 
¸
Ninference/Convolution2D_10/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalDinference/Convolution2D_10/kernel/Initializer/truncated_normal/shape*(
_output_shapes
:*
dtype0*
seed2 *
seedŇ	*
T0*4
_class*
(&loc:@inference/Convolution2D_10/kernel
Ł
Binference/Convolution2D_10/kernel/Initializer/truncated_normal/mulMulNinference/Convolution2D_10/kernel/Initializer/truncated_normal/TruncatedNormalinference/Convolution2D_10/Sqrt*4
_class*
(&loc:@inference/Convolution2D_10/kernel*
T0*(
_output_shapes
:
ˇ
>inference/Convolution2D_10/kernel/Initializer/truncated_normalAddBinference/Convolution2D_10/kernel/Initializer/truncated_normal/mulCinference/Convolution2D_10/kernel/Initializer/truncated_normal/mean*4
_class*
(&loc:@inference/Convolution2D_10/kernel*
T0*(
_output_shapes
:
§
(inference/Convolution2D_10/kernel/AssignAssign!inference/Convolution2D_10/kernel>inference/Convolution2D_10/kernel/Initializer/truncated_normal*
validate_shape(*4
_class*
(&loc:@inference/Convolution2D_10/kernel*
use_locking(*
T0*(
_output_shapes
:
ž
&inference/Convolution2D_10/kernel/readIdentity!inference/Convolution2D_10/kernel*4
_class*
(&loc:@inference/Convolution2D_10/kernel*
T0*(
_output_shapes
:

!inference/Convolution2D_10/Conv2DConv2Dinference/ZeroPadding2D_10/Pad&inference/Convolution2D_10/kernel/read*0
_output_shapes
:˙˙˙˙˙˙˙˙˙		*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0

%inference/RectifiedLinearUnit_10/reluRelu!inference/Convolution2D_10/Conv2D*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙		

'inference/ZeroPadding2D_11/Pad/paddingsConst*
dtype0*9
value0B."                             *
_output_shapes

:
°
inference/ZeroPadding2D_11/PadPad%inference/RectifiedLinearUnit_10/relu'inference/ZeroPadding2D_11/Pad/paddings*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
f
!inference/Convolution2D_11/Sqrt/xConst*
dtype0*
valueB
 *9ă9*
_output_shapes
: 
k
inference/Convolution2D_11/SqrtSqrt!inference/Convolution2D_11/Sqrt/x*
T0*
_output_shapes
: 
§
!inference/Convolution2D_11/kernelVariable*
dtype0*
shape:*
	container *
shared_name *(
_output_shapes
:
Ó
Dinference/Convolution2D_11/kernel/Initializer/truncated_normal/shapeConst*
dtype0*4
_class*
(&loc:@inference/Convolution2D_11/kernel*%
valueB"            *
_output_shapes
:
ž
Cinference/Convolution2D_11/kernel/Initializer/truncated_normal/meanConst*
dtype0*4
_class*
(&loc:@inference/Convolution2D_11/kernel*
valueB
 *    *
_output_shapes
: 
¸
Ninference/Convolution2D_11/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalDinference/Convolution2D_11/kernel/Initializer/truncated_normal/shape*(
_output_shapes
:*
dtype0*
seed2Ž*
seedŇ	*
T0*4
_class*
(&loc:@inference/Convolution2D_11/kernel
Ł
Binference/Convolution2D_11/kernel/Initializer/truncated_normal/mulMulNinference/Convolution2D_11/kernel/Initializer/truncated_normal/TruncatedNormalinference/Convolution2D_11/Sqrt*4
_class*
(&loc:@inference/Convolution2D_11/kernel*
T0*(
_output_shapes
:
ˇ
>inference/Convolution2D_11/kernel/Initializer/truncated_normalAddBinference/Convolution2D_11/kernel/Initializer/truncated_normal/mulCinference/Convolution2D_11/kernel/Initializer/truncated_normal/mean*4
_class*
(&loc:@inference/Convolution2D_11/kernel*
T0*(
_output_shapes
:
§
(inference/Convolution2D_11/kernel/AssignAssign!inference/Convolution2D_11/kernel>inference/Convolution2D_11/kernel/Initializer/truncated_normal*
validate_shape(*4
_class*
(&loc:@inference/Convolution2D_11/kernel*
use_locking(*
T0*(
_output_shapes
:
ž
&inference/Convolution2D_11/kernel/readIdentity!inference/Convolution2D_11/kernel*4
_class*
(&loc:@inference/Convolution2D_11/kernel*
T0*(
_output_shapes
:

!inference/Convolution2D_11/Conv2DConv2Dinference/ZeroPadding2D_11/Pad&inference/Convolution2D_11/kernel/read*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0

%inference/RectifiedLinearUnit_11/reluRelu!inference/Convolution2D_11/Conv2D*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙

'inference/ZeroPadding2D_12/Pad/paddingsConst*
dtype0*9
value0B."                             *
_output_shapes

:
°
inference/ZeroPadding2D_12/PadPad%inference/RectifiedLinearUnit_11/relu'inference/ZeroPadding2D_12/Pad/paddings*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
f
!inference/Convolution2D_12/Sqrt/xConst*
dtype0*
valueB
 *9ă9*
_output_shapes
: 
k
inference/Convolution2D_12/SqrtSqrt!inference/Convolution2D_12/Sqrt/x*
T0*
_output_shapes
: 
§
!inference/Convolution2D_12/kernelVariable*
dtype0*
shape:*
	container *
shared_name *(
_output_shapes
:
Ó
Dinference/Convolution2D_12/kernel/Initializer/truncated_normal/shapeConst*
dtype0*4
_class*
(&loc:@inference/Convolution2D_12/kernel*%
valueB"            *
_output_shapes
:
ž
Cinference/Convolution2D_12/kernel/Initializer/truncated_normal/meanConst*
dtype0*4
_class*
(&loc:@inference/Convolution2D_12/kernel*
valueB
 *    *
_output_shapes
: 
¸
Ninference/Convolution2D_12/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalDinference/Convolution2D_12/kernel/Initializer/truncated_normal/shape*(
_output_shapes
:*
dtype0*
seed2ź*
seedŇ	*
T0*4
_class*
(&loc:@inference/Convolution2D_12/kernel
Ł
Binference/Convolution2D_12/kernel/Initializer/truncated_normal/mulMulNinference/Convolution2D_12/kernel/Initializer/truncated_normal/TruncatedNormalinference/Convolution2D_12/Sqrt*4
_class*
(&loc:@inference/Convolution2D_12/kernel*
T0*(
_output_shapes
:
ˇ
>inference/Convolution2D_12/kernel/Initializer/truncated_normalAddBinference/Convolution2D_12/kernel/Initializer/truncated_normal/mulCinference/Convolution2D_12/kernel/Initializer/truncated_normal/mean*4
_class*
(&loc:@inference/Convolution2D_12/kernel*
T0*(
_output_shapes
:
§
(inference/Convolution2D_12/kernel/AssignAssign!inference/Convolution2D_12/kernel>inference/Convolution2D_12/kernel/Initializer/truncated_normal*
validate_shape(*4
_class*
(&loc:@inference/Convolution2D_12/kernel*
use_locking(*
T0*(
_output_shapes
:
ž
&inference/Convolution2D_12/kernel/readIdentity!inference/Convolution2D_12/kernel*4
_class*
(&loc:@inference/Convolution2D_12/kernel*
T0*(
_output_shapes
:

!inference/Convolution2D_12/Conv2DConv2Dinference/ZeroPadding2D_12/Pad&inference/Convolution2D_12/kernel/read*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0

%inference/RectifiedLinearUnit_12/reluRelu!inference/Convolution2D_12/Conv2D*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
ß
 inference/MaxPooling2D_4/MaxPoolMaxPool%inference/RectifiedLinearUnit_12/relu*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
data_formatNHWC*
paddingSAME*
strides
*
ksize
*
T0
r
!inference/Flatten_0/Reshape/shapeConst*
dtype0*
valueB"˙˙˙˙ b  *
_output_shapes
:

inference/Flatten_0/ReshapeReshape inference/MaxPooling2D_4/MaxPool!inference/Flatten_0/Reshape/shape*
T0*)
_output_shapes
:˙˙˙˙˙˙˙˙˙Ä

"inference/FullyConnected_0/weightsVariable*
dtype0*
shape:Ä *
	container *
shared_name *!
_output_shapes
:Ä 
Ë
Cinference/FullyConnected_0/weights/Initializer/random_uniform/shapeConst*
dtype0*5
_class+
)'loc:@inference/FullyConnected_0/weights*
valueB" b     *
_output_shapes
:
˝
Ainference/FullyConnected_0/weights/Initializer/random_uniform/minConst*
dtype0*5
_class+
)'loc:@inference/FullyConnected_0/weights*
valueB
 *đź*
_output_shapes
: 
˝
Ainference/FullyConnected_0/weights/Initializer/random_uniform/maxConst*
dtype0*5
_class+
)'loc:@inference/FullyConnected_0/weights*
valueB
 *đ<*
_output_shapes
: 
Ź
Kinference/FullyConnected_0/weights/Initializer/random_uniform/RandomUniformRandomUniformCinference/FullyConnected_0/weights/Initializer/random_uniform/shape*!
_output_shapes
:Ä *
dtype0*
seed2Ę*
seedŇ	*
T0*5
_class+
)'loc:@inference/FullyConnected_0/weights
Ś
Ainference/FullyConnected_0/weights/Initializer/random_uniform/subSubAinference/FullyConnected_0/weights/Initializer/random_uniform/maxAinference/FullyConnected_0/weights/Initializer/random_uniform/min*5
_class+
)'loc:@inference/FullyConnected_0/weights*
T0*
_output_shapes
: 
ť
Ainference/FullyConnected_0/weights/Initializer/random_uniform/mulMulKinference/FullyConnected_0/weights/Initializer/random_uniform/RandomUniformAinference/FullyConnected_0/weights/Initializer/random_uniform/sub*5
_class+
)'loc:@inference/FullyConnected_0/weights*
T0*!
_output_shapes
:Ä 
­
=inference/FullyConnected_0/weights/Initializer/random_uniformAddAinference/FullyConnected_0/weights/Initializer/random_uniform/mulAinference/FullyConnected_0/weights/Initializer/random_uniform/min*5
_class+
)'loc:@inference/FullyConnected_0/weights*
T0*!
_output_shapes
:Ä 
˘
)inference/FullyConnected_0/weights/AssignAssign"inference/FullyConnected_0/weights=inference/FullyConnected_0/weights/Initializer/random_uniform*
validate_shape(*5
_class+
)'loc:@inference/FullyConnected_0/weights*
use_locking(*
T0*!
_output_shapes
:Ä 
ş
'inference/FullyConnected_0/weights/readIdentity"inference/FullyConnected_0/weights*5
_class+
)'loc:@inference/FullyConnected_0/weights*
T0*!
_output_shapes
:Ä 

!inference/FullyConnected_0/biasesVariable*
dtype0*
shape: *
	container *
shared_name *
_output_shapes	
: 
¸
3inference/FullyConnected_0/biases/Initializer/ConstConst*
dtype0*4
_class*
(&loc:@inference/FullyConnected_0/biases*
valueB *    *
_output_shapes	
: 

(inference/FullyConnected_0/biases/AssignAssign!inference/FullyConnected_0/biases3inference/FullyConnected_0/biases/Initializer/Const*
validate_shape(*4
_class*
(&loc:@inference/FullyConnected_0/biases*
use_locking(*
T0*
_output_shapes	
: 
ą
&inference/FullyConnected_0/biases/readIdentity!inference/FullyConnected_0/biases*4
_class*
(&loc:@inference/FullyConnected_0/biases*
T0*
_output_shapes	
: 
Ţ
5inference/FullyConnected_0/Wx_plus_b/xw_plus_b/MatMulMatMulinference/Flatten_0/Reshape'inference/FullyConnected_0/weights/read*
transpose_b( *
transpose_a( *
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
â
.inference/FullyConnected_0/Wx_plus_b/xw_plus_bBiasAdd5inference/FullyConnected_0/Wx_plus_b/xw_plus_b/MatMul&inference/FullyConnected_0/biases/read*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0*
data_formatNHWC
{
)inference/FullyConnected_0/summaries/RankRank'inference/FullyConnected_0/weights/read*
T0*
_output_shapes
: 
r
0inference/FullyConnected_0/summaries/range/startConst*
dtype0*
value	B : *
_output_shapes
: 
r
0inference/FullyConnected_0/summaries/range/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
Ţ
*inference/FullyConnected_0/summaries/rangeRange0inference/FullyConnected_0/summaries/range/start)inference/FullyConnected_0/summaries/Rank0inference/FullyConnected_0/summaries/range/delta*
_output_shapes
:
¸
)inference/FullyConnected_0/summaries/MeanMean'inference/FullyConnected_0/weights/read*inference/FullyConnected_0/summaries/range*
T0*
	keep_dims( *
_output_shapes
: 
Ż
(inference/FullyConnected_0/summaries/subSub'inference/FullyConnected_0/weights/read)inference/FullyConnected_0/summaries/Mean*
T0*!
_output_shapes
:Ä 

+inference/FullyConnected_0/summaries/SquareSquare(inference/FullyConnected_0/summaries/sub*
T0*!
_output_shapes
:Ä 
{
*inference/FullyConnected_0/summaries/ConstConst*
dtype0*
valueB"       *
_output_shapes
:
ž
+inference/FullyConnected_0/summaries/Mean_1Mean+inference/FullyConnected_0/summaries/Square*inference/FullyConnected_0/summaries/Const*
T0*
	keep_dims( *
_output_shapes
: 

)inference/FullyConnected_0/summaries/SqrtSqrt+inference/FullyConnected_0/summaries/Mean_1*
T0*
_output_shapes
: 
Ą
7inference/FullyConnected_0/summaries/ScalarSummary/tagsConst*
dtype0*:
value1B/ B)inference/FullyConnected_0/summaries/mean*
_output_shapes
: 
Č
2inference/FullyConnected_0/summaries/ScalarSummaryScalarSummary7inference/FullyConnected_0/summaries/ScalarSummary/tags)inference/FullyConnected_0/summaries/Mean*
T0*
_output_shapes
: 
Ľ
9inference/FullyConnected_0/summaries/ScalarSummary_1/tagsConst*
dtype0*<
value3B1 B+inference/FullyConnected_0/summaries/stddev*
_output_shapes
: 
Ě
4inference/FullyConnected_0/summaries/ScalarSummary_1ScalarSummary9inference/FullyConnected_0/summaries/ScalarSummary_1/tags)inference/FullyConnected_0/summaries/Sqrt*
T0*
_output_shapes
: 
}
+inference/FullyConnected_0/summaries/Rank_1Rank'inference/FullyConnected_0/weights/read*
T0*
_output_shapes
: 
t
2inference/FullyConnected_0/summaries/range_1/startConst*
dtype0*
value	B : *
_output_shapes
: 
t
2inference/FullyConnected_0/summaries/range_1/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
ć
,inference/FullyConnected_0/summaries/range_1Range2inference/FullyConnected_0/summaries/range_1/start+inference/FullyConnected_0/summaries/Rank_12inference/FullyConnected_0/summaries/range_1/delta*
_output_shapes
:
¸
(inference/FullyConnected_0/summaries/MaxMax'inference/FullyConnected_0/weights/read,inference/FullyConnected_0/summaries/range_1*
T0*
	keep_dims( *
_output_shapes
: 
˘
9inference/FullyConnected_0/summaries/ScalarSummary_2/tagsConst*
dtype0*9
value0B. B(inference/FullyConnected_0/summaries/max*
_output_shapes
: 
Ë
4inference/FullyConnected_0/summaries/ScalarSummary_2ScalarSummary9inference/FullyConnected_0/summaries/ScalarSummary_2/tags(inference/FullyConnected_0/summaries/Max*
T0*
_output_shapes
: 
}
+inference/FullyConnected_0/summaries/Rank_2Rank'inference/FullyConnected_0/weights/read*
T0*
_output_shapes
: 
t
2inference/FullyConnected_0/summaries/range_2/startConst*
dtype0*
value	B : *
_output_shapes
: 
t
2inference/FullyConnected_0/summaries/range_2/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
ć
,inference/FullyConnected_0/summaries/range_2Range2inference/FullyConnected_0/summaries/range_2/start+inference/FullyConnected_0/summaries/Rank_22inference/FullyConnected_0/summaries/range_2/delta*
_output_shapes
:
¸
(inference/FullyConnected_0/summaries/MinMin'inference/FullyConnected_0/weights/read,inference/FullyConnected_0/summaries/range_2*
T0*
	keep_dims( *
_output_shapes
: 
˘
9inference/FullyConnected_0/summaries/ScalarSummary_3/tagsConst*
dtype0*9
value0B. B(inference/FullyConnected_0/summaries/min*
_output_shapes
: 
Ë
4inference/FullyConnected_0/summaries/ScalarSummary_3ScalarSummary9inference/FullyConnected_0/summaries/ScalarSummary_3/tags(inference/FullyConnected_0/summaries/Min*
T0*
_output_shapes
: 
Ł
9inference/FullyConnected_0/summaries/HistogramSummary/tagConst*
dtype0*:
value1B/ B)inference/FullyConnected_0/summaries/hist*
_output_shapes
: 
Î
5inference/FullyConnected_0/summaries/HistogramSummaryHistogramSummary9inference/FullyConnected_0/summaries/HistogramSummary/tag'inference/FullyConnected_0/weights/read*
T0*
_output_shapes
: 
|
+inference/FullyConnected_0/summaries_1/RankRank&inference/FullyConnected_0/biases/read*
T0*
_output_shapes
: 
t
2inference/FullyConnected_0/summaries_1/range/startConst*
dtype0*
value	B : *
_output_shapes
: 
t
2inference/FullyConnected_0/summaries_1/range/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
ć
,inference/FullyConnected_0/summaries_1/rangeRange2inference/FullyConnected_0/summaries_1/range/start+inference/FullyConnected_0/summaries_1/Rank2inference/FullyConnected_0/summaries_1/range/delta*
_output_shapes
:
ť
+inference/FullyConnected_0/summaries_1/MeanMean&inference/FullyConnected_0/biases/read,inference/FullyConnected_0/summaries_1/range*
T0*
	keep_dims( *
_output_shapes
: 
Ź
*inference/FullyConnected_0/summaries_1/subSub&inference/FullyConnected_0/biases/read+inference/FullyConnected_0/summaries_1/Mean*
T0*
_output_shapes	
: 

-inference/FullyConnected_0/summaries_1/SquareSquare*inference/FullyConnected_0/summaries_1/sub*
T0*
_output_shapes	
: 
v
,inference/FullyConnected_0/summaries_1/ConstConst*
dtype0*
valueB: *
_output_shapes
:
Ä
-inference/FullyConnected_0/summaries_1/Mean_1Mean-inference/FullyConnected_0/summaries_1/Square,inference/FullyConnected_0/summaries_1/Const*
T0*
	keep_dims( *
_output_shapes
: 

+inference/FullyConnected_0/summaries_1/SqrtSqrt-inference/FullyConnected_0/summaries_1/Mean_1*
T0*
_output_shapes
: 
Ľ
9inference/FullyConnected_0/summaries_1/ScalarSummary/tagsConst*
dtype0*<
value3B1 B+inference/FullyConnected_0/summaries_1/mean*
_output_shapes
: 
Î
4inference/FullyConnected_0/summaries_1/ScalarSummaryScalarSummary9inference/FullyConnected_0/summaries_1/ScalarSummary/tags+inference/FullyConnected_0/summaries_1/Mean*
T0*
_output_shapes
: 
Š
;inference/FullyConnected_0/summaries_1/ScalarSummary_1/tagsConst*
dtype0*>
value5B3 B-inference/FullyConnected_0/summaries_1/stddev*
_output_shapes
: 
Ň
6inference/FullyConnected_0/summaries_1/ScalarSummary_1ScalarSummary;inference/FullyConnected_0/summaries_1/ScalarSummary_1/tags+inference/FullyConnected_0/summaries_1/Sqrt*
T0*
_output_shapes
: 
~
-inference/FullyConnected_0/summaries_1/Rank_1Rank&inference/FullyConnected_0/biases/read*
T0*
_output_shapes
: 
v
4inference/FullyConnected_0/summaries_1/range_1/startConst*
dtype0*
value	B : *
_output_shapes
: 
v
4inference/FullyConnected_0/summaries_1/range_1/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
î
.inference/FullyConnected_0/summaries_1/range_1Range4inference/FullyConnected_0/summaries_1/range_1/start-inference/FullyConnected_0/summaries_1/Rank_14inference/FullyConnected_0/summaries_1/range_1/delta*
_output_shapes
:
ť
*inference/FullyConnected_0/summaries_1/MaxMax&inference/FullyConnected_0/biases/read.inference/FullyConnected_0/summaries_1/range_1*
T0*
	keep_dims( *
_output_shapes
: 
Ś
;inference/FullyConnected_0/summaries_1/ScalarSummary_2/tagsConst*
dtype0*;
value2B0 B*inference/FullyConnected_0/summaries_1/max*
_output_shapes
: 
Ń
6inference/FullyConnected_0/summaries_1/ScalarSummary_2ScalarSummary;inference/FullyConnected_0/summaries_1/ScalarSummary_2/tags*inference/FullyConnected_0/summaries_1/Max*
T0*
_output_shapes
: 
~
-inference/FullyConnected_0/summaries_1/Rank_2Rank&inference/FullyConnected_0/biases/read*
T0*
_output_shapes
: 
v
4inference/FullyConnected_0/summaries_1/range_2/startConst*
dtype0*
value	B : *
_output_shapes
: 
v
4inference/FullyConnected_0/summaries_1/range_2/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
î
.inference/FullyConnected_0/summaries_1/range_2Range4inference/FullyConnected_0/summaries_1/range_2/start-inference/FullyConnected_0/summaries_1/Rank_24inference/FullyConnected_0/summaries_1/range_2/delta*
_output_shapes
:
ť
*inference/FullyConnected_0/summaries_1/MinMin&inference/FullyConnected_0/biases/read.inference/FullyConnected_0/summaries_1/range_2*
T0*
	keep_dims( *
_output_shapes
: 
Ś
;inference/FullyConnected_0/summaries_1/ScalarSummary_3/tagsConst*
dtype0*;
value2B0 B*inference/FullyConnected_0/summaries_1/min*
_output_shapes
: 
Ń
6inference/FullyConnected_0/summaries_1/ScalarSummary_3ScalarSummary;inference/FullyConnected_0/summaries_1/ScalarSummary_3/tags*inference/FullyConnected_0/summaries_1/Min*
T0*
_output_shapes
: 
§
;inference/FullyConnected_0/summaries_1/HistogramSummary/tagConst*
dtype0*<
value3B1 B+inference/FullyConnected_0/summaries_1/hist*
_output_shapes
: 
Ń
7inference/FullyConnected_0/summaries_1/HistogramSummaryHistogramSummary;inference/FullyConnected_0/summaries_1/HistogramSummary/tag&inference/FullyConnected_0/biases/read*
T0*
_output_shapes
: 
˛
;inference/FullyConnected_0/summaries_2/HistogramSummary/tagConst*
dtype0*G
value>B< B6inference/FullyConnected_0/summaries_2/pre_activations*
_output_shapes
: 
Ů
7inference/FullyConnected_0/summaries_2/HistogramSummaryHistogramSummary;inference/FullyConnected_0/summaries_2/HistogramSummary/tag.inference/FullyConnected_0/Wx_plus_b/xw_plus_b*
T0*
_output_shapes
: 

%inference/RectifiedLinearUnit_13/reluRelu.inference/FullyConnected_0/Wx_plus_b/xw_plus_b*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
^
inference/Dropout_0/ConstConst*
dtype0*
valueB
 *   ?*
_output_shapes
: 

,inference/Dropout_0/dropout_keep_probabilityPlaceholderWithDefaultinference/Dropout_0/Const*
dtype0*
shape: *
_output_shapes
: 
v
!inference/Dropout_0/dropout/ShapeShape%inference/RectifiedLinearUnit_13/relu*
T0*
_output_shapes
:
s
.inference/Dropout_0/dropout/random_uniform/minConst*
dtype0*
valueB
 *    *
_output_shapes
: 
s
.inference/Dropout_0/dropout/random_uniform/maxConst*
dtype0*
valueB
 *  ?*
_output_shapes
: 
Ď
8inference/Dropout_0/dropout/random_uniform/RandomUniformRandomUniform!inference/Dropout_0/dropout/Shape*
dtype0*
seed2*
seedŇ	*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ś
.inference/Dropout_0/dropout/random_uniform/subSub.inference/Dropout_0/dropout/random_uniform/max.inference/Dropout_0/dropout/random_uniform/min*
T0*
_output_shapes
: 
Ú
.inference/Dropout_0/dropout/random_uniform/mulMul8inference/Dropout_0/dropout/random_uniform/RandomUniform.inference/Dropout_0/dropout/random_uniform/sub*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ě
*inference/Dropout_0/dropout/random_uniformAdd.inference/Dropout_0/dropout/random_uniform/mul.inference/Dropout_0/dropout/random_uniform/min*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ť
inference/Dropout_0/dropout/addAdd,inference/Dropout_0/dropout_keep_probability*inference/Dropout_0/dropout/random_uniform*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

!inference/Dropout_0/dropout/FloorFloorinference/Dropout_0/dropout/add*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ž
inference/Dropout_0/dropout/DivDiv%inference/RectifiedLinearUnit_13/relu,inference/Dropout_0/dropout_keep_probability*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

inference/Dropout_0/dropout/mulMulinference/Dropout_0/dropout/Div!inference/Dropout_0/dropout/Floor*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

"inference/FullyConnected_1/weightsVariable*
dtype0*
shape:
  *
	container *
shared_name * 
_output_shapes
:
  
Ë
Cinference/FullyConnected_1/weights/Initializer/random_uniform/shapeConst*
dtype0*5
_class+
)'loc:@inference/FullyConnected_1/weights*
valueB"      *
_output_shapes
:
˝
Ainference/FullyConnected_1/weights/Initializer/random_uniform/minConst*
dtype0*5
_class+
)'loc:@inference/FullyConnected_1/weights*
valueB
 *m˝*
_output_shapes
: 
˝
Ainference/FullyConnected_1/weights/Initializer/random_uniform/maxConst*
dtype0*5
_class+
)'loc:@inference/FullyConnected_1/weights*
valueB
 *m=*
_output_shapes
: 
Ť
Kinference/FullyConnected_1/weights/Initializer/random_uniform/RandomUniformRandomUniformCinference/FullyConnected_1/weights/Initializer/random_uniform/shape* 
_output_shapes
:
  *
dtype0*
seed2Ś*
seedŇ	*
T0*5
_class+
)'loc:@inference/FullyConnected_1/weights
Ś
Ainference/FullyConnected_1/weights/Initializer/random_uniform/subSubAinference/FullyConnected_1/weights/Initializer/random_uniform/maxAinference/FullyConnected_1/weights/Initializer/random_uniform/min*5
_class+
)'loc:@inference/FullyConnected_1/weights*
T0*
_output_shapes
: 
ş
Ainference/FullyConnected_1/weights/Initializer/random_uniform/mulMulKinference/FullyConnected_1/weights/Initializer/random_uniform/RandomUniformAinference/FullyConnected_1/weights/Initializer/random_uniform/sub*5
_class+
)'loc:@inference/FullyConnected_1/weights*
T0* 
_output_shapes
:
  
Ź
=inference/FullyConnected_1/weights/Initializer/random_uniformAddAinference/FullyConnected_1/weights/Initializer/random_uniform/mulAinference/FullyConnected_1/weights/Initializer/random_uniform/min*5
_class+
)'loc:@inference/FullyConnected_1/weights*
T0* 
_output_shapes
:
  
Ą
)inference/FullyConnected_1/weights/AssignAssign"inference/FullyConnected_1/weights=inference/FullyConnected_1/weights/Initializer/random_uniform*
validate_shape(*5
_class+
)'loc:@inference/FullyConnected_1/weights*
use_locking(*
T0* 
_output_shapes
:
  
š
'inference/FullyConnected_1/weights/readIdentity"inference/FullyConnected_1/weights*5
_class+
)'loc:@inference/FullyConnected_1/weights*
T0* 
_output_shapes
:
  

!inference/FullyConnected_1/biasesVariable*
dtype0*
shape: *
	container *
shared_name *
_output_shapes	
: 
¸
3inference/FullyConnected_1/biases/Initializer/ConstConst*
dtype0*4
_class*
(&loc:@inference/FullyConnected_1/biases*
valueB *    *
_output_shapes	
: 

(inference/FullyConnected_1/biases/AssignAssign!inference/FullyConnected_1/biases3inference/FullyConnected_1/biases/Initializer/Const*
validate_shape(*4
_class*
(&loc:@inference/FullyConnected_1/biases*
use_locking(*
T0*
_output_shapes	
: 
ą
&inference/FullyConnected_1/biases/readIdentity!inference/FullyConnected_1/biases*4
_class*
(&loc:@inference/FullyConnected_1/biases*
T0*
_output_shapes	
: 
â
5inference/FullyConnected_1/Wx_plus_b/xw_plus_b/MatMulMatMulinference/Dropout_0/dropout/mul'inference/FullyConnected_1/weights/read*
transpose_b( *
transpose_a( *
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
â
.inference/FullyConnected_1/Wx_plus_b/xw_plus_bBiasAdd5inference/FullyConnected_1/Wx_plus_b/xw_plus_b/MatMul&inference/FullyConnected_1/biases/read*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0*
data_formatNHWC
{
)inference/FullyConnected_1/summaries/RankRank'inference/FullyConnected_1/weights/read*
T0*
_output_shapes
: 
r
0inference/FullyConnected_1/summaries/range/startConst*
dtype0*
value	B : *
_output_shapes
: 
r
0inference/FullyConnected_1/summaries/range/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
Ţ
*inference/FullyConnected_1/summaries/rangeRange0inference/FullyConnected_1/summaries/range/start)inference/FullyConnected_1/summaries/Rank0inference/FullyConnected_1/summaries/range/delta*
_output_shapes
:
¸
)inference/FullyConnected_1/summaries/MeanMean'inference/FullyConnected_1/weights/read*inference/FullyConnected_1/summaries/range*
T0*
	keep_dims( *
_output_shapes
: 
Ž
(inference/FullyConnected_1/summaries/subSub'inference/FullyConnected_1/weights/read)inference/FullyConnected_1/summaries/Mean*
T0* 
_output_shapes
:
  

+inference/FullyConnected_1/summaries/SquareSquare(inference/FullyConnected_1/summaries/sub*
T0* 
_output_shapes
:
  
{
*inference/FullyConnected_1/summaries/ConstConst*
dtype0*
valueB"       *
_output_shapes
:
ž
+inference/FullyConnected_1/summaries/Mean_1Mean+inference/FullyConnected_1/summaries/Square*inference/FullyConnected_1/summaries/Const*
T0*
	keep_dims( *
_output_shapes
: 

)inference/FullyConnected_1/summaries/SqrtSqrt+inference/FullyConnected_1/summaries/Mean_1*
T0*
_output_shapes
: 
Ą
7inference/FullyConnected_1/summaries/ScalarSummary/tagsConst*
dtype0*:
value1B/ B)inference/FullyConnected_1/summaries/mean*
_output_shapes
: 
Č
2inference/FullyConnected_1/summaries/ScalarSummaryScalarSummary7inference/FullyConnected_1/summaries/ScalarSummary/tags)inference/FullyConnected_1/summaries/Mean*
T0*
_output_shapes
: 
Ľ
9inference/FullyConnected_1/summaries/ScalarSummary_1/tagsConst*
dtype0*<
value3B1 B+inference/FullyConnected_1/summaries/stddev*
_output_shapes
: 
Ě
4inference/FullyConnected_1/summaries/ScalarSummary_1ScalarSummary9inference/FullyConnected_1/summaries/ScalarSummary_1/tags)inference/FullyConnected_1/summaries/Sqrt*
T0*
_output_shapes
: 
}
+inference/FullyConnected_1/summaries/Rank_1Rank'inference/FullyConnected_1/weights/read*
T0*
_output_shapes
: 
t
2inference/FullyConnected_1/summaries/range_1/startConst*
dtype0*
value	B : *
_output_shapes
: 
t
2inference/FullyConnected_1/summaries/range_1/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
ć
,inference/FullyConnected_1/summaries/range_1Range2inference/FullyConnected_1/summaries/range_1/start+inference/FullyConnected_1/summaries/Rank_12inference/FullyConnected_1/summaries/range_1/delta*
_output_shapes
:
¸
(inference/FullyConnected_1/summaries/MaxMax'inference/FullyConnected_1/weights/read,inference/FullyConnected_1/summaries/range_1*
T0*
	keep_dims( *
_output_shapes
: 
˘
9inference/FullyConnected_1/summaries/ScalarSummary_2/tagsConst*
dtype0*9
value0B. B(inference/FullyConnected_1/summaries/max*
_output_shapes
: 
Ë
4inference/FullyConnected_1/summaries/ScalarSummary_2ScalarSummary9inference/FullyConnected_1/summaries/ScalarSummary_2/tags(inference/FullyConnected_1/summaries/Max*
T0*
_output_shapes
: 
}
+inference/FullyConnected_1/summaries/Rank_2Rank'inference/FullyConnected_1/weights/read*
T0*
_output_shapes
: 
t
2inference/FullyConnected_1/summaries/range_2/startConst*
dtype0*
value	B : *
_output_shapes
: 
t
2inference/FullyConnected_1/summaries/range_2/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
ć
,inference/FullyConnected_1/summaries/range_2Range2inference/FullyConnected_1/summaries/range_2/start+inference/FullyConnected_1/summaries/Rank_22inference/FullyConnected_1/summaries/range_2/delta*
_output_shapes
:
¸
(inference/FullyConnected_1/summaries/MinMin'inference/FullyConnected_1/weights/read,inference/FullyConnected_1/summaries/range_2*
T0*
	keep_dims( *
_output_shapes
: 
˘
9inference/FullyConnected_1/summaries/ScalarSummary_3/tagsConst*
dtype0*9
value0B. B(inference/FullyConnected_1/summaries/min*
_output_shapes
: 
Ë
4inference/FullyConnected_1/summaries/ScalarSummary_3ScalarSummary9inference/FullyConnected_1/summaries/ScalarSummary_3/tags(inference/FullyConnected_1/summaries/Min*
T0*
_output_shapes
: 
Ł
9inference/FullyConnected_1/summaries/HistogramSummary/tagConst*
dtype0*:
value1B/ B)inference/FullyConnected_1/summaries/hist*
_output_shapes
: 
Î
5inference/FullyConnected_1/summaries/HistogramSummaryHistogramSummary9inference/FullyConnected_1/summaries/HistogramSummary/tag'inference/FullyConnected_1/weights/read*
T0*
_output_shapes
: 
|
+inference/FullyConnected_1/summaries_1/RankRank&inference/FullyConnected_1/biases/read*
T0*
_output_shapes
: 
t
2inference/FullyConnected_1/summaries_1/range/startConst*
dtype0*
value	B : *
_output_shapes
: 
t
2inference/FullyConnected_1/summaries_1/range/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
ć
,inference/FullyConnected_1/summaries_1/rangeRange2inference/FullyConnected_1/summaries_1/range/start+inference/FullyConnected_1/summaries_1/Rank2inference/FullyConnected_1/summaries_1/range/delta*
_output_shapes
:
ť
+inference/FullyConnected_1/summaries_1/MeanMean&inference/FullyConnected_1/biases/read,inference/FullyConnected_1/summaries_1/range*
T0*
	keep_dims( *
_output_shapes
: 
Ź
*inference/FullyConnected_1/summaries_1/subSub&inference/FullyConnected_1/biases/read+inference/FullyConnected_1/summaries_1/Mean*
T0*
_output_shapes	
: 

-inference/FullyConnected_1/summaries_1/SquareSquare*inference/FullyConnected_1/summaries_1/sub*
T0*
_output_shapes	
: 
v
,inference/FullyConnected_1/summaries_1/ConstConst*
dtype0*
valueB: *
_output_shapes
:
Ä
-inference/FullyConnected_1/summaries_1/Mean_1Mean-inference/FullyConnected_1/summaries_1/Square,inference/FullyConnected_1/summaries_1/Const*
T0*
	keep_dims( *
_output_shapes
: 

+inference/FullyConnected_1/summaries_1/SqrtSqrt-inference/FullyConnected_1/summaries_1/Mean_1*
T0*
_output_shapes
: 
Ľ
9inference/FullyConnected_1/summaries_1/ScalarSummary/tagsConst*
dtype0*<
value3B1 B+inference/FullyConnected_1/summaries_1/mean*
_output_shapes
: 
Î
4inference/FullyConnected_1/summaries_1/ScalarSummaryScalarSummary9inference/FullyConnected_1/summaries_1/ScalarSummary/tags+inference/FullyConnected_1/summaries_1/Mean*
T0*
_output_shapes
: 
Š
;inference/FullyConnected_1/summaries_1/ScalarSummary_1/tagsConst*
dtype0*>
value5B3 B-inference/FullyConnected_1/summaries_1/stddev*
_output_shapes
: 
Ň
6inference/FullyConnected_1/summaries_1/ScalarSummary_1ScalarSummary;inference/FullyConnected_1/summaries_1/ScalarSummary_1/tags+inference/FullyConnected_1/summaries_1/Sqrt*
T0*
_output_shapes
: 
~
-inference/FullyConnected_1/summaries_1/Rank_1Rank&inference/FullyConnected_1/biases/read*
T0*
_output_shapes
: 
v
4inference/FullyConnected_1/summaries_1/range_1/startConst*
dtype0*
value	B : *
_output_shapes
: 
v
4inference/FullyConnected_1/summaries_1/range_1/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
î
.inference/FullyConnected_1/summaries_1/range_1Range4inference/FullyConnected_1/summaries_1/range_1/start-inference/FullyConnected_1/summaries_1/Rank_14inference/FullyConnected_1/summaries_1/range_1/delta*
_output_shapes
:
ť
*inference/FullyConnected_1/summaries_1/MaxMax&inference/FullyConnected_1/biases/read.inference/FullyConnected_1/summaries_1/range_1*
T0*
	keep_dims( *
_output_shapes
: 
Ś
;inference/FullyConnected_1/summaries_1/ScalarSummary_2/tagsConst*
dtype0*;
value2B0 B*inference/FullyConnected_1/summaries_1/max*
_output_shapes
: 
Ń
6inference/FullyConnected_1/summaries_1/ScalarSummary_2ScalarSummary;inference/FullyConnected_1/summaries_1/ScalarSummary_2/tags*inference/FullyConnected_1/summaries_1/Max*
T0*
_output_shapes
: 
~
-inference/FullyConnected_1/summaries_1/Rank_2Rank&inference/FullyConnected_1/biases/read*
T0*
_output_shapes
: 
v
4inference/FullyConnected_1/summaries_1/range_2/startConst*
dtype0*
value	B : *
_output_shapes
: 
v
4inference/FullyConnected_1/summaries_1/range_2/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
î
.inference/FullyConnected_1/summaries_1/range_2Range4inference/FullyConnected_1/summaries_1/range_2/start-inference/FullyConnected_1/summaries_1/Rank_24inference/FullyConnected_1/summaries_1/range_2/delta*
_output_shapes
:
ť
*inference/FullyConnected_1/summaries_1/MinMin&inference/FullyConnected_1/biases/read.inference/FullyConnected_1/summaries_1/range_2*
T0*
	keep_dims( *
_output_shapes
: 
Ś
;inference/FullyConnected_1/summaries_1/ScalarSummary_3/tagsConst*
dtype0*;
value2B0 B*inference/FullyConnected_1/summaries_1/min*
_output_shapes
: 
Ń
6inference/FullyConnected_1/summaries_1/ScalarSummary_3ScalarSummary;inference/FullyConnected_1/summaries_1/ScalarSummary_3/tags*inference/FullyConnected_1/summaries_1/Min*
T0*
_output_shapes
: 
§
;inference/FullyConnected_1/summaries_1/HistogramSummary/tagConst*
dtype0*<
value3B1 B+inference/FullyConnected_1/summaries_1/hist*
_output_shapes
: 
Ń
7inference/FullyConnected_1/summaries_1/HistogramSummaryHistogramSummary;inference/FullyConnected_1/summaries_1/HistogramSummary/tag&inference/FullyConnected_1/biases/read*
T0*
_output_shapes
: 
˛
;inference/FullyConnected_1/summaries_2/HistogramSummary/tagConst*
dtype0*G
value>B< B6inference/FullyConnected_1/summaries_2/pre_activations*
_output_shapes
: 
Ů
7inference/FullyConnected_1/summaries_2/HistogramSummaryHistogramSummary;inference/FullyConnected_1/summaries_2/HistogramSummary/tag.inference/FullyConnected_1/Wx_plus_b/xw_plus_b*
T0*
_output_shapes
: 

%inference/RectifiedLinearUnit_14/reluRelu.inference/FullyConnected_1/Wx_plus_b/xw_plus_b*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
^
inference/Dropout_1/ConstConst*
dtype0*
valueB
 *   ?*
_output_shapes
: 

,inference/Dropout_1/dropout_keep_probabilityPlaceholderWithDefaultinference/Dropout_1/Const*
dtype0*
shape: *
_output_shapes
: 
v
!inference/Dropout_1/dropout/ShapeShape%inference/RectifiedLinearUnit_14/relu*
T0*
_output_shapes
:
s
.inference/Dropout_1/dropout/random_uniform/minConst*
dtype0*
valueB
 *    *
_output_shapes
: 
s
.inference/Dropout_1/dropout/random_uniform/maxConst*
dtype0*
valueB
 *  ?*
_output_shapes
: 
Ď
8inference/Dropout_1/dropout/random_uniform/RandomUniformRandomUniform!inference/Dropout_1/dropout/Shape*
dtype0*
seed2ö*
seedŇ	*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ś
.inference/Dropout_1/dropout/random_uniform/subSub.inference/Dropout_1/dropout/random_uniform/max.inference/Dropout_1/dropout/random_uniform/min*
T0*
_output_shapes
: 
Ú
.inference/Dropout_1/dropout/random_uniform/mulMul8inference/Dropout_1/dropout/random_uniform/RandomUniform.inference/Dropout_1/dropout/random_uniform/sub*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ě
*inference/Dropout_1/dropout/random_uniformAdd.inference/Dropout_1/dropout/random_uniform/mul.inference/Dropout_1/dropout/random_uniform/min*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ť
inference/Dropout_1/dropout/addAdd,inference/Dropout_1/dropout_keep_probability*inference/Dropout_1/dropout/random_uniform*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

!inference/Dropout_1/dropout/FloorFloorinference/Dropout_1/dropout/add*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ž
inference/Dropout_1/dropout/DivDiv%inference/RectifiedLinearUnit_14/relu,inference/Dropout_1/dropout_keep_probability*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

inference/Dropout_1/dropout/mulMulinference/Dropout_1/dropout/Div!inference/Dropout_1/dropout/Floor*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
´
@inference/CategoricalPredictionOutput_0/FullyConnected_0/weightsVariable*
dtype0*
shape:	 
*
	container *
shared_name *
_output_shapes
:	 


ainference/CategoricalPredictionOutput_0/FullyConnected_0/weights/Initializer/random_uniform/shapeConst*
dtype0*S
_classI
GEloc:@inference/CategoricalPredictionOutput_0/FullyConnected_0/weights*
valueB"   
   *
_output_shapes
:
ů
_inference/CategoricalPredictionOutput_0/FullyConnected_0/weights/Initializer/random_uniform/minConst*
dtype0*S
_classI
GEloc:@inference/CategoricalPredictionOutput_0/FullyConnected_0/weights*
valueB
 *m˝*
_output_shapes
: 
ů
_inference/CategoricalPredictionOutput_0/FullyConnected_0/weights/Initializer/random_uniform/maxConst*
dtype0*S
_classI
GEloc:@inference/CategoricalPredictionOutput_0/FullyConnected_0/weights*
valueB
 *m=*
_output_shapes
: 

iinference/CategoricalPredictionOutput_0/FullyConnected_0/weights/Initializer/random_uniform/RandomUniformRandomUniformainference/CategoricalPredictionOutput_0/FullyConnected_0/weights/Initializer/random_uniform/shape*
_output_shapes
:	 
*
dtype0*
seed2*
seedŇ	*
T0*S
_classI
GEloc:@inference/CategoricalPredictionOutput_0/FullyConnected_0/weights

_inference/CategoricalPredictionOutput_0/FullyConnected_0/weights/Initializer/random_uniform/subSub_inference/CategoricalPredictionOutput_0/FullyConnected_0/weights/Initializer/random_uniform/max_inference/CategoricalPredictionOutput_0/FullyConnected_0/weights/Initializer/random_uniform/min*S
_classI
GEloc:@inference/CategoricalPredictionOutput_0/FullyConnected_0/weights*
T0*
_output_shapes
: 
ą
_inference/CategoricalPredictionOutput_0/FullyConnected_0/weights/Initializer/random_uniform/mulMuliinference/CategoricalPredictionOutput_0/FullyConnected_0/weights/Initializer/random_uniform/RandomUniform_inference/CategoricalPredictionOutput_0/FullyConnected_0/weights/Initializer/random_uniform/sub*S
_classI
GEloc:@inference/CategoricalPredictionOutput_0/FullyConnected_0/weights*
T0*
_output_shapes
:	 

Ł
[inference/CategoricalPredictionOutput_0/FullyConnected_0/weights/Initializer/random_uniformAdd_inference/CategoricalPredictionOutput_0/FullyConnected_0/weights/Initializer/random_uniform/mul_inference/CategoricalPredictionOutput_0/FullyConnected_0/weights/Initializer/random_uniform/min*S
_classI
GEloc:@inference/CategoricalPredictionOutput_0/FullyConnected_0/weights*
T0*
_output_shapes
:	 


Ginference/CategoricalPredictionOutput_0/FullyConnected_0/weights/AssignAssign@inference/CategoricalPredictionOutput_0/FullyConnected_0/weights[inference/CategoricalPredictionOutput_0/FullyConnected_0/weights/Initializer/random_uniform*
validate_shape(*S
_classI
GEloc:@inference/CategoricalPredictionOutput_0/FullyConnected_0/weights*
use_locking(*
T0*
_output_shapes
:	 


Einference/CategoricalPredictionOutput_0/FullyConnected_0/weights/readIdentity@inference/CategoricalPredictionOutput_0/FullyConnected_0/weights*S
_classI
GEloc:@inference/CategoricalPredictionOutput_0/FullyConnected_0/weights*
T0*
_output_shapes
:	 

Š
?inference/CategoricalPredictionOutput_0/FullyConnected_0/biasesVariable*
dtype0*
shape:
*
	container *
shared_name *
_output_shapes
:

ň
Qinference/CategoricalPredictionOutput_0/FullyConnected_0/biases/Initializer/ConstConst*
dtype0*R
_classH
FDloc:@inference/CategoricalPredictionOutput_0/FullyConnected_0/biases*
valueB
*    *
_output_shapes
:


Finference/CategoricalPredictionOutput_0/FullyConnected_0/biases/AssignAssign?inference/CategoricalPredictionOutput_0/FullyConnected_0/biasesQinference/CategoricalPredictionOutput_0/FullyConnected_0/biases/Initializer/Const*
validate_shape(*R
_classH
FDloc:@inference/CategoricalPredictionOutput_0/FullyConnected_0/biases*
use_locking(*
T0*
_output_shapes
:


Dinference/CategoricalPredictionOutput_0/FullyConnected_0/biases/readIdentity?inference/CategoricalPredictionOutput_0/FullyConnected_0/biases*R
_classH
FDloc:@inference/CategoricalPredictionOutput_0/FullyConnected_0/biases*
T0*
_output_shapes
:


Sinference/CategoricalPredictionOutput_0/FullyConnected_0/Wx_plus_b/xw_plus_b/MatMulMatMulinference/Dropout_1/dropout/mulEinference/CategoricalPredictionOutput_0/FullyConnected_0/weights/read*
transpose_b( *
transpose_a( *
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

ť
Linference/CategoricalPredictionOutput_0/FullyConnected_0/Wx_plus_b/xw_plus_bBiasAddSinference/CategoricalPredictionOutput_0/FullyConnected_0/Wx_plus_b/xw_plus_b/MatMulDinference/CategoricalPredictionOutput_0/FullyConnected_0/biases/read*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
T0*
data_formatNHWC
ˇ
Ginference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/RankRankEinference/CategoricalPredictionOutput_0/FullyConnected_0/weights/read*
T0*
_output_shapes
: 

Ninference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/range/startConst*
dtype0*
value	B : *
_output_shapes
: 

Ninference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/range/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
Ö
Hinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/rangeRangeNinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/range/startGinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/RankNinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/range/delta*
_output_shapes
:

Ginference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/MeanMeanEinference/CategoricalPredictionOutput_0/FullyConnected_0/weights/readHinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/range*
T0*
	keep_dims( *
_output_shapes
: 

Finference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/subSubEinference/CategoricalPredictionOutput_0/FullyConnected_0/weights/readGinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/Mean*
T0*
_output_shapes
:	 

Ĺ
Iinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/SquareSquareFinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/sub*
T0*
_output_shapes
:	 


Hinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/ConstConst*
dtype0*
valueB"       *
_output_shapes
:

Iinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/Mean_1MeanIinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/SquareHinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/Const*
T0*
	keep_dims( *
_output_shapes
: 
ť
Ginference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/SqrtSqrtIinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/Mean_1*
T0*
_output_shapes
: 
Ý
Uinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/ScalarSummary/tagsConst*
dtype0*X
valueOBM BGinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/mean*
_output_shapes
: 
˘
Pinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/ScalarSummaryScalarSummaryUinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/ScalarSummary/tagsGinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/Mean*
T0*
_output_shapes
: 
á
Winference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/ScalarSummary_1/tagsConst*
dtype0*Z
valueQBO BIinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/stddev*
_output_shapes
: 
Ś
Rinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/ScalarSummary_1ScalarSummaryWinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/ScalarSummary_1/tagsGinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/Sqrt*
T0*
_output_shapes
: 
š
Iinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/Rank_1RankEinference/CategoricalPredictionOutput_0/FullyConnected_0/weights/read*
T0*
_output_shapes
: 

Pinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/range_1/startConst*
dtype0*
value	B : *
_output_shapes
: 

Pinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/range_1/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
Ţ
Jinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/range_1RangePinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/range_1/startIinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/Rank_1Pinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/range_1/delta*
_output_shapes
:

Finference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/MaxMaxEinference/CategoricalPredictionOutput_0/FullyConnected_0/weights/readJinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/range_1*
T0*
	keep_dims( *
_output_shapes
: 
Ţ
Winference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/ScalarSummary_2/tagsConst*
dtype0*W
valueNBL BFinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/max*
_output_shapes
: 
Ľ
Rinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/ScalarSummary_2ScalarSummaryWinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/ScalarSummary_2/tagsFinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/Max*
T0*
_output_shapes
: 
š
Iinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/Rank_2RankEinference/CategoricalPredictionOutput_0/FullyConnected_0/weights/read*
T0*
_output_shapes
: 

Pinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/range_2/startConst*
dtype0*
value	B : *
_output_shapes
: 

Pinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/range_2/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
Ţ
Jinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/range_2RangePinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/range_2/startIinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/Rank_2Pinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/range_2/delta*
_output_shapes
:

Finference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/MinMinEinference/CategoricalPredictionOutput_0/FullyConnected_0/weights/readJinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/range_2*
T0*
	keep_dims( *
_output_shapes
: 
Ţ
Winference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/ScalarSummary_3/tagsConst*
dtype0*W
valueNBL BFinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/min*
_output_shapes
: 
Ľ
Rinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/ScalarSummary_3ScalarSummaryWinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/ScalarSummary_3/tagsFinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/Min*
T0*
_output_shapes
: 
ß
Winference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/HistogramSummary/tagConst*
dtype0*X
valueOBM BGinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/hist*
_output_shapes
: 
¨
Sinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/HistogramSummaryHistogramSummaryWinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/HistogramSummary/tagEinference/CategoricalPredictionOutput_0/FullyConnected_0/weights/read*
T0*
_output_shapes
: 
¸
Iinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/RankRankDinference/CategoricalPredictionOutput_0/FullyConnected_0/biases/read*
T0*
_output_shapes
: 

Pinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/range/startConst*
dtype0*
value	B : *
_output_shapes
: 

Pinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/range/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
Ţ
Jinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/rangeRangePinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/range/startIinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/RankPinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/range/delta*
_output_shapes
:

Iinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/MeanMeanDinference/CategoricalPredictionOutput_0/FullyConnected_0/biases/readJinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/range*
T0*
	keep_dims( *
_output_shapes
: 

Hinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/subSubDinference/CategoricalPredictionOutput_0/FullyConnected_0/biases/readIinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/Mean*
T0*
_output_shapes
:

Ä
Kinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/SquareSquareHinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/sub*
T0*
_output_shapes
:


Jinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/ConstConst*
dtype0*
valueB: *
_output_shapes
:

Kinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/Mean_1MeanKinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/SquareJinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/Const*
T0*
	keep_dims( *
_output_shapes
: 
ż
Iinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/SqrtSqrtKinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/Mean_1*
T0*
_output_shapes
: 
á
Winference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/ScalarSummary/tagsConst*
dtype0*Z
valueQBO BIinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/mean*
_output_shapes
: 
¨
Rinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/ScalarSummaryScalarSummaryWinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/ScalarSummary/tagsIinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/Mean*
T0*
_output_shapes
: 
ĺ
Yinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/ScalarSummary_1/tagsConst*
dtype0*\
valueSBQ BKinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/stddev*
_output_shapes
: 
Ź
Tinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/ScalarSummary_1ScalarSummaryYinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/ScalarSummary_1/tagsIinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/Sqrt*
T0*
_output_shapes
: 
ş
Kinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/Rank_1RankDinference/CategoricalPredictionOutput_0/FullyConnected_0/biases/read*
T0*
_output_shapes
: 

Rinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/range_1/startConst*
dtype0*
value	B : *
_output_shapes
: 

Rinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/range_1/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
ć
Linference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/range_1RangeRinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/range_1/startKinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/Rank_1Rinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/range_1/delta*
_output_shapes
:

Hinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/MaxMaxDinference/CategoricalPredictionOutput_0/FullyConnected_0/biases/readLinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/range_1*
T0*
	keep_dims( *
_output_shapes
: 
â
Yinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/ScalarSummary_2/tagsConst*
dtype0*Y
valuePBN BHinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/max*
_output_shapes
: 
Ť
Tinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/ScalarSummary_2ScalarSummaryYinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/ScalarSummary_2/tagsHinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/Max*
T0*
_output_shapes
: 
ş
Kinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/Rank_2RankDinference/CategoricalPredictionOutput_0/FullyConnected_0/biases/read*
T0*
_output_shapes
: 

Rinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/range_2/startConst*
dtype0*
value	B : *
_output_shapes
: 

Rinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/range_2/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
ć
Linference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/range_2RangeRinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/range_2/startKinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/Rank_2Rinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/range_2/delta*
_output_shapes
:

Hinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/MinMinDinference/CategoricalPredictionOutput_0/FullyConnected_0/biases/readLinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/range_2*
T0*
	keep_dims( *
_output_shapes
: 
â
Yinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/ScalarSummary_3/tagsConst*
dtype0*Y
valuePBN BHinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/min*
_output_shapes
: 
Ť
Tinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/ScalarSummary_3ScalarSummaryYinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/ScalarSummary_3/tagsHinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/Min*
T0*
_output_shapes
: 
ă
Yinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/HistogramSummary/tagConst*
dtype0*Z
valueQBO BIinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/hist*
_output_shapes
: 
Ť
Uinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/HistogramSummaryHistogramSummaryYinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/HistogramSummary/tagDinference/CategoricalPredictionOutput_0/FullyConnected_0/biases/read*
T0*
_output_shapes
: 
î
Yinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_2/HistogramSummary/tagConst*
dtype0*e
value\BZ BTinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_2/pre_activations*
_output_shapes
: 
ł
Uinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_2/HistogramSummaryHistogramSummaryYinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_2/HistogramSummary/tagLinference/CategoricalPredictionOutput_0/FullyConnected_0/Wx_plus_b/xw_plus_b*
T0*
_output_shapes
: 
Ä
9inference/CategoricalPredictionOutput_0/Softmax_0/SoftmaxSoftmaxLinference/CategoricalPredictionOutput_0/FullyConnected_0/Wx_plus_b/xw_plus_b*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

}
+train/CategoricalCrossEntropy_0/PlaceholderPlaceholder*
dtype0*
shape: *'
_output_shapes
:˙˙˙˙˙˙˙˙˙


=train/CategoricalCrossEntropy_0/SoftmaxCrossEntropyWithLogitsSoftmaxCrossEntropyWithLogits9inference/CategoricalPredictionOutput_0/Softmax_0/Softmax+train/CategoricalCrossEntropy_0/Placeholder*
T0*6
_output_shapes$
":˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙

o
%train/CategoricalCrossEntropy_0/ConstConst*
dtype0*
valueB: *
_output_shapes
:
Ä
$train/CategoricalCrossEntropy_0/MeanMean=train/CategoricalCrossEntropy_0/SoftmaxCrossEntropyWithLogits%train/CategoricalCrossEntropy_0/Const*
T0*
	keep_dims( *
_output_shapes
: 
X
train/ArgMax/dimensionConst*
dtype0*
value	B :*
_output_shapes
: 

train/ArgMaxArgMax+train/CategoricalCrossEntropy_0/Placeholdertrain/ArgMax/dimension*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Z
train/ArgMax_1/dimensionConst*
dtype0*
value	B :*
_output_shapes
: 

train/ArgMax_1ArgMax9inference/CategoricalPredictionOutput_0/Softmax_0/Softmaxtrain/ArgMax_1/dimension*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
`
train/EqualEqualtrain/ArgMaxtrain/ArgMax_1*
T0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
\

train/CastCasttrain/Equal*

DstT0*

SrcT0
*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
U
train/ConstConst*
dtype0*
valueB: *
_output_shapes
:
]

train/MeanMean
train/Casttrain/Const*
T0*
	keep_dims( *
_output_shapes
: 
R
train/Const_1Const*
dtype0*
valueB
 *ÍĚĚ=*
_output_shapes
: 
n
train/learning_ratePlaceholderWithDefaulttrain/Const_1*
dtype0*
shape: *
_output_shapes
: 
R
train/Const_2Const*
dtype0*
valueB
 * @F*
_output_shapes
: 
l
train/decay_stepsPlaceholderWithDefaulttrain/Const_2*
dtype0*
shape: *
_output_shapes
: 
R
train/Const_3Const*
dtype0*
valueB
 *Âu?*
_output_shapes
: 
k
train/decay_ratePlaceholderWithDefaulttrain/Const_3*
dtype0*
shape: *
_output_shapes
: 
R
train/Const_4Const*
dtype0*
valueB
 *    *
_output_shapes
: 
l
train/global_stepPlaceholderWithDefaulttrain/Const_4*
dtype0*
shape: *
_output_shapes
: 
^
train/Variable/initial_valueConst*
dtype0*
value	B : *
_output_shapes
: 
p
train/VariableVariable*
dtype0*
shape: *
	container *
shared_name *
_output_shapes
: 
ş
train/Variable/AssignAssigntrain/Variabletrain/Variable/initial_value*
validate_shape(*!
_class
loc:@train/Variable*
use_locking(*
T0*
_output_shapes
: 
s
train/Variable/readIdentitytrain/Variable*!
_class
loc:@train/Variable*
T0*
_output_shapes
: 
W
train/Cast_1Casttrain/global_step*

DstT0*

SrcT0*
_output_shapes
: 
Ą
train/AssignAssigntrain/Variabletrain/Cast_1*
validate_shape(*!
_class
loc:@train/Variable*
use_locking( *
T0*
_output_shapes
: 
h
train/ExponentialDecay/CastCasttrain/Variable/read*

DstT0*

SrcT0*
_output_shapes
: 
v
train/ExponentialDecay/truedivDivtrain/ExponentialDecay/Casttrain/decay_steps*
T0*
_output_shapes
: 
f
train/ExponentialDecay/FloorFloortrain/ExponentialDecay/truediv*
T0*
_output_shapes
: 
r
train/ExponentialDecay/PowPowtrain/decay_ratetrain/ExponentialDecay/Floor*
T0*
_output_shapes
: 
o
train/ExponentialDecayMultrain/learning_ratetrain/ExponentialDecay/Pow*
T0*
_output_shapes
: 
g
train/gradients/ShapeShape$train/CategoricalCrossEntropy_0/Mean*
T0*
_output_shapes
: 
Z
train/gradients/ConstConst*
dtype0*
valueB
 *  ?*
_output_shapes
: 
k
train/gradients/FillFilltrain/gradients/Shapetrain/gradients/Const*
T0*
_output_shapes
: 

Gtrain/gradients/train/CategoricalCrossEntropy_0/Mean_grad/Reshape/shapeConst*
dtype0*
valueB:*
_output_shapes
:
Đ
Atrain/gradients/train/CategoricalCrossEntropy_0/Mean_grad/ReshapeReshapetrain/gradients/FillGtrain/gradients/train/CategoricalCrossEntropy_0/Mean_grad/Reshape/shape*
T0*
_output_shapes
:
Ź
?train/gradients/train/CategoricalCrossEntropy_0/Mean_grad/ShapeShape=train/CategoricalCrossEntropy_0/SoftmaxCrossEntropyWithLogits*
T0*
_output_shapes
:
ř
>train/gradients/train/CategoricalCrossEntropy_0/Mean_grad/TileTileAtrain/gradients/train/CategoricalCrossEntropy_0/Mean_grad/Reshape?train/gradients/train/CategoricalCrossEntropy_0/Mean_grad/Shape*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ž
Atrain/gradients/train/CategoricalCrossEntropy_0/Mean_grad/Shape_1Shape=train/CategoricalCrossEntropy_0/SoftmaxCrossEntropyWithLogits*
T0*
_output_shapes
:

Atrain/gradients/train/CategoricalCrossEntropy_0/Mean_grad/Shape_2Shape$train/CategoricalCrossEntropy_0/Mean*
T0*
_output_shapes
: 

?train/gradients/train/CategoricalCrossEntropy_0/Mean_grad/ConstConst*
dtype0*
valueB: *
_output_shapes
:
ü
>train/gradients/train/CategoricalCrossEntropy_0/Mean_grad/ProdProdAtrain/gradients/train/CategoricalCrossEntropy_0/Mean_grad/Shape_1?train/gradients/train/CategoricalCrossEntropy_0/Mean_grad/Const*
T0*
	keep_dims( *
_output_shapes
: 

Atrain/gradients/train/CategoricalCrossEntropy_0/Mean_grad/Const_1Const*
dtype0*
valueB: *
_output_shapes
:

@train/gradients/train/CategoricalCrossEntropy_0/Mean_grad/Prod_1ProdAtrain/gradients/train/CategoricalCrossEntropy_0/Mean_grad/Shape_2Atrain/gradients/train/CategoricalCrossEntropy_0/Mean_grad/Const_1*
T0*
	keep_dims( *
_output_shapes
: 

Ctrain/gradients/train/CategoricalCrossEntropy_0/Mean_grad/Maximum/yConst*
dtype0*
value	B :*
_output_shapes
: 
ô
Atrain/gradients/train/CategoricalCrossEntropy_0/Mean_grad/MaximumMaximum@train/gradients/train/CategoricalCrossEntropy_0/Mean_grad/Prod_1Ctrain/gradients/train/CategoricalCrossEntropy_0/Mean_grad/Maximum/y*
T0*
_output_shapes
: 
í
Btrain/gradients/train/CategoricalCrossEntropy_0/Mean_grad/floordivDiv>train/gradients/train/CategoricalCrossEntropy_0/Mean_grad/ProdAtrain/gradients/train/CategoricalCrossEntropy_0/Mean_grad/Maximum*
T0*
_output_shapes
: 
ş
>train/gradients/train/CategoricalCrossEntropy_0/Mean_grad/CastCastBtrain/gradients/train/CategoricalCrossEntropy_0/Mean_grad/floordiv*

DstT0*

SrcT0*
_output_shapes
: 
ö
Atrain/gradients/train/CategoricalCrossEntropy_0/Mean_grad/truedivDiv>train/gradients/train/CategoricalCrossEntropy_0/Mean_grad/Tile>train/gradients/train/CategoricalCrossEntropy_0/Mean_grad/Cast*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

train/gradients/zeros_like	ZerosLike?train/CategoricalCrossEntropy_0/SoftmaxCrossEntropyWithLogits:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

Ź
atrain/gradients/train/CategoricalCrossEntropy_0/SoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙*
_output_shapes
: 
Ă
]train/gradients/train/CategoricalCrossEntropy_0/SoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDimsAtrain/gradients/train/CategoricalCrossEntropy_0/Mean_grad/truedivatrain/gradients/train/CategoricalCrossEntropy_0/SoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ż
Vtrain/gradients/train/CategoricalCrossEntropy_0/SoftmaxCrossEntropyWithLogits_grad/mulMul]train/gradients/train/CategoricalCrossEntropy_0/SoftmaxCrossEntropyWithLogits_grad/ExpandDims?train/CategoricalCrossEntropy_0/SoftmaxCrossEntropyWithLogits:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙


Rtrain/gradients/inference/CategoricalPredictionOutput_0/Softmax_0/Softmax_grad/mulMulVtrain/gradients/train/CategoricalCrossEntropy_0/SoftmaxCrossEntropyWithLogits_grad/mul9inference/CategoricalPredictionOutput_0/Softmax_0/Softmax*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

Ž
dtrain/gradients/inference/CategoricalPredictionOutput_0/Softmax_0/Softmax_grad/Sum/reduction_indicesConst*
dtype0*
valueB:*
_output_shapes
:
Ň
Rtrain/gradients/inference/CategoricalPredictionOutput_0/Softmax_0/Softmax_grad/SumSumRtrain/gradients/inference/CategoricalPredictionOutput_0/Softmax_0/Softmax_grad/muldtrain/gradients/inference/CategoricalPredictionOutput_0/Softmax_0/Softmax_grad/Sum/reduction_indices*
T0*
	keep_dims( *#
_output_shapes
:˙˙˙˙˙˙˙˙˙
­
\train/gradients/inference/CategoricalPredictionOutput_0/Softmax_0/Softmax_grad/Reshape/shapeConst*
dtype0*
valueB"˙˙˙˙   *
_output_shapes
:
Ĺ
Vtrain/gradients/inference/CategoricalPredictionOutput_0/Softmax_0/Softmax_grad/ReshapeReshapeRtrain/gradients/inference/CategoricalPredictionOutput_0/Softmax_0/Softmax_grad/Sum\train/gradients/inference/CategoricalPredictionOutput_0/Softmax_0/Softmax_grad/Reshape/shape*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ť
Rtrain/gradients/inference/CategoricalPredictionOutput_0/Softmax_0/Softmax_grad/subSubVtrain/gradients/train/CategoricalCrossEntropy_0/SoftmaxCrossEntropyWithLogits_grad/mulVtrain/gradients/inference/CategoricalPredictionOutput_0/Softmax_0/Softmax_grad/Reshape*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙


Ttrain/gradients/inference/CategoricalPredictionOutput_0/Softmax_0/Softmax_grad/mul_1MulRtrain/gradients/inference/CategoricalPredictionOutput_0/Softmax_0/Softmax_grad/sub9inference/CategoricalPredictionOutput_0/Softmax_0/Softmax*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙


mtrain/gradients/inference/CategoricalPredictionOutput_0/FullyConnected_0/Wx_plus_b/xw_plus_b_grad/BiasAddGradBiasAddGradTtrain/gradients/inference/CategoricalPredictionOutput_0/Softmax_0/Softmax_grad/mul_1*
_output_shapes
:
*
T0*
data_formatNHWC
Á
rtrain/gradients/inference/CategoricalPredictionOutput_0/FullyConnected_0/Wx_plus_b/xw_plus_b_grad/tuple/group_depsNoOpU^train/gradients/inference/CategoricalPredictionOutput_0/Softmax_0/Softmax_grad/mul_1n^train/gradients/inference/CategoricalPredictionOutput_0/FullyConnected_0/Wx_plus_b/xw_plus_b_grad/BiasAddGrad
ě
ztrain/gradients/inference/CategoricalPredictionOutput_0/FullyConnected_0/Wx_plus_b/xw_plus_b_grad/tuple/control_dependencyIdentityTtrain/gradients/inference/CategoricalPredictionOutput_0/Softmax_0/Softmax_grad/mul_1s^train/gradients/inference/CategoricalPredictionOutput_0/FullyConnected_0/Wx_plus_b/xw_plus_b_grad/tuple/group_deps*g
_class]
[Yloc:@train/gradients/inference/CategoricalPredictionOutput_0/Softmax_0/Softmax_grad/mul_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙


|train/gradients/inference/CategoricalPredictionOutput_0/FullyConnected_0/Wx_plus_b/xw_plus_b_grad/tuple/control_dependency_1Identitymtrain/gradients/inference/CategoricalPredictionOutput_0/FullyConnected_0/Wx_plus_b/xw_plus_b_grad/BiasAddGrads^train/gradients/inference/CategoricalPredictionOutput_0/FullyConnected_0/Wx_plus_b/xw_plus_b_grad/tuple/group_deps*
_classv
trloc:@train/gradients/inference/CategoricalPredictionOutput_0/FullyConnected_0/Wx_plus_b/xw_plus_b_grad/BiasAddGrad*
T0*
_output_shapes
:


otrain/gradients/inference/CategoricalPredictionOutput_0/FullyConnected_0/Wx_plus_b/xw_plus_b/MatMul_grad/MatMulMatMulztrain/gradients/inference/CategoricalPredictionOutput_0/FullyConnected_0/Wx_plus_b/xw_plus_b_grad/tuple/control_dependencyEinference/CategoricalPredictionOutput_0/FullyConnected_0/weights/read*
transpose_b(*
transpose_a( *
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
č
qtrain/gradients/inference/CategoricalPredictionOutput_0/FullyConnected_0/Wx_plus_b/xw_plus_b/MatMul_grad/MatMul_1MatMulinference/Dropout_1/dropout/mulztrain/gradients/inference/CategoricalPredictionOutput_0/FullyConnected_0/Wx_plus_b/xw_plus_b_grad/tuple/control_dependency*
transpose_b( *
transpose_a(*
T0*
_output_shapes
:	 

ç
ytrain/gradients/inference/CategoricalPredictionOutput_0/FullyConnected_0/Wx_plus_b/xw_plus_b/MatMul_grad/tuple/group_depsNoOpp^train/gradients/inference/CategoricalPredictionOutput_0/FullyConnected_0/Wx_plus_b/xw_plus_b/MatMul_grad/MatMulr^train/gradients/inference/CategoricalPredictionOutput_0/FullyConnected_0/Wx_plus_b/xw_plus_b/MatMul_grad/MatMul_1
ł
train/gradients/inference/CategoricalPredictionOutput_0/FullyConnected_0/Wx_plus_b/xw_plus_b/MatMul_grad/tuple/control_dependencyIdentityotrain/gradients/inference/CategoricalPredictionOutput_0/FullyConnected_0/Wx_plus_b/xw_plus_b/MatMul_grad/MatMulz^train/gradients/inference/CategoricalPredictionOutput_0/FullyConnected_0/Wx_plus_b/xw_plus_b/MatMul_grad/tuple/group_deps*
_classx
vtloc:@train/gradients/inference/CategoricalPredictionOutput_0/FullyConnected_0/Wx_plus_b/xw_plus_b/MatMul_grad/MatMul*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
°
train/gradients/inference/CategoricalPredictionOutput_0/FullyConnected_0/Wx_plus_b/xw_plus_b/MatMul_grad/tuple/control_dependency_1Identityqtrain/gradients/inference/CategoricalPredictionOutput_0/FullyConnected_0/Wx_plus_b/xw_plus_b/MatMul_grad/MatMul_1z^train/gradients/inference/CategoricalPredictionOutput_0/FullyConnected_0/Wx_plus_b/xw_plus_b/MatMul_grad/tuple/group_deps*
_classz
xvloc:@train/gradients/inference/CategoricalPredictionOutput_0/FullyConnected_0/Wx_plus_b/xw_plus_b/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	 


:train/gradients/inference/Dropout_1/dropout/mul_grad/ShapeShapeinference/Dropout_1/dropout/Div*
T0*
_output_shapes
:

<train/gradients/inference/Dropout_1/dropout/mul_grad/Shape_1Shape!inference/Dropout_1/dropout/Floor*
T0*
_output_shapes
:

Jtrain/gradients/inference/Dropout_1/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs:train/gradients/inference/Dropout_1/dropout/mul_grad/Shape<train/gradients/inference/Dropout_1/dropout/mul_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙

8train/gradients/inference/Dropout_1/dropout/mul_grad/mulMultrain/gradients/inference/CategoricalPredictionOutput_0/FullyConnected_0/Wx_plus_b/xw_plus_b/MatMul_grad/tuple/control_dependency!inference/Dropout_1/dropout/Floor*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
ů
8train/gradients/inference/Dropout_1/dropout/mul_grad/SumSum8train/gradients/inference/Dropout_1/dropout/mul_grad/mulJtrain/gradients/inference/Dropout_1/dropout/mul_grad/BroadcastGradientArgs*
T0*
	keep_dims( *
_output_shapes
:
đ
<train/gradients/inference/Dropout_1/dropout/mul_grad/ReshapeReshape8train/gradients/inference/Dropout_1/dropout/mul_grad/Sum:train/gradients/inference/Dropout_1/dropout/mul_grad/Shape*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

:train/gradients/inference/Dropout_1/dropout/mul_grad/mul_1Mulinference/Dropout_1/dropout/Divtrain/gradients/inference/CategoricalPredictionOutput_0/FullyConnected_0/Wx_plus_b/xw_plus_b/MatMul_grad/tuple/control_dependency*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
˙
:train/gradients/inference/Dropout_1/dropout/mul_grad/Sum_1Sum:train/gradients/inference/Dropout_1/dropout/mul_grad/mul_1Ltrain/gradients/inference/Dropout_1/dropout/mul_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *
_output_shapes
:
ţ
>train/gradients/inference/Dropout_1/dropout/mul_grad/Reshape_1Reshape:train/gradients/inference/Dropout_1/dropout/mul_grad/Sum_1<train/gradients/inference/Dropout_1/dropout/mul_grad/Shape_1*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Í
Etrain/gradients/inference/Dropout_1/dropout/mul_grad/tuple/group_depsNoOp=^train/gradients/inference/Dropout_1/dropout/mul_grad/Reshape?^train/gradients/inference/Dropout_1/dropout/mul_grad/Reshape_1
ă
Mtrain/gradients/inference/Dropout_1/dropout/mul_grad/tuple/control_dependencyIdentity<train/gradients/inference/Dropout_1/dropout/mul_grad/ReshapeF^train/gradients/inference/Dropout_1/dropout/mul_grad/tuple/group_deps*O
_classE
CAloc:@train/gradients/inference/Dropout_1/dropout/mul_grad/Reshape*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
ń
Otrain/gradients/inference/Dropout_1/dropout/mul_grad/tuple/control_dependency_1Identity>train/gradients/inference/Dropout_1/dropout/mul_grad/Reshape_1F^train/gradients/inference/Dropout_1/dropout/mul_grad/tuple/group_deps*Q
_classG
ECloc:@train/gradients/inference/Dropout_1/dropout/mul_grad/Reshape_1*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

:train/gradients/inference/Dropout_1/dropout/Div_grad/ShapeShape%inference/RectifiedLinearUnit_14/relu*
T0*
_output_shapes
:

<train/gradients/inference/Dropout_1/dropout/Div_grad/Shape_1Shape,inference/Dropout_1/dropout_keep_probability*
T0*
_output_shapes
: 

Jtrain/gradients/inference/Dropout_1/dropout/Div_grad/BroadcastGradientArgsBroadcastGradientArgs:train/gradients/inference/Dropout_1/dropout/Div_grad/Shape<train/gradients/inference/Dropout_1/dropout/Div_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
ó
<train/gradients/inference/Dropout_1/dropout/Div_grad/truedivDivMtrain/gradients/inference/Dropout_1/dropout/mul_grad/tuple/control_dependency,inference/Dropout_1/dropout_keep_probability*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
ý
8train/gradients/inference/Dropout_1/dropout/Div_grad/SumSum<train/gradients/inference/Dropout_1/dropout/Div_grad/truedivJtrain/gradients/inference/Dropout_1/dropout/Div_grad/BroadcastGradientArgs*
T0*
	keep_dims( *
_output_shapes
:
đ
<train/gradients/inference/Dropout_1/dropout/Div_grad/ReshapeReshape8train/gradients/inference/Dropout_1/dropout/Div_grad/Sum:train/gradients/inference/Dropout_1/dropout/Div_grad/Shape*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

8train/gradients/inference/Dropout_1/dropout/Div_grad/NegNeg%inference/RectifiedLinearUnit_14/relu*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

;train/gradients/inference/Dropout_1/dropout/Div_grad/SquareSquare,inference/Dropout_1/dropout_keep_probability*
T0*
_output_shapes
: 
ď
>train/gradients/inference/Dropout_1/dropout/Div_grad/truediv_1Div8train/gradients/inference/Dropout_1/dropout/Div_grad/Neg;train/gradients/inference/Dropout_1/dropout/Div_grad/Square*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

8train/gradients/inference/Dropout_1/dropout/Div_grad/mulMulMtrain/gradients/inference/Dropout_1/dropout/mul_grad/tuple/control_dependency>train/gradients/inference/Dropout_1/dropout/Div_grad/truediv_1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
ý
:train/gradients/inference/Dropout_1/dropout/Div_grad/Sum_1Sum8train/gradients/inference/Dropout_1/dropout/Div_grad/mulLtrain/gradients/inference/Dropout_1/dropout/Div_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *
_output_shapes
:
ä
>train/gradients/inference/Dropout_1/dropout/Div_grad/Reshape_1Reshape:train/gradients/inference/Dropout_1/dropout/Div_grad/Sum_1<train/gradients/inference/Dropout_1/dropout/Div_grad/Shape_1*
T0*
_output_shapes
: 
Í
Etrain/gradients/inference/Dropout_1/dropout/Div_grad/tuple/group_depsNoOp=^train/gradients/inference/Dropout_1/dropout/Div_grad/Reshape?^train/gradients/inference/Dropout_1/dropout/Div_grad/Reshape_1
ă
Mtrain/gradients/inference/Dropout_1/dropout/Div_grad/tuple/control_dependencyIdentity<train/gradients/inference/Dropout_1/dropout/Div_grad/ReshapeF^train/gradients/inference/Dropout_1/dropout/Div_grad/tuple/group_deps*O
_classE
CAloc:@train/gradients/inference/Dropout_1/dropout/Div_grad/Reshape*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
×
Otrain/gradients/inference/Dropout_1/dropout/Div_grad/tuple/control_dependency_1Identity>train/gradients/inference/Dropout_1/dropout/Div_grad/Reshape_1F^train/gradients/inference/Dropout_1/dropout/Div_grad/tuple/group_deps*Q
_classG
ECloc:@train/gradients/inference/Dropout_1/dropout/Div_grad/Reshape_1*
T0*
_output_shapes
: 
ř
Ctrain/gradients/inference/RectifiedLinearUnit_14/relu_grad/ReluGradReluGradMtrain/gradients/inference/Dropout_1/dropout/Div_grad/tuple/control_dependency%inference/RectifiedLinearUnit_14/relu*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
ŕ
Otrain/gradients/inference/FullyConnected_1/Wx_plus_b/xw_plus_b_grad/BiasAddGradBiasAddGradCtrain/gradients/inference/RectifiedLinearUnit_14/relu_grad/ReluGrad*
_output_shapes	
: *
T0*
data_formatNHWC
ô
Ttrain/gradients/inference/FullyConnected_1/Wx_plus_b/xw_plus_b_grad/tuple/group_depsNoOpD^train/gradients/inference/RectifiedLinearUnit_14/relu_grad/ReluGradP^train/gradients/inference/FullyConnected_1/Wx_plus_b/xw_plus_b_grad/BiasAddGrad

\train/gradients/inference/FullyConnected_1/Wx_plus_b/xw_plus_b_grad/tuple/control_dependencyIdentityCtrain/gradients/inference/RectifiedLinearUnit_14/relu_grad/ReluGradU^train/gradients/inference/FullyConnected_1/Wx_plus_b/xw_plus_b_grad/tuple/group_deps*V
_classL
JHloc:@train/gradients/inference/RectifiedLinearUnit_14/relu_grad/ReluGrad*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

^train/gradients/inference/FullyConnected_1/Wx_plus_b/xw_plus_b_grad/tuple/control_dependency_1IdentityOtrain/gradients/inference/FullyConnected_1/Wx_plus_b/xw_plus_b_grad/BiasAddGradU^train/gradients/inference/FullyConnected_1/Wx_plus_b/xw_plus_b_grad/tuple/group_deps*b
_classX
VTloc:@train/gradients/inference/FullyConnected_1/Wx_plus_b/xw_plus_b_grad/BiasAddGrad*
T0*
_output_shapes	
: 
ť
Qtrain/gradients/inference/FullyConnected_1/Wx_plus_b/xw_plus_b/MatMul_grad/MatMulMatMul\train/gradients/inference/FullyConnected_1/Wx_plus_b/xw_plus_b_grad/tuple/control_dependency'inference/FullyConnected_1/weights/read*
transpose_b(*
transpose_a( *
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
­
Strain/gradients/inference/FullyConnected_1/Wx_plus_b/xw_plus_b/MatMul_grad/MatMul_1MatMulinference/Dropout_0/dropout/mul\train/gradients/inference/FullyConnected_1/Wx_plus_b/xw_plus_b_grad/tuple/control_dependency*
transpose_b( *
transpose_a(*
T0* 
_output_shapes
:
  

[train/gradients/inference/FullyConnected_1/Wx_plus_b/xw_plus_b/MatMul_grad/tuple/group_depsNoOpR^train/gradients/inference/FullyConnected_1/Wx_plus_b/xw_plus_b/MatMul_grad/MatMulT^train/gradients/inference/FullyConnected_1/Wx_plus_b/xw_plus_b/MatMul_grad/MatMul_1
š
ctrain/gradients/inference/FullyConnected_1/Wx_plus_b/xw_plus_b/MatMul_grad/tuple/control_dependencyIdentityQtrain/gradients/inference/FullyConnected_1/Wx_plus_b/xw_plus_b/MatMul_grad/MatMul\^train/gradients/inference/FullyConnected_1/Wx_plus_b/xw_plus_b/MatMul_grad/tuple/group_deps*d
_classZ
XVloc:@train/gradients/inference/FullyConnected_1/Wx_plus_b/xw_plus_b/MatMul_grad/MatMul*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
ˇ
etrain/gradients/inference/FullyConnected_1/Wx_plus_b/xw_plus_b/MatMul_grad/tuple/control_dependency_1IdentityStrain/gradients/inference/FullyConnected_1/Wx_plus_b/xw_plus_b/MatMul_grad/MatMul_1\^train/gradients/inference/FullyConnected_1/Wx_plus_b/xw_plus_b/MatMul_grad/tuple/group_deps*f
_class\
ZXloc:@train/gradients/inference/FullyConnected_1/Wx_plus_b/xw_plus_b/MatMul_grad/MatMul_1*
T0* 
_output_shapes
:
  

:train/gradients/inference/Dropout_0/dropout/mul_grad/ShapeShapeinference/Dropout_0/dropout/Div*
T0*
_output_shapes
:

<train/gradients/inference/Dropout_0/dropout/mul_grad/Shape_1Shape!inference/Dropout_0/dropout/Floor*
T0*
_output_shapes
:

Jtrain/gradients/inference/Dropout_0/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs:train/gradients/inference/Dropout_0/dropout/mul_grad/Shape<train/gradients/inference/Dropout_0/dropout/mul_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
ú
8train/gradients/inference/Dropout_0/dropout/mul_grad/mulMulctrain/gradients/inference/FullyConnected_1/Wx_plus_b/xw_plus_b/MatMul_grad/tuple/control_dependency!inference/Dropout_0/dropout/Floor*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
ů
8train/gradients/inference/Dropout_0/dropout/mul_grad/SumSum8train/gradients/inference/Dropout_0/dropout/mul_grad/mulJtrain/gradients/inference/Dropout_0/dropout/mul_grad/BroadcastGradientArgs*
T0*
	keep_dims( *
_output_shapes
:
đ
<train/gradients/inference/Dropout_0/dropout/mul_grad/ReshapeReshape8train/gradients/inference/Dropout_0/dropout/mul_grad/Sum:train/gradients/inference/Dropout_0/dropout/mul_grad/Shape*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
ú
:train/gradients/inference/Dropout_0/dropout/mul_grad/mul_1Mulinference/Dropout_0/dropout/Divctrain/gradients/inference/FullyConnected_1/Wx_plus_b/xw_plus_b/MatMul_grad/tuple/control_dependency*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
˙
:train/gradients/inference/Dropout_0/dropout/mul_grad/Sum_1Sum:train/gradients/inference/Dropout_0/dropout/mul_grad/mul_1Ltrain/gradients/inference/Dropout_0/dropout/mul_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *
_output_shapes
:
ţ
>train/gradients/inference/Dropout_0/dropout/mul_grad/Reshape_1Reshape:train/gradients/inference/Dropout_0/dropout/mul_grad/Sum_1<train/gradients/inference/Dropout_0/dropout/mul_grad/Shape_1*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Í
Etrain/gradients/inference/Dropout_0/dropout/mul_grad/tuple/group_depsNoOp=^train/gradients/inference/Dropout_0/dropout/mul_grad/Reshape?^train/gradients/inference/Dropout_0/dropout/mul_grad/Reshape_1
ă
Mtrain/gradients/inference/Dropout_0/dropout/mul_grad/tuple/control_dependencyIdentity<train/gradients/inference/Dropout_0/dropout/mul_grad/ReshapeF^train/gradients/inference/Dropout_0/dropout/mul_grad/tuple/group_deps*O
_classE
CAloc:@train/gradients/inference/Dropout_0/dropout/mul_grad/Reshape*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
ń
Otrain/gradients/inference/Dropout_0/dropout/mul_grad/tuple/control_dependency_1Identity>train/gradients/inference/Dropout_0/dropout/mul_grad/Reshape_1F^train/gradients/inference/Dropout_0/dropout/mul_grad/tuple/group_deps*Q
_classG
ECloc:@train/gradients/inference/Dropout_0/dropout/mul_grad/Reshape_1*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

:train/gradients/inference/Dropout_0/dropout/Div_grad/ShapeShape%inference/RectifiedLinearUnit_13/relu*
T0*
_output_shapes
:

<train/gradients/inference/Dropout_0/dropout/Div_grad/Shape_1Shape,inference/Dropout_0/dropout_keep_probability*
T0*
_output_shapes
: 

Jtrain/gradients/inference/Dropout_0/dropout/Div_grad/BroadcastGradientArgsBroadcastGradientArgs:train/gradients/inference/Dropout_0/dropout/Div_grad/Shape<train/gradients/inference/Dropout_0/dropout/Div_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
ó
<train/gradients/inference/Dropout_0/dropout/Div_grad/truedivDivMtrain/gradients/inference/Dropout_0/dropout/mul_grad/tuple/control_dependency,inference/Dropout_0/dropout_keep_probability*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
ý
8train/gradients/inference/Dropout_0/dropout/Div_grad/SumSum<train/gradients/inference/Dropout_0/dropout/Div_grad/truedivJtrain/gradients/inference/Dropout_0/dropout/Div_grad/BroadcastGradientArgs*
T0*
	keep_dims( *
_output_shapes
:
đ
<train/gradients/inference/Dropout_0/dropout/Div_grad/ReshapeReshape8train/gradients/inference/Dropout_0/dropout/Div_grad/Sum:train/gradients/inference/Dropout_0/dropout/Div_grad/Shape*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

8train/gradients/inference/Dropout_0/dropout/Div_grad/NegNeg%inference/RectifiedLinearUnit_13/relu*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

;train/gradients/inference/Dropout_0/dropout/Div_grad/SquareSquare,inference/Dropout_0/dropout_keep_probability*
T0*
_output_shapes
: 
ď
>train/gradients/inference/Dropout_0/dropout/Div_grad/truediv_1Div8train/gradients/inference/Dropout_0/dropout/Div_grad/Neg;train/gradients/inference/Dropout_0/dropout/Div_grad/Square*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

8train/gradients/inference/Dropout_0/dropout/Div_grad/mulMulMtrain/gradients/inference/Dropout_0/dropout/mul_grad/tuple/control_dependency>train/gradients/inference/Dropout_0/dropout/Div_grad/truediv_1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
ý
:train/gradients/inference/Dropout_0/dropout/Div_grad/Sum_1Sum8train/gradients/inference/Dropout_0/dropout/Div_grad/mulLtrain/gradients/inference/Dropout_0/dropout/Div_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *
_output_shapes
:
ä
>train/gradients/inference/Dropout_0/dropout/Div_grad/Reshape_1Reshape:train/gradients/inference/Dropout_0/dropout/Div_grad/Sum_1<train/gradients/inference/Dropout_0/dropout/Div_grad/Shape_1*
T0*
_output_shapes
: 
Í
Etrain/gradients/inference/Dropout_0/dropout/Div_grad/tuple/group_depsNoOp=^train/gradients/inference/Dropout_0/dropout/Div_grad/Reshape?^train/gradients/inference/Dropout_0/dropout/Div_grad/Reshape_1
ă
Mtrain/gradients/inference/Dropout_0/dropout/Div_grad/tuple/control_dependencyIdentity<train/gradients/inference/Dropout_0/dropout/Div_grad/ReshapeF^train/gradients/inference/Dropout_0/dropout/Div_grad/tuple/group_deps*O
_classE
CAloc:@train/gradients/inference/Dropout_0/dropout/Div_grad/Reshape*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
×
Otrain/gradients/inference/Dropout_0/dropout/Div_grad/tuple/control_dependency_1Identity>train/gradients/inference/Dropout_0/dropout/Div_grad/Reshape_1F^train/gradients/inference/Dropout_0/dropout/Div_grad/tuple/group_deps*Q
_classG
ECloc:@train/gradients/inference/Dropout_0/dropout/Div_grad/Reshape_1*
T0*
_output_shapes
: 
ř
Ctrain/gradients/inference/RectifiedLinearUnit_13/relu_grad/ReluGradReluGradMtrain/gradients/inference/Dropout_0/dropout/Div_grad/tuple/control_dependency%inference/RectifiedLinearUnit_13/relu*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
ŕ
Otrain/gradients/inference/FullyConnected_0/Wx_plus_b/xw_plus_b_grad/BiasAddGradBiasAddGradCtrain/gradients/inference/RectifiedLinearUnit_13/relu_grad/ReluGrad*
_output_shapes	
: *
T0*
data_formatNHWC
ô
Ttrain/gradients/inference/FullyConnected_0/Wx_plus_b/xw_plus_b_grad/tuple/group_depsNoOpD^train/gradients/inference/RectifiedLinearUnit_13/relu_grad/ReluGradP^train/gradients/inference/FullyConnected_0/Wx_plus_b/xw_plus_b_grad/BiasAddGrad

\train/gradients/inference/FullyConnected_0/Wx_plus_b/xw_plus_b_grad/tuple/control_dependencyIdentityCtrain/gradients/inference/RectifiedLinearUnit_13/relu_grad/ReluGradU^train/gradients/inference/FullyConnected_0/Wx_plus_b/xw_plus_b_grad/tuple/group_deps*V
_classL
JHloc:@train/gradients/inference/RectifiedLinearUnit_13/relu_grad/ReluGrad*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

^train/gradients/inference/FullyConnected_0/Wx_plus_b/xw_plus_b_grad/tuple/control_dependency_1IdentityOtrain/gradients/inference/FullyConnected_0/Wx_plus_b/xw_plus_b_grad/BiasAddGradU^train/gradients/inference/FullyConnected_0/Wx_plus_b/xw_plus_b_grad/tuple/group_deps*b
_classX
VTloc:@train/gradients/inference/FullyConnected_0/Wx_plus_b/xw_plus_b_grad/BiasAddGrad*
T0*
_output_shapes	
: 
ź
Qtrain/gradients/inference/FullyConnected_0/Wx_plus_b/xw_plus_b/MatMul_grad/MatMulMatMul\train/gradients/inference/FullyConnected_0/Wx_plus_b/xw_plus_b_grad/tuple/control_dependency'inference/FullyConnected_0/weights/read*
transpose_b(*
transpose_a( *
T0*)
_output_shapes
:˙˙˙˙˙˙˙˙˙Ä
Ş
Strain/gradients/inference/FullyConnected_0/Wx_plus_b/xw_plus_b/MatMul_grad/MatMul_1MatMulinference/Flatten_0/Reshape\train/gradients/inference/FullyConnected_0/Wx_plus_b/xw_plus_b_grad/tuple/control_dependency*
transpose_b( *
transpose_a(*
T0*!
_output_shapes
:Ä 

[train/gradients/inference/FullyConnected_0/Wx_plus_b/xw_plus_b/MatMul_grad/tuple/group_depsNoOpR^train/gradients/inference/FullyConnected_0/Wx_plus_b/xw_plus_b/MatMul_grad/MatMulT^train/gradients/inference/FullyConnected_0/Wx_plus_b/xw_plus_b/MatMul_grad/MatMul_1
ş
ctrain/gradients/inference/FullyConnected_0/Wx_plus_b/xw_plus_b/MatMul_grad/tuple/control_dependencyIdentityQtrain/gradients/inference/FullyConnected_0/Wx_plus_b/xw_plus_b/MatMul_grad/MatMul\^train/gradients/inference/FullyConnected_0/Wx_plus_b/xw_plus_b/MatMul_grad/tuple/group_deps*d
_classZ
XVloc:@train/gradients/inference/FullyConnected_0/Wx_plus_b/xw_plus_b/MatMul_grad/MatMul*
T0*)
_output_shapes
:˙˙˙˙˙˙˙˙˙Ä
¸
etrain/gradients/inference/FullyConnected_0/Wx_plus_b/xw_plus_b/MatMul_grad/tuple/control_dependency_1IdentityStrain/gradients/inference/FullyConnected_0/Wx_plus_b/xw_plus_b/MatMul_grad/MatMul_1\^train/gradients/inference/FullyConnected_0/Wx_plus_b/xw_plus_b/MatMul_grad/tuple/group_deps*f
_class\
ZXloc:@train/gradients/inference/FullyConnected_0/Wx_plus_b/xw_plus_b/MatMul_grad/MatMul_1*
T0*!
_output_shapes
:Ä 

6train/gradients/inference/Flatten_0/Reshape_grad/ShapeShape inference/MaxPooling2D_4/MaxPool*
T0*
_output_shapes
:

8train/gradients/inference/Flatten_0/Reshape_grad/ReshapeReshapectrain/gradients/inference/FullyConnected_0/Wx_plus_b/xw_plus_b/MatMul_grad/tuple/control_dependency6train/gradients/inference/Flatten_0/Reshape_grad/Shape*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
ŕ
Atrain/gradients/inference/MaxPooling2D_4/MaxPool_grad/MaxPoolGradMaxPoolGrad%inference/RectifiedLinearUnit_12/relu inference/MaxPooling2D_4/MaxPool8train/gradients/inference/Flatten_0/Reshape_grad/Reshape*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
data_formatNHWC*
paddingSAME*
strides
*
ksize
*
T0
ô
Ctrain/gradients/inference/RectifiedLinearUnit_12/relu_grad/ReluGradReluGradAtrain/gradients/inference/MaxPooling2D_4/MaxPool_grad/MaxPoolGrad%inference/RectifiedLinearUnit_12/relu*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙

<train/gradients/inference/Convolution2D_12/Conv2D_grad/ShapeShapeinference/ZeroPadding2D_12/Pad*
T0*
_output_shapes
:
¸
Jtrain/gradients/inference/Convolution2D_12/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput<train/gradients/inference/Convolution2D_12/Conv2D_grad/Shape&inference/Convolution2D_12/kernel/readCtrain/gradients/inference/RectifiedLinearUnit_12/relu_grad/ReluGrad*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0

>train/gradients/inference/Convolution2D_12/Conv2D_grad/Shape_1Shape&inference/Convolution2D_12/kernel/read*
T0*
_output_shapes
:

Ktrain/gradients/inference/Convolution2D_12/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterinference/ZeroPadding2D_12/Pad>train/gradients/inference/Convolution2D_12/Conv2D_grad/Shape_1Ctrain/gradients/inference/RectifiedLinearUnit_12/relu_grad/ReluGrad*(
_output_shapes
:*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
ę
Gtrain/gradients/inference/Convolution2D_12/Conv2D_grad/tuple/group_depsNoOpK^train/gradients/inference/Convolution2D_12/Conv2D_grad/Conv2DBackpropInputL^train/gradients/inference/Convolution2D_12/Conv2D_grad/Conv2DBackpropFilter

Otrain/gradients/inference/Convolution2D_12/Conv2D_grad/tuple/control_dependencyIdentityJtrain/gradients/inference/Convolution2D_12/Conv2D_grad/Conv2DBackpropInputH^train/gradients/inference/Convolution2D_12/Conv2D_grad/tuple/group_deps*]
_classS
QOloc:@train/gradients/inference/Convolution2D_12/Conv2D_grad/Conv2DBackpropInput*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙

Qtrain/gradients/inference/Convolution2D_12/Conv2D_grad/tuple/control_dependency_1IdentityKtrain/gradients/inference/Convolution2D_12/Conv2D_grad/Conv2DBackpropFilterH^train/gradients/inference/Convolution2D_12/Conv2D_grad/tuple/group_deps*^
_classT
RPloc:@train/gradients/inference/Convolution2D_12/Conv2D_grad/Conv2DBackpropFilter*
T0*(
_output_shapes
:

8train/gradients/inference/ZeroPadding2D_12/Pad_grad/RankRank%inference/RectifiedLinearUnit_11/relu*
T0*
_output_shapes
: 
|
:train/gradients/inference/ZeroPadding2D_12/Pad_grad/pack/1Const*
dtype0*
value	B :*
_output_shapes
: 
đ
8train/gradients/inference/ZeroPadding2D_12/Pad_grad/packPack8train/gradients/inference/ZeroPadding2D_12/Pad_grad/Rank:train/gradients/inference/ZeroPadding2D_12/Pad_grad/pack/1*
N*
T0*
_output_shapes
:*

axis 

?train/gradients/inference/ZeroPadding2D_12/Pad_grad/Slice/beginConst*
dtype0*
valueB"        *
_output_shapes
:
Ž
9train/gradients/inference/ZeroPadding2D_12/Pad_grad/SliceSlice'inference/ZeroPadding2D_12/Pad/paddings?train/gradients/inference/ZeroPadding2D_12/Pad_grad/Slice/begin8train/gradients/inference/ZeroPadding2D_12/Pad_grad/pack*
Index0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

Atrain/gradients/inference/ZeroPadding2D_12/Pad_grad/Reshape/shapeConst*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙*
_output_shapes
:
ň
;train/gradients/inference/ZeroPadding2D_12/Pad_grad/ReshapeReshape9train/gradients/inference/ZeroPadding2D_12/Pad_grad/SliceAtrain/gradients/inference/ZeroPadding2D_12/Pad_grad/Reshape/shape*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

9train/gradients/inference/ZeroPadding2D_12/Pad_grad/ShapeShape%inference/RectifiedLinearUnit_11/relu*
T0*
_output_shapes
:
Ő
;train/gradients/inference/ZeroPadding2D_12/Pad_grad/Slice_1SliceOtrain/gradients/inference/Convolution2D_12/Conv2D_grad/tuple/control_dependency;train/gradients/inference/ZeroPadding2D_12/Pad_grad/Reshape9train/gradients/inference/ZeroPadding2D_12/Pad_grad/Shape*
Index0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
î
Ctrain/gradients/inference/RectifiedLinearUnit_11/relu_grad/ReluGradReluGrad;train/gradients/inference/ZeroPadding2D_12/Pad_grad/Slice_1%inference/RectifiedLinearUnit_11/relu*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙

<train/gradients/inference/Convolution2D_11/Conv2D_grad/ShapeShapeinference/ZeroPadding2D_11/Pad*
T0*
_output_shapes
:
¸
Jtrain/gradients/inference/Convolution2D_11/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput<train/gradients/inference/Convolution2D_11/Conv2D_grad/Shape&inference/Convolution2D_11/kernel/readCtrain/gradients/inference/RectifiedLinearUnit_11/relu_grad/ReluGrad*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0

>train/gradients/inference/Convolution2D_11/Conv2D_grad/Shape_1Shape&inference/Convolution2D_11/kernel/read*
T0*
_output_shapes
:

Ktrain/gradients/inference/Convolution2D_11/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterinference/ZeroPadding2D_11/Pad>train/gradients/inference/Convolution2D_11/Conv2D_grad/Shape_1Ctrain/gradients/inference/RectifiedLinearUnit_11/relu_grad/ReluGrad*(
_output_shapes
:*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
ę
Gtrain/gradients/inference/Convolution2D_11/Conv2D_grad/tuple/group_depsNoOpK^train/gradients/inference/Convolution2D_11/Conv2D_grad/Conv2DBackpropInputL^train/gradients/inference/Convolution2D_11/Conv2D_grad/Conv2DBackpropFilter

Otrain/gradients/inference/Convolution2D_11/Conv2D_grad/tuple/control_dependencyIdentityJtrain/gradients/inference/Convolution2D_11/Conv2D_grad/Conv2DBackpropInputH^train/gradients/inference/Convolution2D_11/Conv2D_grad/tuple/group_deps*]
_classS
QOloc:@train/gradients/inference/Convolution2D_11/Conv2D_grad/Conv2DBackpropInput*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙

Qtrain/gradients/inference/Convolution2D_11/Conv2D_grad/tuple/control_dependency_1IdentityKtrain/gradients/inference/Convolution2D_11/Conv2D_grad/Conv2DBackpropFilterH^train/gradients/inference/Convolution2D_11/Conv2D_grad/tuple/group_deps*^
_classT
RPloc:@train/gradients/inference/Convolution2D_11/Conv2D_grad/Conv2DBackpropFilter*
T0*(
_output_shapes
:

8train/gradients/inference/ZeroPadding2D_11/Pad_grad/RankRank%inference/RectifiedLinearUnit_10/relu*
T0*
_output_shapes
: 
|
:train/gradients/inference/ZeroPadding2D_11/Pad_grad/pack/1Const*
dtype0*
value	B :*
_output_shapes
: 
đ
8train/gradients/inference/ZeroPadding2D_11/Pad_grad/packPack8train/gradients/inference/ZeroPadding2D_11/Pad_grad/Rank:train/gradients/inference/ZeroPadding2D_11/Pad_grad/pack/1*
N*
T0*
_output_shapes
:*

axis 

?train/gradients/inference/ZeroPadding2D_11/Pad_grad/Slice/beginConst*
dtype0*
valueB"        *
_output_shapes
:
Ž
9train/gradients/inference/ZeroPadding2D_11/Pad_grad/SliceSlice'inference/ZeroPadding2D_11/Pad/paddings?train/gradients/inference/ZeroPadding2D_11/Pad_grad/Slice/begin8train/gradients/inference/ZeroPadding2D_11/Pad_grad/pack*
Index0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

Atrain/gradients/inference/ZeroPadding2D_11/Pad_grad/Reshape/shapeConst*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙*
_output_shapes
:
ň
;train/gradients/inference/ZeroPadding2D_11/Pad_grad/ReshapeReshape9train/gradients/inference/ZeroPadding2D_11/Pad_grad/SliceAtrain/gradients/inference/ZeroPadding2D_11/Pad_grad/Reshape/shape*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

9train/gradients/inference/ZeroPadding2D_11/Pad_grad/ShapeShape%inference/RectifiedLinearUnit_10/relu*
T0*
_output_shapes
:
Ő
;train/gradients/inference/ZeroPadding2D_11/Pad_grad/Slice_1SliceOtrain/gradients/inference/Convolution2D_11/Conv2D_grad/tuple/control_dependency;train/gradients/inference/ZeroPadding2D_11/Pad_grad/Reshape9train/gradients/inference/ZeroPadding2D_11/Pad_grad/Shape*
Index0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙		
î
Ctrain/gradients/inference/RectifiedLinearUnit_10/relu_grad/ReluGradReluGrad;train/gradients/inference/ZeroPadding2D_11/Pad_grad/Slice_1%inference/RectifiedLinearUnit_10/relu*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙		

<train/gradients/inference/Convolution2D_10/Conv2D_grad/ShapeShapeinference/ZeroPadding2D_10/Pad*
T0*
_output_shapes
:
¸
Jtrain/gradients/inference/Convolution2D_10/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput<train/gradients/inference/Convolution2D_10/Conv2D_grad/Shape&inference/Convolution2D_10/kernel/readCtrain/gradients/inference/RectifiedLinearUnit_10/relu_grad/ReluGrad*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0

>train/gradients/inference/Convolution2D_10/Conv2D_grad/Shape_1Shape&inference/Convolution2D_10/kernel/read*
T0*
_output_shapes
:

Ktrain/gradients/inference/Convolution2D_10/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterinference/ZeroPadding2D_10/Pad>train/gradients/inference/Convolution2D_10/Conv2D_grad/Shape_1Ctrain/gradients/inference/RectifiedLinearUnit_10/relu_grad/ReluGrad*(
_output_shapes
:*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
ę
Gtrain/gradients/inference/Convolution2D_10/Conv2D_grad/tuple/group_depsNoOpK^train/gradients/inference/Convolution2D_10/Conv2D_grad/Conv2DBackpropInputL^train/gradients/inference/Convolution2D_10/Conv2D_grad/Conv2DBackpropFilter

Otrain/gradients/inference/Convolution2D_10/Conv2D_grad/tuple/control_dependencyIdentityJtrain/gradients/inference/Convolution2D_10/Conv2D_grad/Conv2DBackpropInputH^train/gradients/inference/Convolution2D_10/Conv2D_grad/tuple/group_deps*]
_classS
QOloc:@train/gradients/inference/Convolution2D_10/Conv2D_grad/Conv2DBackpropInput*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙		

Qtrain/gradients/inference/Convolution2D_10/Conv2D_grad/tuple/control_dependency_1IdentityKtrain/gradients/inference/Convolution2D_10/Conv2D_grad/Conv2DBackpropFilterH^train/gradients/inference/Convolution2D_10/Conv2D_grad/tuple/group_deps*^
_classT
RPloc:@train/gradients/inference/Convolution2D_10/Conv2D_grad/Conv2DBackpropFilter*
T0*(
_output_shapes
:

8train/gradients/inference/ZeroPadding2D_10/Pad_grad/RankRank inference/MaxPooling2D_3/MaxPool*
T0*
_output_shapes
: 
|
:train/gradients/inference/ZeroPadding2D_10/Pad_grad/pack/1Const*
dtype0*
value	B :*
_output_shapes
: 
đ
8train/gradients/inference/ZeroPadding2D_10/Pad_grad/packPack8train/gradients/inference/ZeroPadding2D_10/Pad_grad/Rank:train/gradients/inference/ZeroPadding2D_10/Pad_grad/pack/1*
N*
T0*
_output_shapes
:*

axis 

?train/gradients/inference/ZeroPadding2D_10/Pad_grad/Slice/beginConst*
dtype0*
valueB"        *
_output_shapes
:
Ž
9train/gradients/inference/ZeroPadding2D_10/Pad_grad/SliceSlice'inference/ZeroPadding2D_10/Pad/paddings?train/gradients/inference/ZeroPadding2D_10/Pad_grad/Slice/begin8train/gradients/inference/ZeroPadding2D_10/Pad_grad/pack*
Index0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

Atrain/gradients/inference/ZeroPadding2D_10/Pad_grad/Reshape/shapeConst*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙*
_output_shapes
:
ň
;train/gradients/inference/ZeroPadding2D_10/Pad_grad/ReshapeReshape9train/gradients/inference/ZeroPadding2D_10/Pad_grad/SliceAtrain/gradients/inference/ZeroPadding2D_10/Pad_grad/Reshape/shape*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

9train/gradients/inference/ZeroPadding2D_10/Pad_grad/ShapeShape inference/MaxPooling2D_3/MaxPool*
T0*
_output_shapes
:
Ő
;train/gradients/inference/ZeroPadding2D_10/Pad_grad/Slice_1SliceOtrain/gradients/inference/Convolution2D_10/Conv2D_grad/tuple/control_dependency;train/gradients/inference/ZeroPadding2D_10/Pad_grad/Reshape9train/gradients/inference/ZeroPadding2D_10/Pad_grad/Shape*
Index0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
â
Atrain/gradients/inference/MaxPooling2D_3/MaxPool_grad/MaxPoolGradMaxPoolGrad$inference/RectifiedLinearUnit_9/relu inference/MaxPooling2D_3/MaxPool;train/gradients/inference/ZeroPadding2D_10/Pad_grad/Slice_1*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
data_formatNHWC*
paddingSAME*
strides
*
ksize
*
T0
ň
Btrain/gradients/inference/RectifiedLinearUnit_9/relu_grad/ReluGradReluGradAtrain/gradients/inference/MaxPooling2D_3/MaxPool_grad/MaxPoolGrad$inference/RectifiedLinearUnit_9/relu*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙

;train/gradients/inference/Convolution2D_9/Conv2D_grad/ShapeShapeinference/ZeroPadding2D_9/Pad*
T0*
_output_shapes
:
´
Itrain/gradients/inference/Convolution2D_9/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput;train/gradients/inference/Convolution2D_9/Conv2D_grad/Shape%inference/Convolution2D_9/kernel/readBtrain/gradients/inference/RectifiedLinearUnit_9/relu_grad/ReluGrad*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0

=train/gradients/inference/Convolution2D_9/Conv2D_grad/Shape_1Shape%inference/Convolution2D_9/kernel/read*
T0*
_output_shapes
:

Jtrain/gradients/inference/Convolution2D_9/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterinference/ZeroPadding2D_9/Pad=train/gradients/inference/Convolution2D_9/Conv2D_grad/Shape_1Btrain/gradients/inference/RectifiedLinearUnit_9/relu_grad/ReluGrad*(
_output_shapes
:*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
ç
Ftrain/gradients/inference/Convolution2D_9/Conv2D_grad/tuple/group_depsNoOpJ^train/gradients/inference/Convolution2D_9/Conv2D_grad/Conv2DBackpropInputK^train/gradients/inference/Convolution2D_9/Conv2D_grad/Conv2DBackpropFilter

Ntrain/gradients/inference/Convolution2D_9/Conv2D_grad/tuple/control_dependencyIdentityItrain/gradients/inference/Convolution2D_9/Conv2D_grad/Conv2DBackpropInputG^train/gradients/inference/Convolution2D_9/Conv2D_grad/tuple/group_deps*\
_classR
PNloc:@train/gradients/inference/Convolution2D_9/Conv2D_grad/Conv2DBackpropInput*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙

Ptrain/gradients/inference/Convolution2D_9/Conv2D_grad/tuple/control_dependency_1IdentityJtrain/gradients/inference/Convolution2D_9/Conv2D_grad/Conv2DBackpropFilterG^train/gradients/inference/Convolution2D_9/Conv2D_grad/tuple/group_deps*]
_classS
QOloc:@train/gradients/inference/Convolution2D_9/Conv2D_grad/Conv2DBackpropFilter*
T0*(
_output_shapes
:

7train/gradients/inference/ZeroPadding2D_9/Pad_grad/RankRank$inference/RectifiedLinearUnit_8/relu*
T0*
_output_shapes
: 
{
9train/gradients/inference/ZeroPadding2D_9/Pad_grad/pack/1Const*
dtype0*
value	B :*
_output_shapes
: 
í
7train/gradients/inference/ZeroPadding2D_9/Pad_grad/packPack7train/gradients/inference/ZeroPadding2D_9/Pad_grad/Rank9train/gradients/inference/ZeroPadding2D_9/Pad_grad/pack/1*
N*
T0*
_output_shapes
:*

axis 

>train/gradients/inference/ZeroPadding2D_9/Pad_grad/Slice/beginConst*
dtype0*
valueB"        *
_output_shapes
:
Ş
8train/gradients/inference/ZeroPadding2D_9/Pad_grad/SliceSlice&inference/ZeroPadding2D_9/Pad/paddings>train/gradients/inference/ZeroPadding2D_9/Pad_grad/Slice/begin7train/gradients/inference/ZeroPadding2D_9/Pad_grad/pack*
Index0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

@train/gradients/inference/ZeroPadding2D_9/Pad_grad/Reshape/shapeConst*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙*
_output_shapes
:
ď
:train/gradients/inference/ZeroPadding2D_9/Pad_grad/ReshapeReshape8train/gradients/inference/ZeroPadding2D_9/Pad_grad/Slice@train/gradients/inference/ZeroPadding2D_9/Pad_grad/Reshape/shape*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

8train/gradients/inference/ZeroPadding2D_9/Pad_grad/ShapeShape$inference/RectifiedLinearUnit_8/relu*
T0*
_output_shapes
:
Ń
:train/gradients/inference/ZeroPadding2D_9/Pad_grad/Slice_1SliceNtrain/gradients/inference/Convolution2D_9/Conv2D_grad/tuple/control_dependency:train/gradients/inference/ZeroPadding2D_9/Pad_grad/Reshape8train/gradients/inference/ZeroPadding2D_9/Pad_grad/Shape*
Index0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
ë
Btrain/gradients/inference/RectifiedLinearUnit_8/relu_grad/ReluGradReluGrad:train/gradients/inference/ZeroPadding2D_9/Pad_grad/Slice_1$inference/RectifiedLinearUnit_8/relu*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙

;train/gradients/inference/Convolution2D_8/Conv2D_grad/ShapeShapeinference/ZeroPadding2D_8/Pad*
T0*
_output_shapes
:
´
Itrain/gradients/inference/Convolution2D_8/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput;train/gradients/inference/Convolution2D_8/Conv2D_grad/Shape%inference/Convolution2D_8/kernel/readBtrain/gradients/inference/RectifiedLinearUnit_8/relu_grad/ReluGrad*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0

=train/gradients/inference/Convolution2D_8/Conv2D_grad/Shape_1Shape%inference/Convolution2D_8/kernel/read*
T0*
_output_shapes
:

Jtrain/gradients/inference/Convolution2D_8/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterinference/ZeroPadding2D_8/Pad=train/gradients/inference/Convolution2D_8/Conv2D_grad/Shape_1Btrain/gradients/inference/RectifiedLinearUnit_8/relu_grad/ReluGrad*(
_output_shapes
:*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
ç
Ftrain/gradients/inference/Convolution2D_8/Conv2D_grad/tuple/group_depsNoOpJ^train/gradients/inference/Convolution2D_8/Conv2D_grad/Conv2DBackpropInputK^train/gradients/inference/Convolution2D_8/Conv2D_grad/Conv2DBackpropFilter

Ntrain/gradients/inference/Convolution2D_8/Conv2D_grad/tuple/control_dependencyIdentityItrain/gradients/inference/Convolution2D_8/Conv2D_grad/Conv2DBackpropInputG^train/gradients/inference/Convolution2D_8/Conv2D_grad/tuple/group_deps*\
_classR
PNloc:@train/gradients/inference/Convolution2D_8/Conv2D_grad/Conv2DBackpropInput*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙

Ptrain/gradients/inference/Convolution2D_8/Conv2D_grad/tuple/control_dependency_1IdentityJtrain/gradients/inference/Convolution2D_8/Conv2D_grad/Conv2DBackpropFilterG^train/gradients/inference/Convolution2D_8/Conv2D_grad/tuple/group_deps*]
_classS
QOloc:@train/gradients/inference/Convolution2D_8/Conv2D_grad/Conv2DBackpropFilter*
T0*(
_output_shapes
:

7train/gradients/inference/ZeroPadding2D_8/Pad_grad/RankRank$inference/RectifiedLinearUnit_7/relu*
T0*
_output_shapes
: 
{
9train/gradients/inference/ZeroPadding2D_8/Pad_grad/pack/1Const*
dtype0*
value	B :*
_output_shapes
: 
í
7train/gradients/inference/ZeroPadding2D_8/Pad_grad/packPack7train/gradients/inference/ZeroPadding2D_8/Pad_grad/Rank9train/gradients/inference/ZeroPadding2D_8/Pad_grad/pack/1*
N*
T0*
_output_shapes
:*

axis 

>train/gradients/inference/ZeroPadding2D_8/Pad_grad/Slice/beginConst*
dtype0*
valueB"        *
_output_shapes
:
Ş
8train/gradients/inference/ZeroPadding2D_8/Pad_grad/SliceSlice&inference/ZeroPadding2D_8/Pad/paddings>train/gradients/inference/ZeroPadding2D_8/Pad_grad/Slice/begin7train/gradients/inference/ZeroPadding2D_8/Pad_grad/pack*
Index0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

@train/gradients/inference/ZeroPadding2D_8/Pad_grad/Reshape/shapeConst*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙*
_output_shapes
:
ď
:train/gradients/inference/ZeroPadding2D_8/Pad_grad/ReshapeReshape8train/gradients/inference/ZeroPadding2D_8/Pad_grad/Slice@train/gradients/inference/ZeroPadding2D_8/Pad_grad/Reshape/shape*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

8train/gradients/inference/ZeroPadding2D_8/Pad_grad/ShapeShape$inference/RectifiedLinearUnit_7/relu*
T0*
_output_shapes
:
Ń
:train/gradients/inference/ZeroPadding2D_8/Pad_grad/Slice_1SliceNtrain/gradients/inference/Convolution2D_8/Conv2D_grad/tuple/control_dependency:train/gradients/inference/ZeroPadding2D_8/Pad_grad/Reshape8train/gradients/inference/ZeroPadding2D_8/Pad_grad/Shape*
Index0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙


ë
Btrain/gradients/inference/RectifiedLinearUnit_7/relu_grad/ReluGradReluGrad:train/gradients/inference/ZeroPadding2D_8/Pad_grad/Slice_1$inference/RectifiedLinearUnit_7/relu*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙



;train/gradients/inference/Convolution2D_7/Conv2D_grad/ShapeShapeinference/ZeroPadding2D_7/Pad*
T0*
_output_shapes
:
´
Itrain/gradients/inference/Convolution2D_7/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput;train/gradients/inference/Convolution2D_7/Conv2D_grad/Shape%inference/Convolution2D_7/kernel/readBtrain/gradients/inference/RectifiedLinearUnit_7/relu_grad/ReluGrad*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0

=train/gradients/inference/Convolution2D_7/Conv2D_grad/Shape_1Shape%inference/Convolution2D_7/kernel/read*
T0*
_output_shapes
:

Jtrain/gradients/inference/Convolution2D_7/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterinference/ZeroPadding2D_7/Pad=train/gradients/inference/Convolution2D_7/Conv2D_grad/Shape_1Btrain/gradients/inference/RectifiedLinearUnit_7/relu_grad/ReluGrad*(
_output_shapes
:*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
ç
Ftrain/gradients/inference/Convolution2D_7/Conv2D_grad/tuple/group_depsNoOpJ^train/gradients/inference/Convolution2D_7/Conv2D_grad/Conv2DBackpropInputK^train/gradients/inference/Convolution2D_7/Conv2D_grad/Conv2DBackpropFilter

Ntrain/gradients/inference/Convolution2D_7/Conv2D_grad/tuple/control_dependencyIdentityItrain/gradients/inference/Convolution2D_7/Conv2D_grad/Conv2DBackpropInputG^train/gradients/inference/Convolution2D_7/Conv2D_grad/tuple/group_deps*\
_classR
PNloc:@train/gradients/inference/Convolution2D_7/Conv2D_grad/Conv2DBackpropInput*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙



Ptrain/gradients/inference/Convolution2D_7/Conv2D_grad/tuple/control_dependency_1IdentityJtrain/gradients/inference/Convolution2D_7/Conv2D_grad/Conv2DBackpropFilterG^train/gradients/inference/Convolution2D_7/Conv2D_grad/tuple/group_deps*]
_classS
QOloc:@train/gradients/inference/Convolution2D_7/Conv2D_grad/Conv2DBackpropFilter*
T0*(
_output_shapes
:

7train/gradients/inference/ZeroPadding2D_7/Pad_grad/RankRank inference/MaxPooling2D_2/MaxPool*
T0*
_output_shapes
: 
{
9train/gradients/inference/ZeroPadding2D_7/Pad_grad/pack/1Const*
dtype0*
value	B :*
_output_shapes
: 
í
7train/gradients/inference/ZeroPadding2D_7/Pad_grad/packPack7train/gradients/inference/ZeroPadding2D_7/Pad_grad/Rank9train/gradients/inference/ZeroPadding2D_7/Pad_grad/pack/1*
N*
T0*
_output_shapes
:*

axis 

>train/gradients/inference/ZeroPadding2D_7/Pad_grad/Slice/beginConst*
dtype0*
valueB"        *
_output_shapes
:
Ş
8train/gradients/inference/ZeroPadding2D_7/Pad_grad/SliceSlice&inference/ZeroPadding2D_7/Pad/paddings>train/gradients/inference/ZeroPadding2D_7/Pad_grad/Slice/begin7train/gradients/inference/ZeroPadding2D_7/Pad_grad/pack*
Index0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

@train/gradients/inference/ZeroPadding2D_7/Pad_grad/Reshape/shapeConst*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙*
_output_shapes
:
ď
:train/gradients/inference/ZeroPadding2D_7/Pad_grad/ReshapeReshape8train/gradients/inference/ZeroPadding2D_7/Pad_grad/Slice@train/gradients/inference/ZeroPadding2D_7/Pad_grad/Reshape/shape*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

8train/gradients/inference/ZeroPadding2D_7/Pad_grad/ShapeShape inference/MaxPooling2D_2/MaxPool*
T0*
_output_shapes
:
Ń
:train/gradients/inference/ZeroPadding2D_7/Pad_grad/Slice_1SliceNtrain/gradients/inference/Convolution2D_7/Conv2D_grad/tuple/control_dependency:train/gradients/inference/ZeroPadding2D_7/Pad_grad/Reshape8train/gradients/inference/ZeroPadding2D_7/Pad_grad/Shape*
Index0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
á
Atrain/gradients/inference/MaxPooling2D_2/MaxPool_grad/MaxPoolGradMaxPoolGrad$inference/RectifiedLinearUnit_6/relu inference/MaxPooling2D_2/MaxPool:train/gradients/inference/ZeroPadding2D_7/Pad_grad/Slice_1*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
data_formatNHWC*
paddingSAME*
strides
*
ksize
*
T0
ň
Btrain/gradients/inference/RectifiedLinearUnit_6/relu_grad/ReluGradReluGradAtrain/gradients/inference/MaxPooling2D_2/MaxPool_grad/MaxPoolGrad$inference/RectifiedLinearUnit_6/relu*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙

;train/gradients/inference/Convolution2D_6/Conv2D_grad/ShapeShapeinference/ZeroPadding2D_6/Pad*
T0*
_output_shapes
:
´
Itrain/gradients/inference/Convolution2D_6/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput;train/gradients/inference/Convolution2D_6/Conv2D_grad/Shape%inference/Convolution2D_6/kernel/readBtrain/gradients/inference/RectifiedLinearUnit_6/relu_grad/ReluGrad*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0

=train/gradients/inference/Convolution2D_6/Conv2D_grad/Shape_1Shape%inference/Convolution2D_6/kernel/read*
T0*
_output_shapes
:

Jtrain/gradients/inference/Convolution2D_6/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterinference/ZeroPadding2D_6/Pad=train/gradients/inference/Convolution2D_6/Conv2D_grad/Shape_1Btrain/gradients/inference/RectifiedLinearUnit_6/relu_grad/ReluGrad*(
_output_shapes
:*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
ç
Ftrain/gradients/inference/Convolution2D_6/Conv2D_grad/tuple/group_depsNoOpJ^train/gradients/inference/Convolution2D_6/Conv2D_grad/Conv2DBackpropInputK^train/gradients/inference/Convolution2D_6/Conv2D_grad/Conv2DBackpropFilter

Ntrain/gradients/inference/Convolution2D_6/Conv2D_grad/tuple/control_dependencyIdentityItrain/gradients/inference/Convolution2D_6/Conv2D_grad/Conv2DBackpropInputG^train/gradients/inference/Convolution2D_6/Conv2D_grad/tuple/group_deps*\
_classR
PNloc:@train/gradients/inference/Convolution2D_6/Conv2D_grad/Conv2DBackpropInput*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙

Ptrain/gradients/inference/Convolution2D_6/Conv2D_grad/tuple/control_dependency_1IdentityJtrain/gradients/inference/Convolution2D_6/Conv2D_grad/Conv2DBackpropFilterG^train/gradients/inference/Convolution2D_6/Conv2D_grad/tuple/group_deps*]
_classS
QOloc:@train/gradients/inference/Convolution2D_6/Conv2D_grad/Conv2DBackpropFilter*
T0*(
_output_shapes
:

7train/gradients/inference/ZeroPadding2D_6/Pad_grad/RankRank$inference/RectifiedLinearUnit_5/relu*
T0*
_output_shapes
: 
{
9train/gradients/inference/ZeroPadding2D_6/Pad_grad/pack/1Const*
dtype0*
value	B :*
_output_shapes
: 
í
7train/gradients/inference/ZeroPadding2D_6/Pad_grad/packPack7train/gradients/inference/ZeroPadding2D_6/Pad_grad/Rank9train/gradients/inference/ZeroPadding2D_6/Pad_grad/pack/1*
N*
T0*
_output_shapes
:*

axis 

>train/gradients/inference/ZeroPadding2D_6/Pad_grad/Slice/beginConst*
dtype0*
valueB"        *
_output_shapes
:
Ş
8train/gradients/inference/ZeroPadding2D_6/Pad_grad/SliceSlice&inference/ZeroPadding2D_6/Pad/paddings>train/gradients/inference/ZeroPadding2D_6/Pad_grad/Slice/begin7train/gradients/inference/ZeroPadding2D_6/Pad_grad/pack*
Index0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

@train/gradients/inference/ZeroPadding2D_6/Pad_grad/Reshape/shapeConst*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙*
_output_shapes
:
ď
:train/gradients/inference/ZeroPadding2D_6/Pad_grad/ReshapeReshape8train/gradients/inference/ZeroPadding2D_6/Pad_grad/Slice@train/gradients/inference/ZeroPadding2D_6/Pad_grad/Reshape/shape*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

8train/gradients/inference/ZeroPadding2D_6/Pad_grad/ShapeShape$inference/RectifiedLinearUnit_5/relu*
T0*
_output_shapes
:
Ń
:train/gradients/inference/ZeroPadding2D_6/Pad_grad/Slice_1SliceNtrain/gradients/inference/Convolution2D_6/Conv2D_grad/tuple/control_dependency:train/gradients/inference/ZeroPadding2D_6/Pad_grad/Reshape8train/gradients/inference/ZeroPadding2D_6/Pad_grad/Shape*
Index0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
ë
Btrain/gradients/inference/RectifiedLinearUnit_5/relu_grad/ReluGradReluGrad:train/gradients/inference/ZeroPadding2D_6/Pad_grad/Slice_1$inference/RectifiedLinearUnit_5/relu*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙

;train/gradients/inference/Convolution2D_5/Conv2D_grad/ShapeShapeinference/ZeroPadding2D_5/Pad*
T0*
_output_shapes
:
´
Itrain/gradients/inference/Convolution2D_5/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput;train/gradients/inference/Convolution2D_5/Conv2D_grad/Shape%inference/Convolution2D_5/kernel/readBtrain/gradients/inference/RectifiedLinearUnit_5/relu_grad/ReluGrad*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0

=train/gradients/inference/Convolution2D_5/Conv2D_grad/Shape_1Shape%inference/Convolution2D_5/kernel/read*
T0*
_output_shapes
:

Jtrain/gradients/inference/Convolution2D_5/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterinference/ZeroPadding2D_5/Pad=train/gradients/inference/Convolution2D_5/Conv2D_grad/Shape_1Btrain/gradients/inference/RectifiedLinearUnit_5/relu_grad/ReluGrad*(
_output_shapes
:*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
ç
Ftrain/gradients/inference/Convolution2D_5/Conv2D_grad/tuple/group_depsNoOpJ^train/gradients/inference/Convolution2D_5/Conv2D_grad/Conv2DBackpropInputK^train/gradients/inference/Convolution2D_5/Conv2D_grad/Conv2DBackpropFilter

Ntrain/gradients/inference/Convolution2D_5/Conv2D_grad/tuple/control_dependencyIdentityItrain/gradients/inference/Convolution2D_5/Conv2D_grad/Conv2DBackpropInputG^train/gradients/inference/Convolution2D_5/Conv2D_grad/tuple/group_deps*\
_classR
PNloc:@train/gradients/inference/Convolution2D_5/Conv2D_grad/Conv2DBackpropInput*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙

Ptrain/gradients/inference/Convolution2D_5/Conv2D_grad/tuple/control_dependency_1IdentityJtrain/gradients/inference/Convolution2D_5/Conv2D_grad/Conv2DBackpropFilterG^train/gradients/inference/Convolution2D_5/Conv2D_grad/tuple/group_deps*]
_classS
QOloc:@train/gradients/inference/Convolution2D_5/Conv2D_grad/Conv2DBackpropFilter*
T0*(
_output_shapes
:

7train/gradients/inference/ZeroPadding2D_5/Pad_grad/RankRank$inference/RectifiedLinearUnit_4/relu*
T0*
_output_shapes
: 
{
9train/gradients/inference/ZeroPadding2D_5/Pad_grad/pack/1Const*
dtype0*
value	B :*
_output_shapes
: 
í
7train/gradients/inference/ZeroPadding2D_5/Pad_grad/packPack7train/gradients/inference/ZeroPadding2D_5/Pad_grad/Rank9train/gradients/inference/ZeroPadding2D_5/Pad_grad/pack/1*
N*
T0*
_output_shapes
:*

axis 

>train/gradients/inference/ZeroPadding2D_5/Pad_grad/Slice/beginConst*
dtype0*
valueB"        *
_output_shapes
:
Ş
8train/gradients/inference/ZeroPadding2D_5/Pad_grad/SliceSlice&inference/ZeroPadding2D_5/Pad/paddings>train/gradients/inference/ZeroPadding2D_5/Pad_grad/Slice/begin7train/gradients/inference/ZeroPadding2D_5/Pad_grad/pack*
Index0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

@train/gradients/inference/ZeroPadding2D_5/Pad_grad/Reshape/shapeConst*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙*
_output_shapes
:
ď
:train/gradients/inference/ZeroPadding2D_5/Pad_grad/ReshapeReshape8train/gradients/inference/ZeroPadding2D_5/Pad_grad/Slice@train/gradients/inference/ZeroPadding2D_5/Pad_grad/Reshape/shape*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

8train/gradients/inference/ZeroPadding2D_5/Pad_grad/ShapeShape$inference/RectifiedLinearUnit_4/relu*
T0*
_output_shapes
:
Ń
:train/gradients/inference/ZeroPadding2D_5/Pad_grad/Slice_1SliceNtrain/gradients/inference/Convolution2D_5/Conv2D_grad/tuple/control_dependency:train/gradients/inference/ZeroPadding2D_5/Pad_grad/Reshape8train/gradients/inference/ZeroPadding2D_5/Pad_grad/Shape*
Index0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
ë
Btrain/gradients/inference/RectifiedLinearUnit_4/relu_grad/ReluGradReluGrad:train/gradients/inference/ZeroPadding2D_5/Pad_grad/Slice_1$inference/RectifiedLinearUnit_4/relu*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙

;train/gradients/inference/Convolution2D_4/Conv2D_grad/ShapeShapeinference/ZeroPadding2D_4/Pad*
T0*
_output_shapes
:
´
Itrain/gradients/inference/Convolution2D_4/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput;train/gradients/inference/Convolution2D_4/Conv2D_grad/Shape%inference/Convolution2D_4/kernel/readBtrain/gradients/inference/RectifiedLinearUnit_4/relu_grad/ReluGrad*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0

=train/gradients/inference/Convolution2D_4/Conv2D_grad/Shape_1Shape%inference/Convolution2D_4/kernel/read*
T0*
_output_shapes
:

Jtrain/gradients/inference/Convolution2D_4/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterinference/ZeroPadding2D_4/Pad=train/gradients/inference/Convolution2D_4/Conv2D_grad/Shape_1Btrain/gradients/inference/RectifiedLinearUnit_4/relu_grad/ReluGrad*(
_output_shapes
:*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
ç
Ftrain/gradients/inference/Convolution2D_4/Conv2D_grad/tuple/group_depsNoOpJ^train/gradients/inference/Convolution2D_4/Conv2D_grad/Conv2DBackpropInputK^train/gradients/inference/Convolution2D_4/Conv2D_grad/Conv2DBackpropFilter

Ntrain/gradients/inference/Convolution2D_4/Conv2D_grad/tuple/control_dependencyIdentityItrain/gradients/inference/Convolution2D_4/Conv2D_grad/Conv2DBackpropInputG^train/gradients/inference/Convolution2D_4/Conv2D_grad/tuple/group_deps*\
_classR
PNloc:@train/gradients/inference/Convolution2D_4/Conv2D_grad/Conv2DBackpropInput*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙

Ptrain/gradients/inference/Convolution2D_4/Conv2D_grad/tuple/control_dependency_1IdentityJtrain/gradients/inference/Convolution2D_4/Conv2D_grad/Conv2DBackpropFilterG^train/gradients/inference/Convolution2D_4/Conv2D_grad/tuple/group_deps*]
_classS
QOloc:@train/gradients/inference/Convolution2D_4/Conv2D_grad/Conv2DBackpropFilter*
T0*(
_output_shapes
:

7train/gradients/inference/ZeroPadding2D_4/Pad_grad/RankRank inference/MaxPooling2D_1/MaxPool*
T0*
_output_shapes
: 
{
9train/gradients/inference/ZeroPadding2D_4/Pad_grad/pack/1Const*
dtype0*
value	B :*
_output_shapes
: 
í
7train/gradients/inference/ZeroPadding2D_4/Pad_grad/packPack7train/gradients/inference/ZeroPadding2D_4/Pad_grad/Rank9train/gradients/inference/ZeroPadding2D_4/Pad_grad/pack/1*
N*
T0*
_output_shapes
:*

axis 

>train/gradients/inference/ZeroPadding2D_4/Pad_grad/Slice/beginConst*
dtype0*
valueB"        *
_output_shapes
:
Ş
8train/gradients/inference/ZeroPadding2D_4/Pad_grad/SliceSlice&inference/ZeroPadding2D_4/Pad/paddings>train/gradients/inference/ZeroPadding2D_4/Pad_grad/Slice/begin7train/gradients/inference/ZeroPadding2D_4/Pad_grad/pack*
Index0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

@train/gradients/inference/ZeroPadding2D_4/Pad_grad/Reshape/shapeConst*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙*
_output_shapes
:
ď
:train/gradients/inference/ZeroPadding2D_4/Pad_grad/ReshapeReshape8train/gradients/inference/ZeroPadding2D_4/Pad_grad/Slice@train/gradients/inference/ZeroPadding2D_4/Pad_grad/Reshape/shape*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

8train/gradients/inference/ZeroPadding2D_4/Pad_grad/ShapeShape inference/MaxPooling2D_1/MaxPool*
T0*
_output_shapes
:
Ń
:train/gradients/inference/ZeroPadding2D_4/Pad_grad/Slice_1SliceNtrain/gradients/inference/Convolution2D_4/Conv2D_grad/tuple/control_dependency:train/gradients/inference/ZeroPadding2D_4/Pad_grad/Reshape8train/gradients/inference/ZeroPadding2D_4/Pad_grad/Shape*
Index0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙


á
Atrain/gradients/inference/MaxPooling2D_1/MaxPool_grad/MaxPoolGradMaxPoolGrad$inference/RectifiedLinearUnit_3/relu inference/MaxPooling2D_1/MaxPool:train/gradients/inference/ZeroPadding2D_4/Pad_grad/Slice_1*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
data_formatNHWC*
paddingSAME*
strides
*
ksize
*
T0
ň
Btrain/gradients/inference/RectifiedLinearUnit_3/relu_grad/ReluGradReluGradAtrain/gradients/inference/MaxPooling2D_1/MaxPool_grad/MaxPoolGrad$inference/RectifiedLinearUnit_3/relu*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙

;train/gradients/inference/Convolution2D_3/Conv2D_grad/ShapeShapeinference/ZeroPadding2D_3/Pad*
T0*
_output_shapes
:
´
Itrain/gradients/inference/Convolution2D_3/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput;train/gradients/inference/Convolution2D_3/Conv2D_grad/Shape%inference/Convolution2D_3/kernel/readBtrain/gradients/inference/RectifiedLinearUnit_3/relu_grad/ReluGrad*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0

=train/gradients/inference/Convolution2D_3/Conv2D_grad/Shape_1Shape%inference/Convolution2D_3/kernel/read*
T0*
_output_shapes
:

Jtrain/gradients/inference/Convolution2D_3/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterinference/ZeroPadding2D_3/Pad=train/gradients/inference/Convolution2D_3/Conv2D_grad/Shape_1Btrain/gradients/inference/RectifiedLinearUnit_3/relu_grad/ReluGrad*(
_output_shapes
:*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
ç
Ftrain/gradients/inference/Convolution2D_3/Conv2D_grad/tuple/group_depsNoOpJ^train/gradients/inference/Convolution2D_3/Conv2D_grad/Conv2DBackpropInputK^train/gradients/inference/Convolution2D_3/Conv2D_grad/Conv2DBackpropFilter

Ntrain/gradients/inference/Convolution2D_3/Conv2D_grad/tuple/control_dependencyIdentityItrain/gradients/inference/Convolution2D_3/Conv2D_grad/Conv2DBackpropInputG^train/gradients/inference/Convolution2D_3/Conv2D_grad/tuple/group_deps*\
_classR
PNloc:@train/gradients/inference/Convolution2D_3/Conv2D_grad/Conv2DBackpropInput*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙

Ptrain/gradients/inference/Convolution2D_3/Conv2D_grad/tuple/control_dependency_1IdentityJtrain/gradients/inference/Convolution2D_3/Conv2D_grad/Conv2DBackpropFilterG^train/gradients/inference/Convolution2D_3/Conv2D_grad/tuple/group_deps*]
_classS
QOloc:@train/gradients/inference/Convolution2D_3/Conv2D_grad/Conv2DBackpropFilter*
T0*(
_output_shapes
:

7train/gradients/inference/ZeroPadding2D_3/Pad_grad/RankRank$inference/RectifiedLinearUnit_2/relu*
T0*
_output_shapes
: 
{
9train/gradients/inference/ZeroPadding2D_3/Pad_grad/pack/1Const*
dtype0*
value	B :*
_output_shapes
: 
í
7train/gradients/inference/ZeroPadding2D_3/Pad_grad/packPack7train/gradients/inference/ZeroPadding2D_3/Pad_grad/Rank9train/gradients/inference/ZeroPadding2D_3/Pad_grad/pack/1*
N*
T0*
_output_shapes
:*

axis 

>train/gradients/inference/ZeroPadding2D_3/Pad_grad/Slice/beginConst*
dtype0*
valueB"        *
_output_shapes
:
Ş
8train/gradients/inference/ZeroPadding2D_3/Pad_grad/SliceSlice&inference/ZeroPadding2D_3/Pad/paddings>train/gradients/inference/ZeroPadding2D_3/Pad_grad/Slice/begin7train/gradients/inference/ZeroPadding2D_3/Pad_grad/pack*
Index0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

@train/gradients/inference/ZeroPadding2D_3/Pad_grad/Reshape/shapeConst*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙*
_output_shapes
:
ď
:train/gradients/inference/ZeroPadding2D_3/Pad_grad/ReshapeReshape8train/gradients/inference/ZeroPadding2D_3/Pad_grad/Slice@train/gradients/inference/ZeroPadding2D_3/Pad_grad/Reshape/shape*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

8train/gradients/inference/ZeroPadding2D_3/Pad_grad/ShapeShape$inference/RectifiedLinearUnit_2/relu*
T0*
_output_shapes
:
Ń
:train/gradients/inference/ZeroPadding2D_3/Pad_grad/Slice_1SliceNtrain/gradients/inference/Convolution2D_3/Conv2D_grad/tuple/control_dependency:train/gradients/inference/ZeroPadding2D_3/Pad_grad/Reshape8train/gradients/inference/ZeroPadding2D_3/Pad_grad/Shape*
Index0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
ë
Btrain/gradients/inference/RectifiedLinearUnit_2/relu_grad/ReluGradReluGrad:train/gradients/inference/ZeroPadding2D_3/Pad_grad/Slice_1$inference/RectifiedLinearUnit_2/relu*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙

;train/gradients/inference/Convolution2D_2/Conv2D_grad/ShapeShapeinference/ZeroPadding2D_2/Pad*
T0*
_output_shapes
:
´
Itrain/gradients/inference/Convolution2D_2/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput;train/gradients/inference/Convolution2D_2/Conv2D_grad/Shape%inference/Convolution2D_2/kernel/readBtrain/gradients/inference/RectifiedLinearUnit_2/relu_grad/ReluGrad*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0

=train/gradients/inference/Convolution2D_2/Conv2D_grad/Shape_1Shape%inference/Convolution2D_2/kernel/read*
T0*
_output_shapes
:

Jtrain/gradients/inference/Convolution2D_2/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterinference/ZeroPadding2D_2/Pad=train/gradients/inference/Convolution2D_2/Conv2D_grad/Shape_1Btrain/gradients/inference/RectifiedLinearUnit_2/relu_grad/ReluGrad*'
_output_shapes
:@*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
ç
Ftrain/gradients/inference/Convolution2D_2/Conv2D_grad/tuple/group_depsNoOpJ^train/gradients/inference/Convolution2D_2/Conv2D_grad/Conv2DBackpropInputK^train/gradients/inference/Convolution2D_2/Conv2D_grad/Conv2DBackpropFilter

Ntrain/gradients/inference/Convolution2D_2/Conv2D_grad/tuple/control_dependencyIdentityItrain/gradients/inference/Convolution2D_2/Conv2D_grad/Conv2DBackpropInputG^train/gradients/inference/Convolution2D_2/Conv2D_grad/tuple/group_deps*\
_classR
PNloc:@train/gradients/inference/Convolution2D_2/Conv2D_grad/Conv2DBackpropInput*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@

Ptrain/gradients/inference/Convolution2D_2/Conv2D_grad/tuple/control_dependency_1IdentityJtrain/gradients/inference/Convolution2D_2/Conv2D_grad/Conv2DBackpropFilterG^train/gradients/inference/Convolution2D_2/Conv2D_grad/tuple/group_deps*]
_classS
QOloc:@train/gradients/inference/Convolution2D_2/Conv2D_grad/Conv2DBackpropFilter*
T0*'
_output_shapes
:@

7train/gradients/inference/ZeroPadding2D_2/Pad_grad/RankRank inference/MaxPooling2D_0/MaxPool*
T0*
_output_shapes
: 
{
9train/gradients/inference/ZeroPadding2D_2/Pad_grad/pack/1Const*
dtype0*
value	B :*
_output_shapes
: 
í
7train/gradients/inference/ZeroPadding2D_2/Pad_grad/packPack7train/gradients/inference/ZeroPadding2D_2/Pad_grad/Rank9train/gradients/inference/ZeroPadding2D_2/Pad_grad/pack/1*
N*
T0*
_output_shapes
:*

axis 

>train/gradients/inference/ZeroPadding2D_2/Pad_grad/Slice/beginConst*
dtype0*
valueB"        *
_output_shapes
:
Ş
8train/gradients/inference/ZeroPadding2D_2/Pad_grad/SliceSlice&inference/ZeroPadding2D_2/Pad/paddings>train/gradients/inference/ZeroPadding2D_2/Pad_grad/Slice/begin7train/gradients/inference/ZeroPadding2D_2/Pad_grad/pack*
Index0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

@train/gradients/inference/ZeroPadding2D_2/Pad_grad/Reshape/shapeConst*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙*
_output_shapes
:
ď
:train/gradients/inference/ZeroPadding2D_2/Pad_grad/ReshapeReshape8train/gradients/inference/ZeroPadding2D_2/Pad_grad/Slice@train/gradients/inference/ZeroPadding2D_2/Pad_grad/Reshape/shape*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

8train/gradients/inference/ZeroPadding2D_2/Pad_grad/ShapeShape inference/MaxPooling2D_0/MaxPool*
T0*
_output_shapes
:
Đ
:train/gradients/inference/ZeroPadding2D_2/Pad_grad/Slice_1SliceNtrain/gradients/inference/Convolution2D_2/Conv2D_grad/tuple/control_dependency:train/gradients/inference/ZeroPadding2D_2/Pad_grad/Reshape8train/gradients/inference/ZeroPadding2D_2/Pad_grad/Shape*
Index0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
ŕ
Atrain/gradients/inference/MaxPooling2D_0/MaxPool_grad/MaxPoolGradMaxPoolGrad$inference/RectifiedLinearUnit_1/relu inference/MaxPooling2D_0/MaxPool:train/gradients/inference/ZeroPadding2D_2/Pad_grad/Slice_1*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  @*
data_formatNHWC*
paddingSAME*
strides
*
ksize
*
T0
ń
Btrain/gradients/inference/RectifiedLinearUnit_1/relu_grad/ReluGradReluGradAtrain/gradients/inference/MaxPooling2D_0/MaxPool_grad/MaxPoolGrad$inference/RectifiedLinearUnit_1/relu*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  @

;train/gradients/inference/Convolution2D_1/Conv2D_grad/ShapeShapeinference/ZeroPadding2D_1/Pad*
T0*
_output_shapes
:
´
Itrain/gradients/inference/Convolution2D_1/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput;train/gradients/inference/Convolution2D_1/Conv2D_grad/Shape%inference/Convolution2D_1/kernel/readBtrain/gradients/inference/RectifiedLinearUnit_1/relu_grad/ReluGrad*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0

=train/gradients/inference/Convolution2D_1/Conv2D_grad/Shape_1Shape%inference/Convolution2D_1/kernel/read*
T0*
_output_shapes
:

Jtrain/gradients/inference/Convolution2D_1/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterinference/ZeroPadding2D_1/Pad=train/gradients/inference/Convolution2D_1/Conv2D_grad/Shape_1Btrain/gradients/inference/RectifiedLinearUnit_1/relu_grad/ReluGrad*&
_output_shapes
:@@*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
ç
Ftrain/gradients/inference/Convolution2D_1/Conv2D_grad/tuple/group_depsNoOpJ^train/gradients/inference/Convolution2D_1/Conv2D_grad/Conv2DBackpropInputK^train/gradients/inference/Convolution2D_1/Conv2D_grad/Conv2DBackpropFilter

Ntrain/gradients/inference/Convolution2D_1/Conv2D_grad/tuple/control_dependencyIdentityItrain/gradients/inference/Convolution2D_1/Conv2D_grad/Conv2DBackpropInputG^train/gradients/inference/Convolution2D_1/Conv2D_grad/tuple/group_deps*\
_classR
PNloc:@train/gradients/inference/Convolution2D_1/Conv2D_grad/Conv2DBackpropInput*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  @

Ptrain/gradients/inference/Convolution2D_1/Conv2D_grad/tuple/control_dependency_1IdentityJtrain/gradients/inference/Convolution2D_1/Conv2D_grad/Conv2DBackpropFilterG^train/gradients/inference/Convolution2D_1/Conv2D_grad/tuple/group_deps*]
_classS
QOloc:@train/gradients/inference/Convolution2D_1/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:@@

7train/gradients/inference/ZeroPadding2D_1/Pad_grad/RankRank$inference/RectifiedLinearUnit_0/relu*
T0*
_output_shapes
: 
{
9train/gradients/inference/ZeroPadding2D_1/Pad_grad/pack/1Const*
dtype0*
value	B :*
_output_shapes
: 
í
7train/gradients/inference/ZeroPadding2D_1/Pad_grad/packPack7train/gradients/inference/ZeroPadding2D_1/Pad_grad/Rank9train/gradients/inference/ZeroPadding2D_1/Pad_grad/pack/1*
N*
T0*
_output_shapes
:*

axis 

>train/gradients/inference/ZeroPadding2D_1/Pad_grad/Slice/beginConst*
dtype0*
valueB"        *
_output_shapes
:
Ş
8train/gradients/inference/ZeroPadding2D_1/Pad_grad/SliceSlice&inference/ZeroPadding2D_1/Pad/paddings>train/gradients/inference/ZeroPadding2D_1/Pad_grad/Slice/begin7train/gradients/inference/ZeroPadding2D_1/Pad_grad/pack*
Index0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

@train/gradients/inference/ZeroPadding2D_1/Pad_grad/Reshape/shapeConst*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙*
_output_shapes
:
ď
:train/gradients/inference/ZeroPadding2D_1/Pad_grad/ReshapeReshape8train/gradients/inference/ZeroPadding2D_1/Pad_grad/Slice@train/gradients/inference/ZeroPadding2D_1/Pad_grad/Reshape/shape*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

8train/gradients/inference/ZeroPadding2D_1/Pad_grad/ShapeShape$inference/RectifiedLinearUnit_0/relu*
T0*
_output_shapes
:
Đ
:train/gradients/inference/ZeroPadding2D_1/Pad_grad/Slice_1SliceNtrain/gradients/inference/Convolution2D_1/Conv2D_grad/tuple/control_dependency:train/gradients/inference/ZeroPadding2D_1/Pad_grad/Reshape8train/gradients/inference/ZeroPadding2D_1/Pad_grad/Shape*
Index0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
ę
Btrain/gradients/inference/RectifiedLinearUnit_0/relu_grad/ReluGradReluGrad:train/gradients/inference/ZeroPadding2D_1/Pad_grad/Slice_1$inference/RectifiedLinearUnit_0/relu*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@

;train/gradients/inference/Convolution2D_0/Conv2D_grad/ShapeShapeinference/ZeroPadding2D_0/Pad*
T0*
_output_shapes
:
´
Itrain/gradients/inference/Convolution2D_0/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput;train/gradients/inference/Convolution2D_0/Conv2D_grad/Shape%inference/Convolution2D_0/kernel/readBtrain/gradients/inference/RectifiedLinearUnit_0/relu_grad/ReluGrad*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0

=train/gradients/inference/Convolution2D_0/Conv2D_grad/Shape_1Shape%inference/Convolution2D_0/kernel/read*
T0*
_output_shapes
:

Jtrain/gradients/inference/Convolution2D_0/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterinference/ZeroPadding2D_0/Pad=train/gradients/inference/Convolution2D_0/Conv2D_grad/Shape_1Btrain/gradients/inference/RectifiedLinearUnit_0/relu_grad/ReluGrad*&
_output_shapes
:@*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
ç
Ftrain/gradients/inference/Convolution2D_0/Conv2D_grad/tuple/group_depsNoOpJ^train/gradients/inference/Convolution2D_0/Conv2D_grad/Conv2DBackpropInputK^train/gradients/inference/Convolution2D_0/Conv2D_grad/Conv2DBackpropFilter

Ntrain/gradients/inference/Convolution2D_0/Conv2D_grad/tuple/control_dependencyIdentityItrain/gradients/inference/Convolution2D_0/Conv2D_grad/Conv2DBackpropInputG^train/gradients/inference/Convolution2D_0/Conv2D_grad/tuple/group_deps*\
_classR
PNloc:@train/gradients/inference/Convolution2D_0/Conv2D_grad/Conv2DBackpropInput*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙

Ptrain/gradients/inference/Convolution2D_0/Conv2D_grad/tuple/control_dependency_1IdentityJtrain/gradients/inference/Convolution2D_0/Conv2D_grad/Conv2DBackpropFilterG^train/gradients/inference/Convolution2D_0/Conv2D_grad/tuple/group_deps*]
_classS
QOloc:@train/gradients/inference/Convolution2D_0/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:@
ě
Rtrain/GradientDescent/update_inference/Convolution2D_0/kernel/ApplyGradientDescentApplyGradientDescent inference/Convolution2D_0/kerneltrain/learning_ratePtrain/gradients/inference/Convolution2D_0/Conv2D_grad/tuple/control_dependency_1*3
_class)
'%loc:@inference/Convolution2D_0/kernel*
use_locking( *
T0*&
_output_shapes
:@
ě
Rtrain/GradientDescent/update_inference/Convolution2D_1/kernel/ApplyGradientDescentApplyGradientDescent inference/Convolution2D_1/kerneltrain/learning_ratePtrain/gradients/inference/Convolution2D_1/Conv2D_grad/tuple/control_dependency_1*3
_class)
'%loc:@inference/Convolution2D_1/kernel*
use_locking( *
T0*&
_output_shapes
:@@
í
Rtrain/GradientDescent/update_inference/Convolution2D_2/kernel/ApplyGradientDescentApplyGradientDescent inference/Convolution2D_2/kerneltrain/learning_ratePtrain/gradients/inference/Convolution2D_2/Conv2D_grad/tuple/control_dependency_1*3
_class)
'%loc:@inference/Convolution2D_2/kernel*
use_locking( *
T0*'
_output_shapes
:@
î
Rtrain/GradientDescent/update_inference/Convolution2D_3/kernel/ApplyGradientDescentApplyGradientDescent inference/Convolution2D_3/kerneltrain/learning_ratePtrain/gradients/inference/Convolution2D_3/Conv2D_grad/tuple/control_dependency_1*3
_class)
'%loc:@inference/Convolution2D_3/kernel*
use_locking( *
T0*(
_output_shapes
:
î
Rtrain/GradientDescent/update_inference/Convolution2D_4/kernel/ApplyGradientDescentApplyGradientDescent inference/Convolution2D_4/kerneltrain/learning_ratePtrain/gradients/inference/Convolution2D_4/Conv2D_grad/tuple/control_dependency_1*3
_class)
'%loc:@inference/Convolution2D_4/kernel*
use_locking( *
T0*(
_output_shapes
:
î
Rtrain/GradientDescent/update_inference/Convolution2D_5/kernel/ApplyGradientDescentApplyGradientDescent inference/Convolution2D_5/kerneltrain/learning_ratePtrain/gradients/inference/Convolution2D_5/Conv2D_grad/tuple/control_dependency_1*3
_class)
'%loc:@inference/Convolution2D_5/kernel*
use_locking( *
T0*(
_output_shapes
:
î
Rtrain/GradientDescent/update_inference/Convolution2D_6/kernel/ApplyGradientDescentApplyGradientDescent inference/Convolution2D_6/kerneltrain/learning_ratePtrain/gradients/inference/Convolution2D_6/Conv2D_grad/tuple/control_dependency_1*3
_class)
'%loc:@inference/Convolution2D_6/kernel*
use_locking( *
T0*(
_output_shapes
:
î
Rtrain/GradientDescent/update_inference/Convolution2D_7/kernel/ApplyGradientDescentApplyGradientDescent inference/Convolution2D_7/kerneltrain/learning_ratePtrain/gradients/inference/Convolution2D_7/Conv2D_grad/tuple/control_dependency_1*3
_class)
'%loc:@inference/Convolution2D_7/kernel*
use_locking( *
T0*(
_output_shapes
:
î
Rtrain/GradientDescent/update_inference/Convolution2D_8/kernel/ApplyGradientDescentApplyGradientDescent inference/Convolution2D_8/kerneltrain/learning_ratePtrain/gradients/inference/Convolution2D_8/Conv2D_grad/tuple/control_dependency_1*3
_class)
'%loc:@inference/Convolution2D_8/kernel*
use_locking( *
T0*(
_output_shapes
:
î
Rtrain/GradientDescent/update_inference/Convolution2D_9/kernel/ApplyGradientDescentApplyGradientDescent inference/Convolution2D_9/kerneltrain/learning_ratePtrain/gradients/inference/Convolution2D_9/Conv2D_grad/tuple/control_dependency_1*3
_class)
'%loc:@inference/Convolution2D_9/kernel*
use_locking( *
T0*(
_output_shapes
:
ň
Strain/GradientDescent/update_inference/Convolution2D_10/kernel/ApplyGradientDescentApplyGradientDescent!inference/Convolution2D_10/kerneltrain/learning_rateQtrain/gradients/inference/Convolution2D_10/Conv2D_grad/tuple/control_dependency_1*4
_class*
(&loc:@inference/Convolution2D_10/kernel*
use_locking( *
T0*(
_output_shapes
:
ň
Strain/GradientDescent/update_inference/Convolution2D_11/kernel/ApplyGradientDescentApplyGradientDescent!inference/Convolution2D_11/kerneltrain/learning_rateQtrain/gradients/inference/Convolution2D_11/Conv2D_grad/tuple/control_dependency_1*4
_class*
(&loc:@inference/Convolution2D_11/kernel*
use_locking( *
T0*(
_output_shapes
:
ň
Strain/GradientDescent/update_inference/Convolution2D_12/kernel/ApplyGradientDescentApplyGradientDescent!inference/Convolution2D_12/kerneltrain/learning_rateQtrain/gradients/inference/Convolution2D_12/Conv2D_grad/tuple/control_dependency_1*4
_class*
(&loc:@inference/Convolution2D_12/kernel*
use_locking( *
T0*(
_output_shapes
:

Ttrain/GradientDescent/update_inference/FullyConnected_0/weights/ApplyGradientDescentApplyGradientDescent"inference/FullyConnected_0/weightstrain/learning_rateetrain/gradients/inference/FullyConnected_0/Wx_plus_b/xw_plus_b/MatMul_grad/tuple/control_dependency_1*5
_class+
)'loc:@inference/FullyConnected_0/weights*
use_locking( *
T0*!
_output_shapes
:Ä 
ň
Strain/GradientDescent/update_inference/FullyConnected_0/biases/ApplyGradientDescentApplyGradientDescent!inference/FullyConnected_0/biasestrain/learning_rate^train/gradients/inference/FullyConnected_0/Wx_plus_b/xw_plus_b_grad/tuple/control_dependency_1*4
_class*
(&loc:@inference/FullyConnected_0/biases*
use_locking( *
T0*
_output_shapes	
: 

Ttrain/GradientDescent/update_inference/FullyConnected_1/weights/ApplyGradientDescentApplyGradientDescent"inference/FullyConnected_1/weightstrain/learning_rateetrain/gradients/inference/FullyConnected_1/Wx_plus_b/xw_plus_b/MatMul_grad/tuple/control_dependency_1*5
_class+
)'loc:@inference/FullyConnected_1/weights*
use_locking( *
T0* 
_output_shapes
:
  
ň
Strain/GradientDescent/update_inference/FullyConnected_1/biases/ApplyGradientDescentApplyGradientDescent!inference/FullyConnected_1/biasestrain/learning_rate^train/gradients/inference/FullyConnected_1/Wx_plus_b/xw_plus_b_grad/tuple/control_dependency_1*4
_class*
(&loc:@inference/FullyConnected_1/biases*
use_locking( *
T0*
_output_shapes	
: 
ů
rtrain/GradientDescent/update_inference/CategoricalPredictionOutput_0/FullyConnected_0/weights/ApplyGradientDescentApplyGradientDescent@inference/CategoricalPredictionOutput_0/FullyConnected_0/weightstrain/learning_ratetrain/gradients/inference/CategoricalPredictionOutput_0/FullyConnected_0/Wx_plus_b/xw_plus_b/MatMul_grad/tuple/control_dependency_1*S
_classI
GEloc:@inference/CategoricalPredictionOutput_0/FullyConnected_0/weights*
use_locking( *
T0*
_output_shapes
:	 

é
qtrain/GradientDescent/update_inference/CategoricalPredictionOutput_0/FullyConnected_0/biases/ApplyGradientDescentApplyGradientDescent?inference/CategoricalPredictionOutput_0/FullyConnected_0/biasestrain/learning_rate|train/gradients/inference/CategoricalPredictionOutput_0/FullyConnected_0/Wx_plus_b/xw_plus_b_grad/tuple/control_dependency_1*R
_classH
FDloc:@inference/CategoricalPredictionOutput_0/FullyConnected_0/biases*
use_locking( *
T0*
_output_shapes
:

ť
train/GradientDescent/updateNoOpS^train/GradientDescent/update_inference/Convolution2D_0/kernel/ApplyGradientDescentS^train/GradientDescent/update_inference/Convolution2D_1/kernel/ApplyGradientDescentS^train/GradientDescent/update_inference/Convolution2D_2/kernel/ApplyGradientDescentS^train/GradientDescent/update_inference/Convolution2D_3/kernel/ApplyGradientDescentS^train/GradientDescent/update_inference/Convolution2D_4/kernel/ApplyGradientDescentS^train/GradientDescent/update_inference/Convolution2D_5/kernel/ApplyGradientDescentS^train/GradientDescent/update_inference/Convolution2D_6/kernel/ApplyGradientDescentS^train/GradientDescent/update_inference/Convolution2D_7/kernel/ApplyGradientDescentS^train/GradientDescent/update_inference/Convolution2D_8/kernel/ApplyGradientDescentS^train/GradientDescent/update_inference/Convolution2D_9/kernel/ApplyGradientDescentT^train/GradientDescent/update_inference/Convolution2D_10/kernel/ApplyGradientDescentT^train/GradientDescent/update_inference/Convolution2D_11/kernel/ApplyGradientDescentT^train/GradientDescent/update_inference/Convolution2D_12/kernel/ApplyGradientDescentU^train/GradientDescent/update_inference/FullyConnected_0/weights/ApplyGradientDescentT^train/GradientDescent/update_inference/FullyConnected_0/biases/ApplyGradientDescentU^train/GradientDescent/update_inference/FullyConnected_1/weights/ApplyGradientDescentT^train/GradientDescent/update_inference/FullyConnected_1/biases/ApplyGradientDescents^train/GradientDescent/update_inference/CategoricalPredictionOutput_0/FullyConnected_0/weights/ApplyGradientDescentr^train/GradientDescent/update_inference/CategoricalPredictionOutput_0/FullyConnected_0/biases/ApplyGradientDescent

train/GradientDescent/valueConst^train/GradientDescent/update*
dtype0*!
_class
loc:@train/Variable*
value	B :*
_output_shapes
: 
Ś
train/GradientDescent	AssignAddtrain/Variabletrain/GradientDescent/value*!
_class
loc:@train/Variable*
use_locking( *
T0*
_output_shapes
: 
[
checkpoint/save/ConstConst*
dtype0*
valueB Bmodel*
_output_shapes
: 
Ö
!checkpoint/save/save/tensor_namesConst*
dtype0*
valueöBóBglobal_stepB?inference/CategoricalPredictionOutput_0/FullyConnected_0/biasesB@inference/CategoricalPredictionOutput_0/FullyConnected_0/weightsB inference/Convolution2D_0/kernelB inference/Convolution2D_1/kernelB!inference/Convolution2D_10/kernelB!inference/Convolution2D_11/kernelB!inference/Convolution2D_12/kernelB inference/Convolution2D_2/kernelB inference/Convolution2D_3/kernelB inference/Convolution2D_4/kernelB inference/Convolution2D_5/kernelB inference/Convolution2D_6/kernelB inference/Convolution2D_7/kernelB inference/Convolution2D_8/kernelB inference/Convolution2D_9/kernelB!inference/FullyConnected_0/biasesB"inference/FullyConnected_0/weightsB!inference/FullyConnected_1/biasesB"inference/FullyConnected_1/weightsBtrain/Variable*
_output_shapes
:

&checkpoint/save/save/shapes_and_slicesConst*
dtype0*=
value4B2B B B B B B B B B B B B B B B B B B B B B *
_output_shapes
:

checkpoint/save/save
SaveSlicescheckpoint/save/Const!checkpoint/save/save/tensor_names&checkpoint/save/save/shapes_and_slicesglobal_step?inference/CategoricalPredictionOutput_0/FullyConnected_0/biases@inference/CategoricalPredictionOutput_0/FullyConnected_0/weights inference/Convolution2D_0/kernel inference/Convolution2D_1/kernel!inference/Convolution2D_10/kernel!inference/Convolution2D_11/kernel!inference/Convolution2D_12/kernel inference/Convolution2D_2/kernel inference/Convolution2D_3/kernel inference/Convolution2D_4/kernel inference/Convolution2D_5/kernel inference/Convolution2D_6/kernel inference/Convolution2D_7/kernel inference/Convolution2D_8/kernel inference/Convolution2D_9/kernel!inference/FullyConnected_0/biases"inference/FullyConnected_0/weights!inference/FullyConnected_1/biases"inference/FullyConnected_1/weightstrain/Variable*
T
2
§
"checkpoint/save/control_dependencyIdentitycheckpoint/save/Const^checkpoint/save/save*(
_class
loc:@checkpoint/save/Const*
T0*
_output_shapes
: 
u
)checkpoint/save/restore_slice/tensor_nameConst*
dtype0*
valueB Bglobal_step*
_output_shapes
: 
n
-checkpoint/save/restore_slice/shape_and_sliceConst*
dtype0*
valueB B *
_output_shapes
: 
â
checkpoint/save/restore_sliceRestoreSlicecheckpoint/save/Const)checkpoint/save/restore_slice/tensor_name-checkpoint/save/restore_slice/shape_and_slice*
preferred_shard˙˙˙˙˙˙˙˙˙*
dt0*
_output_shapes
:
ś
checkpoint/save/AssignAssignglobal_stepcheckpoint/save/restore_slice*
validate_shape(*
_class
loc:@global_step*
use_locking(*
T0*
_output_shapes
: 
Ť
+checkpoint/save/restore_slice_1/tensor_nameConst*
dtype0*P
valueGBE B?inference/CategoricalPredictionOutput_0/FullyConnected_0/biases*
_output_shapes
: 
p
/checkpoint/save/restore_slice_1/shape_and_sliceConst*
dtype0*
valueB B *
_output_shapes
: 
č
checkpoint/save/restore_slice_1RestoreSlicecheckpoint/save/Const+checkpoint/save/restore_slice_1/tensor_name/checkpoint/save/restore_slice_1/shape_and_slice*
preferred_shard˙˙˙˙˙˙˙˙˙*
dt0*
_output_shapes
:
Ś
checkpoint/save/Assign_1Assign?inference/CategoricalPredictionOutput_0/FullyConnected_0/biasescheckpoint/save/restore_slice_1*
validate_shape(*R
_classH
FDloc:@inference/CategoricalPredictionOutput_0/FullyConnected_0/biases*
use_locking(*
T0*
_output_shapes
:

Ź
+checkpoint/save/restore_slice_2/tensor_nameConst*
dtype0*Q
valueHBF B@inference/CategoricalPredictionOutput_0/FullyConnected_0/weights*
_output_shapes
: 
p
/checkpoint/save/restore_slice_2/shape_and_sliceConst*
dtype0*
valueB B *
_output_shapes
: 
č
checkpoint/save/restore_slice_2RestoreSlicecheckpoint/save/Const+checkpoint/save/restore_slice_2/tensor_name/checkpoint/save/restore_slice_2/shape_and_slice*
preferred_shard˙˙˙˙˙˙˙˙˙*
dt0*
_output_shapes
:
­
checkpoint/save/Assign_2Assign@inference/CategoricalPredictionOutput_0/FullyConnected_0/weightscheckpoint/save/restore_slice_2*
validate_shape(*S
_classI
GEloc:@inference/CategoricalPredictionOutput_0/FullyConnected_0/weights*
use_locking(*
T0*
_output_shapes
:	 


+checkpoint/save/restore_slice_3/tensor_nameConst*
dtype0*1
value(B& B inference/Convolution2D_0/kernel*
_output_shapes
: 
p
/checkpoint/save/restore_slice_3/shape_and_sliceConst*
dtype0*
valueB B *
_output_shapes
: 
č
checkpoint/save/restore_slice_3RestoreSlicecheckpoint/save/Const+checkpoint/save/restore_slice_3/tensor_name/checkpoint/save/restore_slice_3/shape_and_slice*
preferred_shard˙˙˙˙˙˙˙˙˙*
dt0*
_output_shapes
:
ô
checkpoint/save/Assign_3Assign inference/Convolution2D_0/kernelcheckpoint/save/restore_slice_3*
validate_shape(*3
_class)
'%loc:@inference/Convolution2D_0/kernel*
use_locking(*
T0*&
_output_shapes
:@

+checkpoint/save/restore_slice_4/tensor_nameConst*
dtype0*1
value(B& B inference/Convolution2D_1/kernel*
_output_shapes
: 
p
/checkpoint/save/restore_slice_4/shape_and_sliceConst*
dtype0*
valueB B *
_output_shapes
: 
č
checkpoint/save/restore_slice_4RestoreSlicecheckpoint/save/Const+checkpoint/save/restore_slice_4/tensor_name/checkpoint/save/restore_slice_4/shape_and_slice*
preferred_shard˙˙˙˙˙˙˙˙˙*
dt0*
_output_shapes
:
ô
checkpoint/save/Assign_4Assign inference/Convolution2D_1/kernelcheckpoint/save/restore_slice_4*
validate_shape(*3
_class)
'%loc:@inference/Convolution2D_1/kernel*
use_locking(*
T0*&
_output_shapes
:@@

+checkpoint/save/restore_slice_5/tensor_nameConst*
dtype0*2
value)B' B!inference/Convolution2D_10/kernel*
_output_shapes
: 
p
/checkpoint/save/restore_slice_5/shape_and_sliceConst*
dtype0*
valueB B *
_output_shapes
: 
č
checkpoint/save/restore_slice_5RestoreSlicecheckpoint/save/Const+checkpoint/save/restore_slice_5/tensor_name/checkpoint/save/restore_slice_5/shape_and_slice*
preferred_shard˙˙˙˙˙˙˙˙˙*
dt0*
_output_shapes
:
ř
checkpoint/save/Assign_5Assign!inference/Convolution2D_10/kernelcheckpoint/save/restore_slice_5*
validate_shape(*4
_class*
(&loc:@inference/Convolution2D_10/kernel*
use_locking(*
T0*(
_output_shapes
:

+checkpoint/save/restore_slice_6/tensor_nameConst*
dtype0*2
value)B' B!inference/Convolution2D_11/kernel*
_output_shapes
: 
p
/checkpoint/save/restore_slice_6/shape_and_sliceConst*
dtype0*
valueB B *
_output_shapes
: 
č
checkpoint/save/restore_slice_6RestoreSlicecheckpoint/save/Const+checkpoint/save/restore_slice_6/tensor_name/checkpoint/save/restore_slice_6/shape_and_slice*
preferred_shard˙˙˙˙˙˙˙˙˙*
dt0*
_output_shapes
:
ř
checkpoint/save/Assign_6Assign!inference/Convolution2D_11/kernelcheckpoint/save/restore_slice_6*
validate_shape(*4
_class*
(&loc:@inference/Convolution2D_11/kernel*
use_locking(*
T0*(
_output_shapes
:

+checkpoint/save/restore_slice_7/tensor_nameConst*
dtype0*2
value)B' B!inference/Convolution2D_12/kernel*
_output_shapes
: 
p
/checkpoint/save/restore_slice_7/shape_and_sliceConst*
dtype0*
valueB B *
_output_shapes
: 
č
checkpoint/save/restore_slice_7RestoreSlicecheckpoint/save/Const+checkpoint/save/restore_slice_7/tensor_name/checkpoint/save/restore_slice_7/shape_and_slice*
preferred_shard˙˙˙˙˙˙˙˙˙*
dt0*
_output_shapes
:
ř
checkpoint/save/Assign_7Assign!inference/Convolution2D_12/kernelcheckpoint/save/restore_slice_7*
validate_shape(*4
_class*
(&loc:@inference/Convolution2D_12/kernel*
use_locking(*
T0*(
_output_shapes
:

+checkpoint/save/restore_slice_8/tensor_nameConst*
dtype0*1
value(B& B inference/Convolution2D_2/kernel*
_output_shapes
: 
p
/checkpoint/save/restore_slice_8/shape_and_sliceConst*
dtype0*
valueB B *
_output_shapes
: 
č
checkpoint/save/restore_slice_8RestoreSlicecheckpoint/save/Const+checkpoint/save/restore_slice_8/tensor_name/checkpoint/save/restore_slice_8/shape_and_slice*
preferred_shard˙˙˙˙˙˙˙˙˙*
dt0*
_output_shapes
:
ő
checkpoint/save/Assign_8Assign inference/Convolution2D_2/kernelcheckpoint/save/restore_slice_8*
validate_shape(*3
_class)
'%loc:@inference/Convolution2D_2/kernel*
use_locking(*
T0*'
_output_shapes
:@

+checkpoint/save/restore_slice_9/tensor_nameConst*
dtype0*1
value(B& B inference/Convolution2D_3/kernel*
_output_shapes
: 
p
/checkpoint/save/restore_slice_9/shape_and_sliceConst*
dtype0*
valueB B *
_output_shapes
: 
č
checkpoint/save/restore_slice_9RestoreSlicecheckpoint/save/Const+checkpoint/save/restore_slice_9/tensor_name/checkpoint/save/restore_slice_9/shape_and_slice*
preferred_shard˙˙˙˙˙˙˙˙˙*
dt0*
_output_shapes
:
ö
checkpoint/save/Assign_9Assign inference/Convolution2D_3/kernelcheckpoint/save/restore_slice_9*
validate_shape(*3
_class)
'%loc:@inference/Convolution2D_3/kernel*
use_locking(*
T0*(
_output_shapes
:

,checkpoint/save/restore_slice_10/tensor_nameConst*
dtype0*1
value(B& B inference/Convolution2D_4/kernel*
_output_shapes
: 
q
0checkpoint/save/restore_slice_10/shape_and_sliceConst*
dtype0*
valueB B *
_output_shapes
: 
ë
 checkpoint/save/restore_slice_10RestoreSlicecheckpoint/save/Const,checkpoint/save/restore_slice_10/tensor_name0checkpoint/save/restore_slice_10/shape_and_slice*
preferred_shard˙˙˙˙˙˙˙˙˙*
dt0*
_output_shapes
:
ř
checkpoint/save/Assign_10Assign inference/Convolution2D_4/kernel checkpoint/save/restore_slice_10*
validate_shape(*3
_class)
'%loc:@inference/Convolution2D_4/kernel*
use_locking(*
T0*(
_output_shapes
:

,checkpoint/save/restore_slice_11/tensor_nameConst*
dtype0*1
value(B& B inference/Convolution2D_5/kernel*
_output_shapes
: 
q
0checkpoint/save/restore_slice_11/shape_and_sliceConst*
dtype0*
valueB B *
_output_shapes
: 
ë
 checkpoint/save/restore_slice_11RestoreSlicecheckpoint/save/Const,checkpoint/save/restore_slice_11/tensor_name0checkpoint/save/restore_slice_11/shape_and_slice*
preferred_shard˙˙˙˙˙˙˙˙˙*
dt0*
_output_shapes
:
ř
checkpoint/save/Assign_11Assign inference/Convolution2D_5/kernel checkpoint/save/restore_slice_11*
validate_shape(*3
_class)
'%loc:@inference/Convolution2D_5/kernel*
use_locking(*
T0*(
_output_shapes
:

,checkpoint/save/restore_slice_12/tensor_nameConst*
dtype0*1
value(B& B inference/Convolution2D_6/kernel*
_output_shapes
: 
q
0checkpoint/save/restore_slice_12/shape_and_sliceConst*
dtype0*
valueB B *
_output_shapes
: 
ë
 checkpoint/save/restore_slice_12RestoreSlicecheckpoint/save/Const,checkpoint/save/restore_slice_12/tensor_name0checkpoint/save/restore_slice_12/shape_and_slice*
preferred_shard˙˙˙˙˙˙˙˙˙*
dt0*
_output_shapes
:
ř
checkpoint/save/Assign_12Assign inference/Convolution2D_6/kernel checkpoint/save/restore_slice_12*
validate_shape(*3
_class)
'%loc:@inference/Convolution2D_6/kernel*
use_locking(*
T0*(
_output_shapes
:

,checkpoint/save/restore_slice_13/tensor_nameConst*
dtype0*1
value(B& B inference/Convolution2D_7/kernel*
_output_shapes
: 
q
0checkpoint/save/restore_slice_13/shape_and_sliceConst*
dtype0*
valueB B *
_output_shapes
: 
ë
 checkpoint/save/restore_slice_13RestoreSlicecheckpoint/save/Const,checkpoint/save/restore_slice_13/tensor_name0checkpoint/save/restore_slice_13/shape_and_slice*
preferred_shard˙˙˙˙˙˙˙˙˙*
dt0*
_output_shapes
:
ř
checkpoint/save/Assign_13Assign inference/Convolution2D_7/kernel checkpoint/save/restore_slice_13*
validate_shape(*3
_class)
'%loc:@inference/Convolution2D_7/kernel*
use_locking(*
T0*(
_output_shapes
:

,checkpoint/save/restore_slice_14/tensor_nameConst*
dtype0*1
value(B& B inference/Convolution2D_8/kernel*
_output_shapes
: 
q
0checkpoint/save/restore_slice_14/shape_and_sliceConst*
dtype0*
valueB B *
_output_shapes
: 
ë
 checkpoint/save/restore_slice_14RestoreSlicecheckpoint/save/Const,checkpoint/save/restore_slice_14/tensor_name0checkpoint/save/restore_slice_14/shape_and_slice*
preferred_shard˙˙˙˙˙˙˙˙˙*
dt0*
_output_shapes
:
ř
checkpoint/save/Assign_14Assign inference/Convolution2D_8/kernel checkpoint/save/restore_slice_14*
validate_shape(*3
_class)
'%loc:@inference/Convolution2D_8/kernel*
use_locking(*
T0*(
_output_shapes
:

,checkpoint/save/restore_slice_15/tensor_nameConst*
dtype0*1
value(B& B inference/Convolution2D_9/kernel*
_output_shapes
: 
q
0checkpoint/save/restore_slice_15/shape_and_sliceConst*
dtype0*
valueB B *
_output_shapes
: 
ë
 checkpoint/save/restore_slice_15RestoreSlicecheckpoint/save/Const,checkpoint/save/restore_slice_15/tensor_name0checkpoint/save/restore_slice_15/shape_and_slice*
preferred_shard˙˙˙˙˙˙˙˙˙*
dt0*
_output_shapes
:
ř
checkpoint/save/Assign_15Assign inference/Convolution2D_9/kernel checkpoint/save/restore_slice_15*
validate_shape(*3
_class)
'%loc:@inference/Convolution2D_9/kernel*
use_locking(*
T0*(
_output_shapes
:

,checkpoint/save/restore_slice_16/tensor_nameConst*
dtype0*2
value)B' B!inference/FullyConnected_0/biases*
_output_shapes
: 
q
0checkpoint/save/restore_slice_16/shape_and_sliceConst*
dtype0*
valueB B *
_output_shapes
: 
ë
 checkpoint/save/restore_slice_16RestoreSlicecheckpoint/save/Const,checkpoint/save/restore_slice_16/tensor_name0checkpoint/save/restore_slice_16/shape_and_slice*
preferred_shard˙˙˙˙˙˙˙˙˙*
dt0*
_output_shapes
:
í
checkpoint/save/Assign_16Assign!inference/FullyConnected_0/biases checkpoint/save/restore_slice_16*
validate_shape(*4
_class*
(&loc:@inference/FullyConnected_0/biases*
use_locking(*
T0*
_output_shapes	
: 

,checkpoint/save/restore_slice_17/tensor_nameConst*
dtype0*3
value*B( B"inference/FullyConnected_0/weights*
_output_shapes
: 
q
0checkpoint/save/restore_slice_17/shape_and_sliceConst*
dtype0*
valueB B *
_output_shapes
: 
ë
 checkpoint/save/restore_slice_17RestoreSlicecheckpoint/save/Const,checkpoint/save/restore_slice_17/tensor_name0checkpoint/save/restore_slice_17/shape_and_slice*
preferred_shard˙˙˙˙˙˙˙˙˙*
dt0*
_output_shapes
:
ő
checkpoint/save/Assign_17Assign"inference/FullyConnected_0/weights checkpoint/save/restore_slice_17*
validate_shape(*5
_class+
)'loc:@inference/FullyConnected_0/weights*
use_locking(*
T0*!
_output_shapes
:Ä 

,checkpoint/save/restore_slice_18/tensor_nameConst*
dtype0*2
value)B' B!inference/FullyConnected_1/biases*
_output_shapes
: 
q
0checkpoint/save/restore_slice_18/shape_and_sliceConst*
dtype0*
valueB B *
_output_shapes
: 
ë
 checkpoint/save/restore_slice_18RestoreSlicecheckpoint/save/Const,checkpoint/save/restore_slice_18/tensor_name0checkpoint/save/restore_slice_18/shape_and_slice*
preferred_shard˙˙˙˙˙˙˙˙˙*
dt0*
_output_shapes
:
í
checkpoint/save/Assign_18Assign!inference/FullyConnected_1/biases checkpoint/save/restore_slice_18*
validate_shape(*4
_class*
(&loc:@inference/FullyConnected_1/biases*
use_locking(*
T0*
_output_shapes	
: 

,checkpoint/save/restore_slice_19/tensor_nameConst*
dtype0*3
value*B( B"inference/FullyConnected_1/weights*
_output_shapes
: 
q
0checkpoint/save/restore_slice_19/shape_and_sliceConst*
dtype0*
valueB B *
_output_shapes
: 
ë
 checkpoint/save/restore_slice_19RestoreSlicecheckpoint/save/Const,checkpoint/save/restore_slice_19/tensor_name0checkpoint/save/restore_slice_19/shape_and_slice*
preferred_shard˙˙˙˙˙˙˙˙˙*
dt0*
_output_shapes
:
ô
checkpoint/save/Assign_19Assign"inference/FullyConnected_1/weights checkpoint/save/restore_slice_19*
validate_shape(*5
_class+
)'loc:@inference/FullyConnected_1/weights*
use_locking(*
T0* 
_output_shapes
:
  
{
,checkpoint/save/restore_slice_20/tensor_nameConst*
dtype0*
valueB Btrain/Variable*
_output_shapes
: 
q
0checkpoint/save/restore_slice_20/shape_and_sliceConst*
dtype0*
valueB B *
_output_shapes
: 
ë
 checkpoint/save/restore_slice_20RestoreSlicecheckpoint/save/Const,checkpoint/save/restore_slice_20/tensor_name0checkpoint/save/restore_slice_20/shape_and_slice*
preferred_shard˙˙˙˙˙˙˙˙˙*
dt0*
_output_shapes
:
Â
checkpoint/save/Assign_20Assigntrain/Variable checkpoint/save/restore_slice_20*
validate_shape(*!
_class
loc:@train/Variable*
use_locking(*
T0*
_output_shapes
: 
ă
checkpoint/save/restore_allNoOp^checkpoint/save/Assign^checkpoint/save/Assign_1^checkpoint/save/Assign_2^checkpoint/save/Assign_3^checkpoint/save/Assign_4^checkpoint/save/Assign_5^checkpoint/save/Assign_6^checkpoint/save/Assign_7^checkpoint/save/Assign_8^checkpoint/save/Assign_9^checkpoint/save/Assign_10^checkpoint/save/Assign_11^checkpoint/save/Assign_12^checkpoint/save/Assign_13^checkpoint/save/Assign_14^checkpoint/save/Assign_15^checkpoint/save/Assign_16^checkpoint/save/Assign_17^checkpoint/save/Assign_18^checkpoint/save/Assign_19^checkpoint/save/Assign_20

initNoOp^global_step/Assign(^inference/Convolution2D_0/kernel/Assign(^inference/Convolution2D_1/kernel/Assign(^inference/Convolution2D_2/kernel/Assign(^inference/Convolution2D_3/kernel/Assign(^inference/Convolution2D_4/kernel/Assign(^inference/Convolution2D_5/kernel/Assign(^inference/Convolution2D_6/kernel/Assign(^inference/Convolution2D_7/kernel/Assign(^inference/Convolution2D_8/kernel/Assign(^inference/Convolution2D_9/kernel/Assign)^inference/Convolution2D_10/kernel/Assign)^inference/Convolution2D_11/kernel/Assign)^inference/Convolution2D_12/kernel/Assign*^inference/FullyConnected_0/weights/Assign)^inference/FullyConnected_0/biases/Assign*^inference/FullyConnected_1/weights/Assign)^inference/FullyConnected_1/biases/AssignH^inference/CategoricalPredictionOutput_0/FullyConnected_0/weights/AssignG^inference/CategoricalPredictionOutput_0/FullyConnected_0/biases/Assign^train/Variable/Assign
Ő
MergeSummary/MergeSummaryMergeSummary(inference/BatchImageInput_0/ImageSummary2inference/FullyConnected_0/summaries/ScalarSummary4inference/FullyConnected_0/summaries/ScalarSummary_14inference/FullyConnected_0/summaries/ScalarSummary_24inference/FullyConnected_0/summaries/ScalarSummary_35inference/FullyConnected_0/summaries/HistogramSummary4inference/FullyConnected_0/summaries_1/ScalarSummary6inference/FullyConnected_0/summaries_1/ScalarSummary_16inference/FullyConnected_0/summaries_1/ScalarSummary_26inference/FullyConnected_0/summaries_1/ScalarSummary_37inference/FullyConnected_0/summaries_1/HistogramSummary7inference/FullyConnected_0/summaries_2/HistogramSummary2inference/FullyConnected_1/summaries/ScalarSummary4inference/FullyConnected_1/summaries/ScalarSummary_14inference/FullyConnected_1/summaries/ScalarSummary_24inference/FullyConnected_1/summaries/ScalarSummary_35inference/FullyConnected_1/summaries/HistogramSummary4inference/FullyConnected_1/summaries_1/ScalarSummary6inference/FullyConnected_1/summaries_1/ScalarSummary_16inference/FullyConnected_1/summaries_1/ScalarSummary_26inference/FullyConnected_1/summaries_1/ScalarSummary_37inference/FullyConnected_1/summaries_1/HistogramSummary7inference/FullyConnected_1/summaries_2/HistogramSummaryPinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/ScalarSummaryRinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/ScalarSummary_1Rinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/ScalarSummary_2Rinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/ScalarSummary_3Sinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/HistogramSummaryRinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/ScalarSummaryTinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/ScalarSummary_1Tinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/ScalarSummary_2Tinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/ScalarSummary_3Uinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/HistogramSummaryUinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_2/HistogramSummary*
_output_shapes
: *
N""