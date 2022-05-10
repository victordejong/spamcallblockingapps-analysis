package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.common.util.Clock;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcdw.class */
public final class zzcdw implements zzeoy<zzbnd> {

    /* renamed from: a */
    public final zzeph<zzqo> f25798a;

    /* renamed from: b */
    public final zzeph<Executor> f25799b;

    /* renamed from: c */
    public final zzeph<Context> f25800c;

    /* renamed from: d */
    public final zzeph<Clock> f25801d;

    public zzcdw(zzeph<zzqo> zzephVar, zzeph<Executor> zzephVar2, zzeph<Context> zzephVar3, zzeph<Clock> zzephVar4) {
        this.f25798a = zzephVar;
        this.f25799b = zzephVar2;
        this.f25800c = zzephVar3;
        this.f25801d = zzephVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzqo zzqoVar = this.f25798a.get();
        zzbnd zzbndVar = new zzbnd(this.f25799b.get(), new zzbms(this.f25800c.get(), zzqoVar), this.f25801d.get());
        zzepe.m12187a(zzbndVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzbndVar;
    }
}
