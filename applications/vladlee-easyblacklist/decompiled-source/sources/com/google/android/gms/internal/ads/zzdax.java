package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdax.class */
public final class zzdax {

    /* renamed from: a */
    private zzdaw f14134a = null;

    /* renamed from: b */
    private zzdaw f14135b = null;

    /* renamed from: c */
    private zzdaw f14136c = null;

    /* renamed from: d */
    private zzdaw f14137d = null;

    /* renamed from: e */
    private zzdaw f14138e = null;

    /* renamed from: f */
    private zzdaw f14139f = null;

    /* renamed from: g */
    private zzdaw f14140g = null;

    /* renamed from: h */
    private zzdaw f14141h = null;

    public final void onAdClosed() {
        zzdaw zzdawVar = this.f14137d;
        if (zzdawVar != null) {
            zzdawVar.execute();
        }
    }

    public final void zza(zzdaw zzdawVar) {
        this.f14137d = zzdawVar;
    }
}
