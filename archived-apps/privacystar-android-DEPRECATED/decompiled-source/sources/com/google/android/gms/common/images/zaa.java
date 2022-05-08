package com.google.android.gms.common.images;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import com.google.android.gms.common.internal.Asserts;
import com.google.android.gms.internal.base.zak;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/images/zaa.class */
public abstract class zaa {
    final zab zamu;
    protected int zamw;
    private int zamv = 0;
    private boolean zamx = false;
    private boolean zamy = true;
    private boolean zamz = false;
    private boolean zana = true;

    public zaa(Uri uri, int i) {
        this.zamw = 0;
        this.zamu = new zab(uri);
        this.zamw = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zaa(Context context, Bitmap bitmap, boolean z) {
        Asserts.checkNotNull(bitmap);
        zaa(new BitmapDrawable(context.getResources(), bitmap), z, false, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zaa(Context context, zak zakVar) {
        if (this.zana) {
            zaa(null, false, true, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zaa(Context context, zak zakVar, boolean z) {
        Drawable drawable;
        if (this.zamw != 0) {
            drawable = context.getResources().getDrawable(this.zamw);
        } else {
            drawable = null;
        }
        zaa(drawable, z, false, false);
    }

    protected abstract void zaa(Drawable drawable, boolean z, boolean z2, boolean z3);

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean zaa(boolean z, boolean z2) {
        return this.zamy && !z2 && !z;
    }
}
