package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.ll */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ll.class */
public final class C2036ll implements zzdgt<zzbmj> {

    /* renamed from: a */
    private final /* synthetic */ zzdgt f10181a;

    /* renamed from: b */
    private final /* synthetic */ zzbmo f10182b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2036ll(zzbmo zzbmoVar, zzdgt zzdgtVar) {
        this.f10182b = zzbmoVar;
        this.f10181a = zzdgtVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdgt
    public final /* synthetic */ void onSuccess(zzbmj zzbmjVar) {
        zzbmo.m4014a(this.f10182b, zzbmjVar.zzffu, this.f10181a);
    }

    @Override // com.google.android.gms.internal.ads.zzdgt
    public final void zzb(Throwable th) {
        this.f10181a.zzb(th);
        zzazd.zzdwi.execute(new Runnable(this.f10182b) { // from class: com.google.android.gms.internal.ads.lm

            /* renamed from: a */
            private final zzbmo f10183a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10183a = r4;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f10183a.m4016a();
            }
        });
    }
}
