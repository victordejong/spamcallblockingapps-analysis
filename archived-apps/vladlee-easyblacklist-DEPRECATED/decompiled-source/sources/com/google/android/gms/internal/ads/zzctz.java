package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzctz.class */
public final class zzctz implements zzdxg<zzctx> {

    /* renamed from: a */
    private final zzdxp<zzcxw> f13888a;

    private zzctz(zzdxp<zzcxw> zzdxpVar) {
        this.f13888a = zzdxpVar;
    }

    public static zzctz zzal(zzdxp<zzcxw> zzdxpVar) {
        return new zzctz(zzdxpVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzctx(this.f13888a.get());
    }
}
