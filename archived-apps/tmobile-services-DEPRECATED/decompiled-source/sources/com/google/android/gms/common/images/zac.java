package com.google.android.gms.common.images;

import android.graphics.drawable.Drawable;
import com.google.android.gms.common.images.ImageManager;
import com.google.android.gms.common.internal.Objects;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/images/zac.class */
public final class zac extends zab {

    /* renamed from: e */
    private WeakReference<ImageManager.OnImageLoadedListener> f7437e;

    @Override // com.google.android.gms.common.images.zab
    /* renamed from: d */
    protected final void mo14599d(Drawable drawable, boolean z, boolean z2, boolean z3) {
        ImageManager.OnImageLoadedListener onImageLoadedListener;
        if (!z2 && (onImageLoadedListener = this.f7437e.get()) != null) {
            onImageLoadedListener.m14607a(this.f7433a.f7432a, drawable, z3);
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
        ImageManager.OnImageLoadedListener onImageLoadedListener = this.f7437e.get();
        ImageManager.OnImageLoadedListener onImageLoadedListener2 = zacVar.f7437e.get();
        return onImageLoadedListener2 != null && onImageLoadedListener != null && Objects.m14537a(onImageLoadedListener2, onImageLoadedListener) && Objects.m14537a(zacVar.f7433a, this.f7433a);
    }

    public final int hashCode() {
        return Objects.m14536b(this.f7433a);
    }
}
