package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzboz.class */
public final class zzboz implements zzeoy<zzbql> {

    /* renamed from: a */
    public final zzbot f25306a;

    public zzboz(zzbot zzbotVar) {
        this.f25306a = zzbotVar;
    }

    /* renamed from: a */
    public static zzbql m15220a(zzbot zzbotVar) {
        zzbql c = zzbotVar.m15225c();
        zzepe.m12187a(c, "Cannot return null from a non-@Nullable @Provides method");
        return c;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return m15220a(this.f25306a);
    }
}
