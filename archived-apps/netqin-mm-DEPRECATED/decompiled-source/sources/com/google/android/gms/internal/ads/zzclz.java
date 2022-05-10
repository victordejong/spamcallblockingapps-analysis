package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zztu;
import p131c.p161d.p170b.p224d.p252g.p253a.C3400bl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzclz.class */
public final class zzclz implements zzeoy<zzcmg> {
    /* renamed from: a */
    public static zzclz m14072a() {
        zzclz zzclzVar;
        zzclzVar = C3400bl.f12485a;
        return zzclzVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzcmg zzcmgVar = new zzcmg(zztu.zza.zzb.REQUEST_WILL_PROCESS_RESPONSE, zztu.zza.zzb.REQUEST_DID_PROCESS_RESPONSE, zztu.zza.zzb.REQUEST_FAILED_TO_PROCESS_RESPONSE);
        zzepe.m12187a(zzcmgVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzcmgVar;
    }
}
