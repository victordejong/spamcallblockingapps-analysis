package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aah.class */
public final class aah implements zzdgt<O> {

    /* renamed from: a */
    private final /* synthetic */ zzdca f7130a;

    /* renamed from: b */
    private final /* synthetic */ zzdcj f7131b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aah(zzdcj zzdcjVar, zzdca zzdcaVar) {
        this.f7131b = zzdcjVar;
        this.f7130a = zzdcaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdgt
    public final void onSuccess(O o) {
        zzdcp zzdcpVar;
        zzdcpVar = this.f7131b.f14182a.f14176d;
        zzdcpVar.zzc(this.f7130a);
    }

    @Override // com.google.android.gms.internal.ads.zzdgt
    public final void zzb(Throwable th) {
        zzdcp zzdcpVar;
        zzdcpVar = this.f7131b.f14182a.f14176d;
        zzdcpVar.zza(this.f7130a, th);
    }
}
