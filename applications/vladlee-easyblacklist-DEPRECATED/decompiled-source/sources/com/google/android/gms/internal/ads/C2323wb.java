package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import com.google.android.gms.internal.ads.zzcty;
/* renamed from: com.google.android.gms.internal.ads.wb */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/wb.class */
final class C2323wb<S extends zzcty<?>> {

    /* renamed from: a */
    public final zzdhe<S> f10642a;

    /* renamed from: b */
    private final long f10643b;

    /* renamed from: c */
    private final Clock f10644c;

    public C2323wb(zzdhe<S> zzdheVar, long j, Clock clock) {
        this.f10642a = zzdheVar;
        this.f10644c = clock;
        this.f10643b = clock.elapsedRealtime() + j;
    }

    /* renamed from: a */
    public final boolean m4462a() {
        return this.f10643b < this.f10644c.elapsedRealtime();
    }
}
