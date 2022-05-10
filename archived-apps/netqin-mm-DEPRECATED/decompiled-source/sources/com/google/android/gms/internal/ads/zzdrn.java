package com.google.android.gms.internal.ads;

import java.util.concurrent.ThreadFactory;
import p131c.p161d.p170b.p224d.p252g.p253a.C3600gz;
import p131c.p161d.p170b.p224d.p252g.p253a.ThreadFactoryC4269yy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdrn.class */
public final class zzdrn implements zzeoy<ThreadFactory> {
    /* renamed from: a */
    public static zzdrn m13278a() {
        zzdrn zzdrnVar;
        zzdrnVar = C3600gz.f13229a;
        return zzdrnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        ThreadFactoryC4269yy yyVar = new ThreadFactoryC4269yy();
        zzepe.m12187a(yyVar, "Cannot return null from a non-@Nullable @Provides method");
        return yyVar;
    }
}
