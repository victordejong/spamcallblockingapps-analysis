package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcyp.class */
public final class zzcyp implements zzeoy<zzcyn> {

    /* renamed from: a */
    public final zzcyn f26769a;

    public zzcyp(zzcyn zzcynVar) {
        this.f26769a = zzcynVar;
    }

    /* renamed from: a */
    public static zzcyp m13767a(zzcyn zzcynVar) {
        return new zzcyp(zzcynVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzcyn zzcynVar = this.f26769a;
        if (zzcynVar != null) {
            zzepe.m12187a(zzcynVar, "Cannot return null from a non-@Nullable @Provides method");
            return zzcynVar;
        }
        throw null;
    }
}
