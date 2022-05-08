package com.google.android.gms.common.images;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import com.google.android.gms.common.internal.Asserts;
import com.google.android.gms.internal.base.zaj;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/images/zab.class */
public abstract class zab {

    /* renamed from: a */
    final zaa f7433a;

    /* renamed from: b */
    protected int f7434b;

    /* renamed from: c */
    private boolean f7435c;

    /* renamed from: d */
    private boolean f7436d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m14603a(Context context, Bitmap bitmap, boolean z) {
        Asserts.m14594c(bitmap);
        mo14599d(new BitmapDrawable(context.getResources(), bitmap), z, false, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final void m14602b(Context context, zaj zajVar) {
        if (this.f7436d) {
            mo14599d(null, false, true, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final void m14601c(Context context, zaj zajVar, boolean z) {
        int i = this.f7434b;
        mo14599d(i != 0 ? context.getResources().getDrawable(i) : null, z, false, false);
    }

    /* renamed from: d */
    protected abstract void mo14599d(Drawable drawable, boolean z, boolean z2, boolean z3);

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: e */
    public final boolean m14600e(boolean z, boolean z2) {
        return this.f7435c && !z2 && !z;
    }
}
