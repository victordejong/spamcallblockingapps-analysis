package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.ln */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ln.class */
public final class C2038ln implements zzdgt<zzbmd> {

    /* renamed from: a */
    private final /* synthetic */ zzdgt f10184a;

    /* renamed from: b */
    private final /* synthetic */ zzbmo f10185b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2038ln(zzbmo zzbmoVar, zzdgt zzdgtVar) {
        this.f10185b = zzbmoVar;
        this.f10184a = zzdgtVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdgt
    public final /* synthetic */ void onSuccess(zzbmd zzbmdVar) {
        zzazd.zzdwi.execute(new Runnable(this.f10185b) { // from class: com.google.android.gms.internal.ads.lm

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
        this.f10184a.onSuccess(zzbmdVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdgt
    public final void zzb(Throwable th) {
        zzazd.zzdwi.execute(new Runnable(this.f10185b) { // from class: com.google.android.gms.internal.ads.lm

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
        this.f10184a.zzb(th);
    }
}
