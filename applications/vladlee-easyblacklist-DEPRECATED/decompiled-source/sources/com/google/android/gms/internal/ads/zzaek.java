package com.google.android.gms.internal.ads;

import android.graphics.drawable.Drawable;
import android.os.RemoteException;
import com.google.android.gms.ads.formats.UnifiedNativeAd;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaek.class */
public final class zzaek implements UnifiedNativeAd.MediaContent {

    /* renamed from: a */
    private final zzacd f10879a;

    public zzaek(zzacd zzacdVar) {
        this.f10879a = zzacdVar;
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd.MediaContent
    public final float getAspectRatio() {
        try {
            return this.f10879a.getAspectRatio();
        } catch (RemoteException e) {
            return 0.0f;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd.MediaContent
    public final Drawable getMainImage() {
        try {
            IObjectWrapper zzre = this.f10879a.zzre();
            if (zzre != null) {
                return (Drawable) ObjectWrapper.unwrap(zzre);
            }
            return null;
        } catch (RemoteException e) {
            zzayu.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd.MediaContent
    public final void setMainImage(Drawable drawable) {
        try {
            this.f10879a.zzo(ObjectWrapper.wrap(drawable));
        } catch (RemoteException e) {
            zzayu.zzc("", e);
        }
    }

    public final zzacd zzrr() {
        return this.f10879a;
    }
}
