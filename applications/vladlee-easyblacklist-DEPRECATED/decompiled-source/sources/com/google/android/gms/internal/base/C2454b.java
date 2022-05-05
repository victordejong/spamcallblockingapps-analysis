package com.google.android.gms.internal.base;

import android.graphics.drawable.Drawable;
/* renamed from: com.google.android.gms.internal.base.b */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/base/b.class */
final class C2454b extends Drawable.ConstantState {

    /* renamed from: a */
    int f15785a;

    /* renamed from: b */
    int f15786b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2454b(C2454b bVar) {
        if (bVar != null) {
            this.f15785a = bVar.f15785a;
            this.f15786b = bVar.f15786b;
        }
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final int getChangingConfigurations() {
        return this.f15785a;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable() {
        return new zae(this);
    }
}
