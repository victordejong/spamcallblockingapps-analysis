package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcgi.class */
public final class zzcgi implements zzeoy<zzceq> {

    /* renamed from: a */
    public final zzeph<zzcgd> f25986a;

    public zzcgi(zzcgf zzcgfVar, zzeph<zzcgd> zzephVar) {
        this.f25986a = zzephVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzcgd zzcgdVar = this.f25986a.get();
        zzepe.m12187a(zzcgdVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzcgdVar;
    }
}
