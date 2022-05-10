package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbpa.class */
public final class zzbpa implements zzeoy<zzdnu> {

    /* renamed from: a */
    public final zzbot f25307a;

    public zzbpa(zzbot zzbotVar) {
        this.f25307a = zzbotVar;
    }

    /* renamed from: a */
    public static zzdnu m15219a(zzbot zzbotVar) {
        zzdnu d = zzbotVar.m15224d();
        zzepe.m12187a(d, "Cannot return null from a non-@Nullable @Provides method");
        return d;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return m15219a(this.f25307a);
    }
}
