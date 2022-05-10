package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbnn.class */
public final class zzbnn {

    /* renamed from: a */
    public final zzcmu f25257a;

    /* renamed from: b */
    public final zzdog f25258b;

    public zzbnn(zzcmu zzcmuVar, zzdog zzdogVar) {
        this.f25257a = zzcmuVar;
        this.f25258b = zzdogVar;
    }

    /* renamed from: a */
    public final void m15274a(long j) {
        zzcmt a = this.f25257a.m14042a();
        a.m14047a(this.f25258b.f27634b.f27630b);
        a.m14046a("action", "ad_closed");
        a.m14046a("show_time", String.valueOf(j));
        a.m14046a("ad_format", "appopen");
        a.m14045b();
    }
}
