package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.ads.vi */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/vi.class */
final class C2303vi implements zzdgt<zzcps> {

    /* renamed from: a */
    private final /* synthetic */ zzaun f10622a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2303vi(zzaun zzaunVar) {
        this.f10622a = zzaunVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdgt
    public final /* synthetic */ void onSuccess(zzcps zzcpsVar) {
        zzcps zzcpsVar2 = zzcpsVar;
        try {
            this.f10622a.zzk(zzcpsVar2.zzgeg, zzcpsVar2.zzgeh);
        } catch (RemoteException e) {
            zzayu.zzc("", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdgt
    public final void zzb(Throwable th) {
        try {
            this.f10622a.onError("Internal error.");
        } catch (RemoteException e) {
            zzayu.zzc("", e);
        }
    }
}
