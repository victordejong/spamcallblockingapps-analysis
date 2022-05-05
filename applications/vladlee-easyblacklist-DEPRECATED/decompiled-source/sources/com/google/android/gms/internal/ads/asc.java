package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/asc.class */
public final class asc extends zzvl {

    /* renamed from: a */
    final /* synthetic */ zzxz f8252a;

    private asc(zzxz zzxzVar) {
        this.f8252a = zzxzVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ asc(zzxz zzxzVar, byte b) {
        this(zzxzVar);
    }

    @Override // com.google.android.gms.internal.ads.zzvm
    public final String getMediationAdapterClassName() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzvm
    public final boolean isLoading() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzvm
    public final void zza(zzug zzugVar, int i) {
        zzayu.zzex("This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date.");
        zzayk.zzyu.post(new asd(this));
    }

    @Override // com.google.android.gms.internal.ads.zzvm
    public final void zzb(zzug zzugVar) {
        zza(zzugVar, 1);
    }

    @Override // com.google.android.gms.internal.ads.zzvm
    public final String zzka() {
        return null;
    }
}
