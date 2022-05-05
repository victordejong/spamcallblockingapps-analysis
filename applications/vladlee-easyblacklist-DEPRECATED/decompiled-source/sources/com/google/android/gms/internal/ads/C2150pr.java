package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.pr */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/pr.class */
public final class C2150pr implements zzdgt<zzbdi> {

    /* renamed from: a */
    private final /* synthetic */ String f10337a;

    /* renamed from: b */
    private final /* synthetic */ zzafn f10338b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2150pr(String str, zzafn zzafnVar) {
        this.f10337a = str;
        this.f10338b = zzafnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdgt
    public final /* synthetic */ void onSuccess(zzbdi zzbdiVar) {
        zzbdiVar.zzb(this.f10337a, this.f10338b);
    }

    @Override // com.google.android.gms.internal.ads.zzdgt
    public final void zzb(Throwable th) {
    }
}
