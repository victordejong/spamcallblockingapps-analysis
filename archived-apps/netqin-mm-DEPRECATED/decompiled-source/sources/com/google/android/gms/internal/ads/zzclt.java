package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zztu;
import p131c.p161d.p170b.p224d.p252g.p253a.C4255yk;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzclt.class */
public final class zzclt implements zzeoy<zzcmg> {
    /* renamed from: a */
    public static zzclt m14076a() {
        zzclt zzcltVar;
        zzcltVar = C4255yk.f16226a;
        return zzcltVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzcmg zzcmgVar = new zzcmg(zztu.zza.zzb.REQUEST_WILL_BUILD_URL, zztu.zza.zzb.REQUEST_DID_BUILD_URL, zztu.zza.zzb.REQUEST_FAILED_TO_BUILD_URL);
        zzepe.m12187a(zzcmgVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzcmgVar;
    }
}
