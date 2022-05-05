package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzq;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbci.class */
public final class zzbci extends zzavo {

    /* renamed from: a */
    final zzbaz f11707a;

    /* renamed from: b */
    final zzbcn f11708b;

    /* renamed from: c */
    private final String f11709c;

    /* renamed from: d */
    private final String[] f11710d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbci(zzbaz zzbazVar, zzbcn zzbcnVar, String str, String[] strArr) {
        this.f11707a = zzbazVar;
        this.f11708b = zzbcnVar;
        this.f11709c = str;
        this.f11710d = strArr;
        zzq.zzlm().zza(this);
    }

    @Override // com.google.android.gms.internal.ads.zzavo
    public final void zztu() {
        try {
            this.f11708b.zze(this.f11709c, this.f11710d);
            zzawb.zzdsr.post(new RunnableC1944ia(this));
        } catch (Throwable th) {
            zzawb.zzdsr.post(new RunnableC1944ia(this));
            throw th;
        }
    }
}
