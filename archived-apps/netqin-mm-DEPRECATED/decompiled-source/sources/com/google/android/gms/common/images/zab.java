package com.google.android.gms.common.images;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.widget.ImageView;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.internal.base.zaf;
import com.google.android.gms.internal.base.zai;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/images/zab.class */
public final class zab extends zaa {

    /* renamed from: d */
    public WeakReference<ImageView> f23365d;

    @Override // com.google.android.gms.common.images.zaa
    /* renamed from: a */
    public final void mo17400a(Drawable drawable, boolean z, boolean z2, boolean z3) {
        Drawable drawable2;
        ImageView imageView = this.f23365d.get();
        if (imageView != null) {
            if (!(!z2 && !z3) || !(imageView instanceof zai)) {
                boolean a = m17401a(z, z2);
                Drawable drawable3 = drawable;
                if (a) {
                    Drawable drawable4 = imageView.getDrawable();
                    if (drawable4 != null) {
                        drawable2 = drawable4;
                        if (drawable4 instanceof zaf) {
                            drawable2 = ((zaf) drawable4).m10883a();
                        }
                    } else {
                        drawable2 = null;
                    }
                    drawable3 = new zaf(drawable2, drawable);
                }
                imageView.setImageDrawable(drawable3);
                if (imageView instanceof zai) {
                    zai zaiVar = (zai) imageView;
                    zai.m10879a(z3 ? this.f23362a.f12007a : Uri.EMPTY);
                    throw null;
                } else if (drawable3 != null && a) {
                    ((zaf) drawable3).m10882a(250);
                }
            } else {
                zai zaiVar2 = (zai) imageView;
                zai.m10880a();
                throw null;
            }
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zab)) {
            return false;
        }
        ImageView imageView = this.f23365d.get();
        ImageView imageView2 = ((zab) obj).f23365d.get();
        return (imageView2 == null || imageView == null || !Objects.m17295a(imageView2, imageView)) ? false : true;
    }

    public final int hashCode() {
        return 0;
    }
}
