package com.google.android.gms.common.images;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.widget.ImageView;
import com.google.android.gms.common.internal.Asserts;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.internal.base.zae;
import com.google.android.gms.internal.base.zak;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/images/zad.class */
public final class zad extends zab {

    /* renamed from: c */
    private WeakReference<ImageView> f6676c;

    public zad(ImageView imageView, int i) {
        super(null, i);
        Asserts.checkNotNull(imageView);
        this.f6676c = new WeakReference<>(imageView);
    }

    public zad(ImageView imageView, Uri uri) {
        super(uri, 0);
        Asserts.checkNotNull(imageView);
        this.f6676c = new WeakReference<>(imageView);
    }

    @Override // com.google.android.gms.common.images.zab
    /* renamed from: a */
    protected final void mo5726a(Drawable drawable, boolean z, boolean z2, boolean z3) {
        Drawable drawable2;
        ImageView imageView = this.f6676c.get();
        if (imageView != null) {
            int i = 0;
            boolean z4 = !z2 && !z3;
            if (z4 && (imageView instanceof zak)) {
                int zacf = zak.zacf();
                if (this.f6669b != 0 && zacf == this.f6669b) {
                    return;
                }
            }
            boolean a = m5727a(z, z2);
            Uri uri = null;
            Drawable drawable3 = drawable;
            if (a) {
                Drawable drawable4 = imageView.getDrawable();
                if (drawable4 != null) {
                    drawable2 = drawable4;
                    if (drawable4 instanceof zae) {
                        drawable2 = ((zae) drawable4).zacd();
                    }
                } else {
                    drawable2 = null;
                }
                drawable3 = new zae(drawable2, drawable);
            }
            imageView.setImageDrawable(drawable3);
            if (imageView instanceof zak) {
                if (z3) {
                    uri = this.f6668a.f6667a;
                }
                zak.zaa(uri);
                if (z4) {
                    i = this.f6669b;
                }
                zak.zai(i);
            }
            if (a) {
                ((zae) drawable3).startTransition(250);
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
        ImageView imageView = this.f6676c.get();
        ImageView imageView2 = ((zad) obj).f6676c.get();
        return (imageView2 == null || imageView == null || !Objects.equal(imageView2, imageView)) ? false : true;
    }

    public final int hashCode() {
        return 0;
    }
}
