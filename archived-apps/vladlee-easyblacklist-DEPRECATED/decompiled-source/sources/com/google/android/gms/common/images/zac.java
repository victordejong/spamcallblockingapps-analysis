package com.google.android.gms.common.images;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import com.google.android.gms.common.images.ImageManager;
import com.google.android.gms.common.internal.Asserts;
import com.google.android.gms.common.internal.Objects;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/images/zac.class */
public final class zac extends zab {

    /* renamed from: c */
    private WeakReference<ImageManager.OnImageLoadedListener> f6675c;

    public zac(ImageManager.OnImageLoadedListener onImageLoadedListener, Uri uri) {
        super(uri, 0);
        Asserts.checkNotNull(onImageLoadedListener);
        this.f6675c = new WeakReference<>(onImageLoadedListener);
    }

    @Override // com.google.android.gms.common.images.zab
    /* renamed from: a */
    protected final void mo5726a(Drawable drawable, boolean z, boolean z2, boolean z3) {
        ImageManager.OnImageLoadedListener onImageLoadedListener;
        if (!z2 && (onImageLoadedListener = this.f6675c.get()) != null) {
            onImageLoadedListener.onImageLoaded(this.f6668a.f6667a, drawable, z3);
        }
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zac)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        zac zacVar = (zac) obj;
        ImageManager.OnImageLoadedListener onImageLoadedListener = this.f6675c.get();
        ImageManager.OnImageLoadedListener onImageLoadedListener2 = zacVar.f6675c.get();
        return onImageLoadedListener2 != null && onImageLoadedListener != null && Objects.equal(onImageLoadedListener2, onImageLoadedListener) && Objects.equal(zacVar.f6668a, this.f6668a);
    }

    public final int hashCode() {
        return Objects.hashCode(this.f6668a);
    }
}
