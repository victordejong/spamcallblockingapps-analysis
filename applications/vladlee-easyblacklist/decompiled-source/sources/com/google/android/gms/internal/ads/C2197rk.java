package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.rk */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/rk.class */
final class C2197rk implements zzdgt<zzczt> {

    /* renamed from: a */
    private final /* synthetic */ zzcfv f10422a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2197rk(zzcfv zzcfvVar) {
        this.f10422a = zzcfvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdgt
    public final /* synthetic */ void onSuccess(zzczt zzcztVar) {
        zzbqs zzbqsVar;
        zzbqsVar = this.f10422a.f13099a;
        zzbqsVar.zzb(zzcztVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdgt
    public final void zzb(Throwable th) {
    }
}
