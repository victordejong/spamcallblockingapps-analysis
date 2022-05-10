package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zztu;
import p131c.p161d.p170b.p224d.p252g.p253a.C4033sk;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzclk.class */
public final class zzclk implements zzeoy<zzcmg> {
    /* renamed from: a */
    public static zzclk m14085a() {
        zzclk zzclkVar;
        zzclkVar = C4033sk.f15312a;
        return zzclkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzcmg zzcmgVar = new zzcmg(zztu.zza.zzb.REQUEST_WILL_UPDATE_SIGNALS, zztu.zza.zzb.REQUEST_DID_UPDATE_SIGNALS, zztu.zza.zzb.REQUEST_FAILED_TO_UPDATE_SIGNALS);
        zzepe.m12187a(zzcmgVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzcmgVar;
    }
}
