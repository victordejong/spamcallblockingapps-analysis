package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.tw */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/tw.class */
final class BinderC2263tw extends zzanb {

    /* renamed from: a */
    private zzcip<zzani, zzcjy> f10537a;

    /* renamed from: b */
    private final /* synthetic */ zzclb f10538b;

    private BinderC2263tw(zzclb zzclbVar, zzcip<zzani, zzcjy> zzcipVar) {
        this.f10538b = zzclbVar;
        this.f10537a = zzcipVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ BinderC2263tw(zzclb zzclbVar, zzcip zzcipVar, byte b) {
        this(zzclbVar, zzcipVar);
    }

    @Override // com.google.android.gms.internal.ads.zzanc
    public final void zza(zzalr zzalrVar) {
        this.f10538b.f13288c = zzalrVar;
        this.f10537a.zzfyf.onAdLoaded();
    }

    @Override // com.google.android.gms.internal.ads.zzanc
    public final void zzdl(String str) {
        this.f10537a.zzfyf.onAdFailedToLoad(0);
    }
}
