package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbtw.class */
public final class zzbtw implements zzeoy<zzdok> {

    /* renamed from: a */
    public final zzbtp f25540a;

    public zzbtw(zzbtp zzbtpVar) {
        this.f25540a = zzbtpVar;
    }

    /* renamed from: a */
    public static zzbtw m15044a(zzbtp zzbtpVar) {
        return new zzbtw(zzbtpVar);
    }

    /* renamed from: b */
    public static zzdok m15043b(zzbtp zzbtpVar) {
        zzdok b = zzbtpVar.m15070b();
        zzepe.m12187a(b, "Cannot return null from a non-@Nullable @Provides method");
        return b;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return m15043b(this.f25540a);
    }
}
