%module gta_native
%include "typemaps.i"

%apply int *OUTPUT {
	int* red, int* green, int* blue,
	int* tintIndex,
	int* r, int* g, int* b, int* a,
	int* colorPrimary, int* colorSecondary,
	int* pearlescentColor, int* wheelColor,
	int* paintType, int* color,
	int* ammo,
	int* x, int* y,
	int* outValue
};
%apply float *OUTPUT {
	float* x, float* y, float* z, float* w,
	float* x2d, float* y2d,
	float* outValue,
	float* height
};

%{
#include "natives_wrap.h"
%}

%include <windows.i>
%include "../../sdk/inc/natives.h"
%include "../../sdk/inc/enums.h"
%include "../../sdk/inc/types.h"