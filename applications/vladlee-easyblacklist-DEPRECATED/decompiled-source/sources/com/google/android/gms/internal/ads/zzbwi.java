package com.google.android.gms.internal.ads;

import android.graphics.drawable.Drawable;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbwi.class */
public final class zzbwi extends zzacg {

    /* renamed from: a */
    private final zzbws f12539a;

    /* renamed from: b */
    private IObjectWrapper f12540b;

    public zzbwi(zzbws zzbwsVar) {
        this.f12539a = zzbwsVar;
    }

    /* renamed from: a */
    private final float m3874a() {
        try {
            return this.f12539a.getVideoController().getAspectRatio();
        } catch (RemoteException e) {
            zzavs.zzc("Remote exception getting video controller aspect ratio.", e);
            return 0.0f;
        }
    }

    /* renamed from: a */
    private static float m3873a(IObjectWrapper iObjectWrapper) {
        if (iObjectWrapper == null) {
            return 0.0f;
        }
        Drawable drawable = (Drawable) ObjectWrapper.unwrap(iObjectWrapper);
        float f = 0.0f;
        if (drawable != null) {
            f = 0.0f;
            if (drawable.getIntrinsicWidth() != -1) {
                f = 0.0f;
                if (drawable.getIntrinsicHeight() != -1) {
                    f = drawable.getIntrinsicWidth() / drawable.getIntrinsicHeight();
                }
            }
        }
        return f;
    }

    @Override // com.google.android.gms.internal.ads.zzacd
    public final float getAspectRatio() {
        if (!((Boolean) zzve.zzoy().zzd(zzzn.zzcqi)).booleanValue()) {
            return 0.0f;
        }
        if (this.f12539a.getMediaContentAspectRatio() != 0.0f) {
            return this.f12539a.getMediaContentAspectRatio();
        }
        if (this.f12539a.getVideoController() != null) {
            return m3874a();
        }
        IObjectWrapper iObjectWrapper = this.f12540b;
        if (iObjectWrapper != null) {
            return m3873a(iObjectWrapper);
        }
        zzaci zzajc = this.f12539a.zzajc();
        if (zzajc == null) {
            return 0.0f;
        }
        float width = (zzajc == null || zzajc.getWidth() == -1 || zzajc.getHeight() == -1) ? 0.0f : zzajc.getWidth() / zzajc.getHeight();
        return width != 0.0f ? width : m3873a(zzajc.zzrc());
    }

    @Override // com.google.android.gms.internal.ads.zzacd
    public final void zzo(IObjectWrapper iObjectWrapper) {
        if (((Boolean) zzve.zzoy().zzd(zzzn.zzcmd)).booleanValue()) {
            this.f12540b = iObjectWrapper;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzacd
    public final IObjectWrapper zzre() {
        IObjectWrapper iObjectWrapper = this.f12540b;
        if (iObjectWrapper != null) {
            return iObjectWrapper;
        }
        zzaci zzajc = this.f12539a.zzajc();
        if (zzajc == null) {
            return null;
        }
        return zzajc.zzrc();
    }
}
