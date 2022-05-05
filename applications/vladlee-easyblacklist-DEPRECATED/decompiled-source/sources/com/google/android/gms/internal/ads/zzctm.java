package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzctm.class */
public final class zzctm implements zzdxg<zzctj> {

    /* renamed from: a */
    private final zzdxp<zzdhd> f13856a;

    /* renamed from: b */
    private final zzdxp<ScheduledExecutorService> f13857b;

    /* renamed from: c */
    private final zzdxp<String> f13858c;

    /* renamed from: d */
    private final zzdxp<zzcob> f13859d;

    /* renamed from: e */
    private final zzdxp<Context> f13860e;

    /* renamed from: f */
    private final zzdxp<zzczu> f13861f;

    /* renamed from: g */
    private final zzdxp<zzcnz> f13862g;

    private zzctm(zzdxp<zzdhd> zzdxpVar, zzdxp<ScheduledExecutorService> zzdxpVar2, zzdxp<String> zzdxpVar3, zzdxp<zzcob> zzdxpVar4, zzdxp<Context> zzdxpVar5, zzdxp<zzczu> zzdxpVar6, zzdxp<zzcnz> zzdxpVar7) {
        this.f13856a = zzdxpVar;
        this.f13857b = zzdxpVar2;
        this.f13858c = zzdxpVar3;
        this.f13859d = zzdxpVar4;
        this.f13860e = zzdxpVar5;
        this.f13861f = zzdxpVar6;
        this.f13862g = zzdxpVar7;
    }

    public static zzctm zza(zzdxp<zzdhd> zzdxpVar, zzdxp<ScheduledExecutorService> zzdxpVar2, zzdxp<String> zzdxpVar3, zzdxp<zzcob> zzdxpVar4, zzdxp<Context> zzdxpVar5, zzdxp<zzczu> zzdxpVar6, zzdxp<zzcnz> zzdxpVar7) {
        return new zzctm(zzdxpVar, zzdxpVar2, zzdxpVar3, zzdxpVar4, zzdxpVar5, zzdxpVar6, zzdxpVar7);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzctj(this.f13856a.get(), this.f13857b.get(), this.f13858c.get(), this.f13859d.get(), this.f13860e.get(), this.f13861f.get(), this.f13862g.get());
    }
}
