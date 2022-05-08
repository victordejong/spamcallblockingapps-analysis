package com.google.android.gms.internal.ads;

import android.view.MotionEvent;
import com.google.android.gms.ads.formats.NativeCustomTemplateAd;
/* renamed from: com.google.android.gms.internal.ads.pl */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/pl.class */
final class C2144pl implements zzabw {

    /* renamed from: a */
    private final /* synthetic */ zzcad f10328a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2144pl(zzcad zzcadVar) {
        this.f10328a = zzcadVar;
    }

    @Override // com.google.android.gms.internal.ads.zzabw
    public final void zzc(MotionEvent motionEvent) {
    }

    @Override // com.google.android.gms.internal.ads.zzabw
    public final void zzrd() {
        zzbwk zzbwkVar;
        zzbwkVar = this.f10328a.f12803d;
        zzbwkVar.zzfu(NativeCustomTemplateAd.ASSET_NAME_VIDEO);
    }
}
