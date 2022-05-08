package com.google.android.material.transition;
/* loaded from: classes-dex2jar.jar:com/google/android/material/transition/FadeModeResult.class */
class FadeModeResult {

    /* renamed from: a */
    final int f11646a;

    /* renamed from: b */
    final int f11647b;

    /* renamed from: c */
    final boolean f11648c;

    private FadeModeResult(int i, int i2, boolean z) {
        this.f11646a = i;
        this.f11647b = i2;
        this.f11648c = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static FadeModeResult m8645a(int i, int i2) {
        return new FadeModeResult(i, i2, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static FadeModeResult m8644b(int i, int i2) {
        return new FadeModeResult(i, i2, false);
    }
}
