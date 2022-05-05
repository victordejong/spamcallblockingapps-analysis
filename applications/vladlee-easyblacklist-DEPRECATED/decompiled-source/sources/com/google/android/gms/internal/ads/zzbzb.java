package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zza;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbzb.class */
public final class zzbzb implements zzdxg<zzbyu> {

    /* renamed from: a */
    private final zzdxp<Context> f12749a;

    /* renamed from: b */
    private final zzdxp<zzbyl> f12750b;

    /* renamed from: c */
    private final zzdxp<zzdq> f12751c;

    /* renamed from: d */
    private final zzdxp<zzazb> f12752d;

    /* renamed from: e */
    private final zzdxp<zza> f12753e;

    /* renamed from: f */
    private final zzdxp<zzsm> f12754f;

    /* renamed from: g */
    private final zzdxp<Executor> f12755g;

    /* renamed from: h */
    private final zzdxp<zzczu> f12756h;

    /* renamed from: i */
    private final zzdxp<zzbzh> f12757i;

    /* renamed from: j */
    private final zzdxp<ScheduledExecutorService> f12758j;

    public zzbzb(zzdxp<Context> zzdxpVar, zzdxp<zzbyl> zzdxpVar2, zzdxp<zzdq> zzdxpVar3, zzdxp<zzazb> zzdxpVar4, zzdxp<zza> zzdxpVar5, zzdxp<zzsm> zzdxpVar6, zzdxp<Executor> zzdxpVar7, zzdxp<zzczu> zzdxpVar8, zzdxp<zzbzh> zzdxpVar9, zzdxp<ScheduledExecutorService> zzdxpVar10) {
        this.f12749a = zzdxpVar;
        this.f12750b = zzdxpVar2;
        this.f12751c = zzdxpVar3;
        this.f12752d = zzdxpVar4;
        this.f12753e = zzdxpVar5;
        this.f12754f = zzdxpVar6;
        this.f12755g = zzdxpVar7;
        this.f12756h = zzdxpVar8;
        this.f12757i = zzdxpVar9;
        this.f12758j = zzdxpVar10;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzbyu(this.f12749a.get(), this.f12750b.get(), this.f12751c.get(), this.f12752d.get(), this.f12753e.get(), this.f12754f.get(), this.f12755g.get(), this.f12756h.get(), this.f12757i.get(), this.f12758j.get());
    }
}
