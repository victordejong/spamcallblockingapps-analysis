package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbzj.class */
public final class zzbzj implements zzeoy<zzbys> {

    /* renamed from: a */
    public final zzbys f25637a;

    public zzbzj(zzbys zzbysVar) {
        this.f25637a = zzbysVar;
    }

    /* renamed from: a */
    public static zzbzj m14880a(zzbys zzbysVar) {
        return new zzbzj(zzbysVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzbys zzbysVar = this.f25637a;
        if (zzbysVar != null) {
            zzepe.m12187a(zzbysVar, "Cannot return null from a non-@Nullable @Provides method");
            return zzbysVar;
        }
        throw null;
    }
}
