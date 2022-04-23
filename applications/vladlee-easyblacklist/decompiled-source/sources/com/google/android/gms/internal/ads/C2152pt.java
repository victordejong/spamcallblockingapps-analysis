package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzt;
/* renamed from: com.google.android.gms.internal.ads.pt */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/pt.class */
final /* synthetic */ class C2152pt implements zzt {

    /* renamed from: a */
    private final zzbpm f10344a;

    private C2152pt(zzbpm zzbpmVar) {
        this.f10344a = zzbpmVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static zzt m4483a(zzbpm zzbpmVar) {
        return new C2152pt(zzbpmVar);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzt
    public final void zztv() {
        this.f10344a.onAdLeftApplication();
    }
}
