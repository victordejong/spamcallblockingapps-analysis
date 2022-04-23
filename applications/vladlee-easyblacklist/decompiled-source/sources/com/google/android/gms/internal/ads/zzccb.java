package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zza;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzccb.class */
public final class zzccb implements zzdxg<zzcbn> {

    /* renamed from: a */
    private final zzdxp<zzbdr> f12901a;

    /* renamed from: b */
    private final zzdxp<Context> f12902b;

    /* renamed from: c */
    private final zzdxp<zzczu> f12903c;

    /* renamed from: d */
    private final zzdxp<zzdq> f12904d;

    /* renamed from: e */
    private final zzdxp<zzazb> f12905e;

    /* renamed from: f */
    private final zzdxp<zza> f12906f;

    /* renamed from: g */
    private final zzdxp<zzsm> f12907g;

    /* renamed from: h */
    private final zzdxp<zzbqp> f12908h;

    /* renamed from: i */
    private final zzdxp<zzbts> f12909i;

    private zzccb(zzdxp<zzbdr> zzdxpVar, zzdxp<Context> zzdxpVar2, zzdxp<zzczu> zzdxpVar3, zzdxp<zzdq> zzdxpVar4, zzdxp<zzazb> zzdxpVar5, zzdxp<zza> zzdxpVar6, zzdxp<zzsm> zzdxpVar7, zzdxp<zzbqp> zzdxpVar8, zzdxp<zzbts> zzdxpVar9) {
        this.f12901a = zzdxpVar;
        this.f12902b = zzdxpVar2;
        this.f12903c = zzdxpVar3;
        this.f12904d = zzdxpVar4;
        this.f12905e = zzdxpVar5;
        this.f12906f = zzdxpVar6;
        this.f12907g = zzdxpVar7;
        this.f12908h = zzdxpVar8;
        this.f12909i = zzdxpVar9;
    }

    public static zzccb zzb(zzdxp<zzbdr> zzdxpVar, zzdxp<Context> zzdxpVar2, zzdxp<zzczu> zzdxpVar3, zzdxp<zzdq> zzdxpVar4, zzdxp<zzazb> zzdxpVar5, zzdxp<zza> zzdxpVar6, zzdxp<zzsm> zzdxpVar7, zzdxp<zzbqp> zzdxpVar8, zzdxp<zzbts> zzdxpVar9) {
        return new zzccb(zzdxpVar, zzdxpVar2, zzdxpVar3, zzdxpVar4, zzdxpVar5, zzdxpVar6, zzdxpVar7, zzdxpVar8, zzdxpVar9);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzcbn(this.f12901a.get(), this.f12902b.get(), this.f12903c.get(), this.f12904d.get(), this.f12905e.get(), this.f12906f.get(), this.f12907g.get(), this.f12908h.get(), this.f12909i.get());
    }
}
