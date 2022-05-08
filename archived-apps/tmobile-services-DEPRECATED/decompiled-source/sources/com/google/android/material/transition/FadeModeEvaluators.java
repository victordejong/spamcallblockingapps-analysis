package com.google.android.material.transition;
/* loaded from: classes-dex2jar.jar:com/google/android/material/transition/FadeModeEvaluators.class */
class FadeModeEvaluators {

    /* renamed from: a */
    private static final FadeModeEvaluator f11642a = new FadeModeEvaluator() { // from class: com.google.android.material.transition.FadeModeEvaluators.1
        @Override // com.google.android.material.transition.FadeModeEvaluator
        /* renamed from: a */
        public FadeModeResult mo8646a(float f, float f2, float f3) {
            return FadeModeResult.m8645a(255, TransitionUtils.m8559l(0, 255, f2, f3, f));
        }
    };

    /* renamed from: b */
    private static final FadeModeEvaluator f11643b = new FadeModeEvaluator() { // from class: com.google.android.material.transition.FadeModeEvaluators.2
        @Override // com.google.android.material.transition.FadeModeEvaluator
        /* renamed from: a */
        public FadeModeResult mo8646a(float f, float f2, float f3) {
            return FadeModeResult.m8644b(TransitionUtils.m8559l(255, 0, f2, f3, f), 255);
        }
    };

    /* renamed from: c */
    private static final FadeModeEvaluator f11644c = new FadeModeEvaluator() { // from class: com.google.android.material.transition.FadeModeEvaluators.3
        @Override // com.google.android.material.transition.FadeModeEvaluator
        /* renamed from: a */
        public FadeModeResult mo8646a(float f, float f2, float f3) {
            return FadeModeResult.m8644b(TransitionUtils.m8559l(255, 0, f2, f3, f), TransitionUtils.m8559l(0, 255, f2, f3, f));
        }
    };

    /* renamed from: d */
    private static final FadeModeEvaluator f11645d = new FadeModeEvaluator() { // from class: com.google.android.material.transition.FadeModeEvaluators.4
        @Override // com.google.android.material.transition.FadeModeEvaluator
        /* renamed from: a */
        public FadeModeResult mo8646a(float f, float f2, float f3) {
            float f4 = ((f3 - f2) * 0.35f) + f2;
            return FadeModeResult.m8644b(TransitionUtils.m8559l(255, 0, f2, f4, f), TransitionUtils.m8559l(0, 255, f4, f3, f));
        }
    };

    private FadeModeEvaluators() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static FadeModeEvaluator m8647a(int i, boolean z) {
        if (i == 0) {
            return z ? f11642a : f11643b;
        } else if (i == 1) {
            return z ? f11643b : f11642a;
        } else if (i == 2) {
            return f11644c;
        } else {
            if (i == 3) {
                return f11645d;
            }
            throw new IllegalArgumentException("Invalid fade mode: " + i);
        }
    }
}
