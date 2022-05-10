package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import p131c.p161d.p170b.p224d.p252g.p253a.C3373az;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdrc.class */
public final class zzdrc implements zzeoy<Executor> {
    /* renamed from: a */
    public static zzdrc m13286a() {
        zzdrc zzdrcVar;
        zzdrcVar = C3373az.f12318a;
        return zzdrcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzdzb zzdzbVar = zzbbz.f24768e;
        zzepe.m12187a(zzdzbVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzdzbVar;
    }
}
