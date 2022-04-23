package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.ge */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ge.class */
final class C1894ge implements zzdgt<T> {

    /* renamed from: a */
    private final /* synthetic */ zzazp f8495a;

    /* renamed from: b */
    private final /* synthetic */ zzazn f8496b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1894ge(zzazp zzazpVar, zzazn zzaznVar) {
        this.f8495a = zzazpVar;
        this.f8496b = zzaznVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdgt
    public final void onSuccess(T t) {
        this.f8495a.zzh(t);
    }

    @Override // com.google.android.gms.internal.ads.zzdgt
    public final void zzb(Throwable th) {
        this.f8496b.run();
    }
}
