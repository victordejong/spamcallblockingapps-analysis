package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdiv.class */
public final class zzdiv implements zzeoy<zzdit> {

    /* renamed from: a */
    public final zzeph<zzams> f27393a;

    /* renamed from: b */
    public final zzeph<ScheduledExecutorService> f27394b;

    /* renamed from: c */
    public final zzeph<Boolean> f27395c;

    /* renamed from: d */
    public final zzeph<ApplicationInfo> f27396d;

    public zzdiv(zzeph<zzams> zzephVar, zzeph<ScheduledExecutorService> zzephVar2, zzeph<Boolean> zzephVar3, zzeph<ApplicationInfo> zzephVar4) {
        this.f27393a = zzephVar;
        this.f27394b = zzephVar2;
        this.f27395c = zzephVar3;
        this.f27396d = zzephVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzdit(this.f27393a.get(), this.f27394b.get(), this.f27395c.get().booleanValue(), this.f27396d.get());
    }
}
