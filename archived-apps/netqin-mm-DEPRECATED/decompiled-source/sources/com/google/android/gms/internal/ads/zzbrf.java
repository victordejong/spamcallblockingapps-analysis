package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbrf.class */
public final class zzbrf implements zzeoy<zzdnw> {

    /* renamed from: a */
    public final zzbre f25398a;

    public zzbrf(zzbre zzbreVar) {
        this.f25398a = zzbreVar;
    }

    /* renamed from: a */
    public static zzbrf m15138a(zzbre zzbreVar) {
        return new zzbrf(zzbreVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzdnw c = this.f25398a.m15140c();
        zzepe.m12187a(c, "Cannot return null from a non-@Nullable @Provides method");
        return c;
    }
}
