package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbjl.class */
public final class zzbjl implements zzeoy<zzbbx> {

    /* renamed from: a */
    public final zzbja f25056a;

    public zzbjl(zzbja zzbjaVar) {
        this.f25056a = zzbjaVar;
    }

    /* renamed from: a */
    public static zzbbx m15417a(zzbja zzbjaVar) {
        zzbbx c = zzbjaVar.m15426c();
        zzepe.m12187a(c, "Cannot return null from a non-@Nullable @Provides method");
        return c;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return m15417a(this.f25056a);
    }
}
