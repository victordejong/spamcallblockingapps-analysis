package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzblc.class */
public final class zzblc implements zzeoy<zzams> {

    /* renamed from: a */
    public final zzbky f25123a;

    public zzblc(zzbky zzbkyVar) {
        this.f25123a = zzbkyVar;
    }

    /* renamed from: a */
    public static zzams m15334a(zzbky zzbkyVar) {
        zzams c = zzbkyVar.m15344c();
        zzepe.m12187a(c, "Cannot return null from a non-@Nullable @Provides method");
        return c;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return m15334a(this.f25123a);
    }
}
