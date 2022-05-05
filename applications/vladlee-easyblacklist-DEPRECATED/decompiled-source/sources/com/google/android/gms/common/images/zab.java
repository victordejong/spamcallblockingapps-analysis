package com.google.android.gms.common.images;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import com.google.android.gms.common.internal.Asserts;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/images/zab.class */
public abstract class zab {

    /* renamed from: a */
    final C1655a f6668a;

    /* renamed from: b */
    protected int f6669b;

    /* renamed from: c */
    private int f6670c = 0;

    /* renamed from: d */
    private boolean f6671d = false;

    /* renamed from: e */
    private boolean f6672e = true;

    /* renamed from: f */
    private boolean f6673f = false;

    /* renamed from: g */
    private boolean f6674g = true;

    public zab(Uri uri, int i) {
        this.f6669b = 0;
        this.f6668a = new C1655a(uri);
        this.f6669b = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m5730a() {
        if (this.f6674g) {
            mo5726a(null, false, true, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m5729a(Context context, Bitmap bitmap, boolean z) {
        Asserts.checkNotNull(bitmap);
        mo5726a(new BitmapDrawable(context.getResources(), bitmap), z, false, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m5728a(Context context, boolean z) {
        int i = this.f6669b;
        mo5726a(i != 0 ? context.getResources().getDrawable(i) : null, z, false, false);
    }

    /* renamed from: a */
    protected abstract void mo5726a(Drawable drawable, boolean z, boolean z2, boolean z3);

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final boolean m5727a(boolean z, boolean z2) {
        return this.f6672e && !z2 && !z;
    }
}
