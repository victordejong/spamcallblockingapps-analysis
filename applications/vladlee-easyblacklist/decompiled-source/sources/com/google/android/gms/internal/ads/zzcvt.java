package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcvt.class */
public final class zzcvt implements zzdxg<zzcvr> {

    /* renamed from: a */
    private final zzdxp<zzakp> f13969a;

    /* renamed from: b */
    private final zzdxp<ScheduledExecutorService> f13970b;

    /* renamed from: c */
    private final zzdxp<Boolean> f13971c;

    /* renamed from: d */
    private final zzdxp<ApplicationInfo> f13972d;

    public zzcvt(zzdxp<zzakp> zzdxpVar, zzdxp<ScheduledExecutorService> zzdxpVar2, zzdxp<Boolean> zzdxpVar3, zzdxp<ApplicationInfo> zzdxpVar4) {
        this.f13969a = zzdxpVar;
        this.f13970b = zzdxpVar2;
        this.f13971c = zzdxpVar3;
        this.f13972d = zzdxpVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzcvr(this.f13969a.get(), this.f13970b.get(), this.f13971c.get().booleanValue(), this.f13972d.get());
    }
}
