package com.google.android.gms.internal.ads;

import android.view.View;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
/* renamed from: com.google.android.gms.internal.ads.tc */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/tc.class */
final class BinderC2243tc extends zzamv {

    /* renamed from: a */
    private zzcip<zzani, zzcjy> f10486a;

    /* renamed from: b */
    private final /* synthetic */ zzcjk f10487b;

    private BinderC2243tc(zzcjk zzcjkVar, zzcip<zzani, zzcjy> zzcipVar) {
        this.f10487b = zzcjkVar;
        this.f10486a = zzcipVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ BinderC2243tc(zzcjk zzcjkVar, zzcip zzcipVar, byte b) {
        this(zzcjkVar, zzcipVar);
    }

    @Override // com.google.android.gms.internal.ads.zzamw
    public final void zzdl(String str) {
        this.f10486a.zzfyf.onAdFailedToLoad(0);
    }

    @Override // com.google.android.gms.internal.ads.zzamw
    public final void zzx(IObjectWrapper iObjectWrapper) {
        this.f10487b.f13224c = (View) ObjectWrapper.unwrap(iObjectWrapper);
        this.f10486a.zzfyf.onAdLoaded();
    }
}
