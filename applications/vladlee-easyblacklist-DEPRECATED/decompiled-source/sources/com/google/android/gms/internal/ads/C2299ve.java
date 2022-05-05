package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.ve */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ve.class */
public final class C2299ve implements zzcoz<zzbmd> {

    /* renamed from: a */
    private final /* synthetic */ zzcot f10615a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2299ve(zzcot zzcotVar) {
        this.f10615a = zzcotVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcoz
    public final /* synthetic */ void onSuccess(zzbmd zzbmdVar) {
        zzbmd zzbmdVar2 = zzbmdVar;
        synchronized (this.f10615a) {
            this.f10615a.f13486d = false;
            this.f10615a.f13485c = zzbmdVar2.zzags();
            zzbmdVar2.zzagf();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcoz
    public final void zzamx() {
        synchronized (this.f10615a) {
            this.f10615a.f13486d = false;
        }
    }
}
