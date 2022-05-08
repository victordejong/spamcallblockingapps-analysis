package com.google.android.material.transition.platform;

import androidx.annotation.RequiresApi;
@RequiresApi
/* loaded from: classes-dex2jar.jar:com/google/android/material/transition/platform/FadeModeResult.class */
class FadeModeResult {

    /* renamed from: a */
    final int f11775a;

    /* renamed from: b */
    final int f11776b;

    /* renamed from: c */
    final boolean f11777c;

    private FadeModeResult(int i, int i2, boolean z) {
        this.f11775a = i;
        this.f11776b = i2;
        this.f11777c = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static FadeModeResult m8548a(int i, int i2) {
        return new FadeModeResult(i, i2, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static FadeModeResult m8547b(int i, int i2) {
        return new FadeModeResult(i, i2, false);
    }
}
