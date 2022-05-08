package com.google.android.gms.common.images;

import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.internal.base.zae;
import com.google.android.gms.internal.base.zak;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/images/zad.class */
public final class zad extends zab {

    /* renamed from: e */
    private WeakReference<ImageView> f7438e;

    @Override // com.google.android.gms.common.images.zab
    /* renamed from: d */
    protected final void mo14599d(Drawable drawable, boolean z, boolean z2, boolean z3) {
        Drawable drawable2;
        ImageView imageView = this.f7438e.get();
        if (imageView != null) {
            if (!(!z2 && !z3) || !(imageView instanceof zak)) {
                boolean e = m14600e(z, z2);
                Drawable drawable3 = drawable;
                if (e) {
                    Drawable drawable4 = imageView.getDrawable();
                    if (drawable4 != null) {
                        drawable2 = drawable4;
                        if (drawable4 instanceof zae) {
                            drawable2 = ((zae) drawable4).m14107c();
                        }
                    } else {
                        drawable2 = null;
                    }
                    drawable3 = new zae(drawable2, drawable);
                }
                imageView.setImageDrawable(drawable3);
                if (imageView instanceof zak) {
                    zak.m14105a(z3 ? this.f7433a.f7432a : null);
                    throw null;
                } else if (e) {
                    ((zae) drawable3).m14108b(250);
                }
            } else {
                zak.m14104b();
                throw null;
            }
        }
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zad)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        ImageView imageView = this.f7438e.get();
        ImageView imageView2 = ((zad) obj).f7438e.get();
        return (imageView2 == null || imageView == null || !Objects.m14537a(imageView2, imageView)) ? false : true;
    }

    public final int hashCode() {
        return 0;
    }
}
