package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbfv.class */
public final class zzbfv extends zzbfl {
    public zzbfv(zzbdu zzbduVar) {
        super(zzbduVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbfl
    /* renamed from: a */
    public final boolean mo15643a(String str) {
        zzbdu zzbduVar = this.f24934c.get();
        if (zzbduVar != null) {
            zzbduVar.mo15579a(mo15641b(str), this);
        }
        zzbbq.m15852d("VideoStreamNoopCache is doing nothing.");
        m15662a(str, mo15641b(str), "noop", "Noop cache is a noop.");
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzbfl
    /* renamed from: b */
    public final void mo15642b() {
    }
}
