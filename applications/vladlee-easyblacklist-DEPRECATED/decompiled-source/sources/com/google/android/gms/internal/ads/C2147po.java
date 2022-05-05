package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.po */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/po.class */
public final class C2147po implements zzdgt<zzbdi> {

    /* renamed from: a */
    private final /* synthetic */ String f10333a;

    /* renamed from: b */
    private final /* synthetic */ zzafn f10334b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2147po(String str, zzafn zzafnVar) {
        this.f10333a = str;
        this.f10334b = zzafnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdgt
    public final /* synthetic */ void onSuccess(zzbdi zzbdiVar) {
        zzbdiVar.zza(this.f10333a, this.f10334b);
    }

    @Override // com.google.android.gms.internal.ads.zzdgt
    public final void zzb(Throwable th) {
    }
}
