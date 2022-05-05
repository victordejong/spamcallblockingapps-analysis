package com.google.android.gms.internal.base;

import android.graphics.drawable.Drawable;
/* renamed from: com.google.android.gms.internal.base.c */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/base/c.class */
final class C2455c extends Drawable.ConstantState {
    private C2455c() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ C2455c(byte b) {
        this();
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final int getChangingConfigurations() {
        return 0;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable() {
        C2453a aVar;
        aVar = C2453a.f15783a;
        return aVar;
    }
}
