package com.google.android.material.transition;

import android.graphics.RectF;
/* loaded from: classes-dex2jar.jar:com/google/android/material/transition/FitModeEvaluators.class */
class FitModeEvaluators {

    /* renamed from: a */
    private static final FitModeEvaluator f11660a = new FitModeEvaluator() { // from class: com.google.android.material.transition.FitModeEvaluators.1
        @Override // com.google.android.material.transition.FitModeEvaluator
        /* renamed from: a */
        public FitModeResult mo8638a(float f, float f2, float f3, float f4, float f5, float f6, float f7) {
            float k = TransitionUtils.m8560k(f4, f6, f2, f3, f);
            float f8 = k / f4;
            float f9 = k / f6;
            return new FitModeResult(f8, f9, k, f5 * f8, k, f7 * f9);
        }

        @Override // com.google.android.material.transition.FitModeEvaluator
        /* renamed from: b */
        public boolean mo8637b(FitModeResult fitModeResult) {
            return fitModeResult.f11665d > fitModeResult.f11667f;
        }

        @Override // com.google.android.material.transition.FitModeEvaluator
        /* renamed from: c */
        public void mo8636c(RectF rectF, float f, FitModeResult fitModeResult) {
            rectF.bottom -= Math.abs(fitModeResult.f11667f - fitModeResult.f11665d) * f;
        }
    };

    /* renamed from: b */
    private static final FitModeEvaluator f11661b = new FitModeEvaluator() { // from class: com.google.android.material.transition.FitModeEvaluators.2
        @Override // com.google.android.material.transition.FitModeEvaluator
        /* renamed from: a */
        public FitModeResult mo8638a(float f, float f2, float f3, float f4, float f5, float f6, float f7) {
            float k = TransitionUtils.m8560k(f5, f7, f2, f3, f);
            float f8 = k / f5;
            float f9 = k / f7;
            return new FitModeResult(f8, f9, f4 * f8, k, f6 * f9, k);
        }

        @Override // com.google.android.material.transition.FitModeEvaluator
        /* renamed from: b */
        public boolean mo8637b(FitModeResult fitModeResult) {
            return fitModeResult.f11664c > fitModeResult.f11666e;
        }

        @Override // com.google.android.material.transition.FitModeEvaluator
        /* renamed from: c */
        public void mo8636c(RectF rectF, float f, FitModeResult fitModeResult) {
            float abs = (Math.abs(fitModeResult.f11666e - fitModeResult.f11664c) / 2.0f) * f;
            rectF.left += abs;
            rectF.right -= abs;
        }
    };

    private FitModeEvaluators() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static FitModeEvaluator m8640a(int i, boolean z, RectF rectF, RectF rectF2) {
        if (i == 0) {
            return m8639b(z, rectF, rectF2) ? f11660a : f11661b;
        } else if (i == 1) {
            return f11660a;
        } else {
            if (i == 2) {
                return f11661b;
            }
            throw new IllegalArgumentException("Invalid fit mode: " + i);
        }
    }

    /* renamed from: b */
    private static boolean m8639b(boolean z, RectF rectF, RectF rectF2) {
        boolean z2;
        float width = rectF.width();
        float height = rectF.height();
        float width2 = rectF2.width();
        float height2 = rectF2.height();
        float f = (height2 * width) / width2;
        float f2 = (width2 * height) / width;
        if (z) {
            if (f >= height) {
                z2 = true;
            }
            z2 = false;
        } else {
            if (f2 >= height2) {
                z2 = true;
            }
            z2 = false;
        }
        return z2;
    }
}
