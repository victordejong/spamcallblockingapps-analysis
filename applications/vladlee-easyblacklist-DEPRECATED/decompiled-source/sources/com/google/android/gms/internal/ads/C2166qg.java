package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.qg */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/qg.class */
public final class C2166qg implements zzaon {

    /* renamed from: a */
    private final /* synthetic */ zzcbp f10360a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2166qg(zzcbp zzcbpVar) {
        this.f10360a = zzcbpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaon
    public final void zza(int i, int i2, int i3, int i4) {
        zzbpm zzbpmVar;
        zzbpmVar = this.f10360a.f12889b;
        zzbpmVar.onAdOpened();
    }

    @Override // com.google.android.gms.internal.ads.zzaon
    public final void zzti() {
        zzbpm zzbpmVar;
        zzbpmVar = this.f10360a.f12889b;
        zzbpmVar.onAdClosed();
    }

    @Override // com.google.android.gms.internal.ads.zzaon
    public final void zztj() {
        zzbqw zzbqwVar;
        zzbqwVar = this.f10360a.f12900m;
        zzbqwVar.zzagj();
    }
}
