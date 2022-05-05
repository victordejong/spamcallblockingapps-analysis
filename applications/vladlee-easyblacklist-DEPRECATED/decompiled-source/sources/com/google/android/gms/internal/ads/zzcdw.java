package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcdw.class */
public final class zzcdw implements zzdxg<zzcdu> {

    /* renamed from: a */
    private final zzdxp<zzcds> f12998a;

    /* renamed from: b */
    private final zzdxp<Set<C2175qp>> f12999b;

    /* renamed from: c */
    private final zzdxp<Clock> f13000c;

    private zzcdw(zzdxp<zzcds> zzdxpVar, zzdxp<Set<C2175qp>> zzdxpVar2, zzdxp<Clock> zzdxpVar3) {
        this.f12998a = zzdxpVar;
        this.f12999b = zzdxpVar2;
        this.f13000c = zzdxpVar3;
    }

    public static zzcdw zzl(zzdxp<zzcds> zzdxpVar, zzdxp<Set<C2175qp>> zzdxpVar2, zzdxp<Clock> zzdxpVar3) {
        return new zzcdw(zzdxpVar, zzdxpVar2, zzdxpVar3);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzcdu(this.f12998a.get(), this.f12999b.get(), this.f13000c.get());
    }
}
