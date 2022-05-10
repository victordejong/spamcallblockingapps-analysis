package com.google.android.gms.common.images;

import android.graphics.drawable.Drawable;
import com.google.android.gms.common.images.ImageManager;
import com.google.android.gms.common.internal.Objects;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/images/zad.class */
public final class zad extends zaa {

    /* renamed from: d */
    public WeakReference<ImageManager.OnImageLoadedListener> f23366d;

    @Override // com.google.android.gms.common.images.zaa
    /* renamed from: a */
    public final void mo17400a(Drawable drawable, boolean z, boolean z2, boolean z3) {
        ImageManager.OnImageLoadedListener onImageLoadedListener;
        if (!z2 && (onImageLoadedListener = this.f23366d.get()) != null) {
            onImageLoadedListener.m17407a(this.f23362a.f12007a, drawable, z3);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zad)) {
            return false;
        }
        zad zadVar = (zad) obj;
        ImageManager.OnImageLoadedListener onImageLoadedListener = this.f23366d.get();
        ImageManager.OnImageLoadedListener onImageLoadedListener2 = zadVar.f23366d.get();
        return onImageLoadedListener2 != null && onImageLoadedListener != null && Objects.m17295a(onImageLoadedListener2, onImageLoadedListener) && Objects.m17295a(zadVar.f23362a, this.f23362a);
    }

    public final int hashCode() {
        return Objects.m17294a(this.f23362a);
    }
}
