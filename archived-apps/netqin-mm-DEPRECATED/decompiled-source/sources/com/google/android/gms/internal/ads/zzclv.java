package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zztu;
import p131c.p161d.p170b.p224d.p252g.p253a.C4293zk;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzclv.class */
public final class zzclv implements zzeoy<zzcmg> {
    /* renamed from: a */
    public static zzclv m14074a() {
        zzclv zzclvVar;
        zzclvVar = C4293zk.f16459a;
        return zzclvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzcmg zzcmgVar = new zzcmg(zztu.zza.zzb.REQUEST_WILL_UPDATE_GMS_SIGNALS, zztu.zza.zzb.REQUEST_DID_UPDATE_GMS_SIGNALS, zztu.zza.zzb.REQUEST_FAILED_TO_UPDATE_GMS_SIGNALS);
        zzepe.m12187a(zzcmgVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzcmgVar;
    }
}
