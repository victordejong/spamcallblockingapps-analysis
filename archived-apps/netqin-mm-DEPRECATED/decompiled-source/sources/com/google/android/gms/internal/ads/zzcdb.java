package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzua;
import p131c.p161d.p170b.p224d.p252g.p253a.C3545fh;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcdb.class */
public final class zzcdb implements zzeoy<zzua.zza.EnumC10505zza> {
    /* renamed from: a */
    public static zzcdb m14788a() {
        zzcdb zzcdbVar;
        zzcdbVar = C3545fh.f12969a;
        return zzcdbVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzua.zza.EnumC10505zza zzaVar = zzua.zza.EnumC10505zza.AD_LOADER;
        zzepe.m12187a(zzaVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzaVar;
    }
}
