package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcsh.class */
public final class zzcsh implements zzdxg<zzcsf> {

    /* renamed from: a */
    private final zzdxp<zzdhd> f13812a;

    private zzcsh(zzdxp<zzdhd> zzdxpVar) {
        this.f13812a = zzdxpVar;
    }

    public static zzcsh zzak(zzdxp<zzdhd> zzdxpVar) {
        return new zzcsh(zzdxpVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzcsf(this.f13812a.get());
    }
}
