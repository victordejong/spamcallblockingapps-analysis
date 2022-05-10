package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.concurrent.Executor;
import p131c.p161d.p170b.p224d.p252g.p253a.C4115us;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdcr.class */
public final class zzdcr implements zzdgx<zzdgu<Bundle>> {

    /* renamed from: a */
    public final Executor f27130a;

    /* renamed from: b */
    public final zzayb f27131b;

    public zzdcr(Executor executor, zzayb zzaybVar) {
        this.f27130a = executor;
        this.f27131b = zzaybVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdgx
    /* renamed from: a */
    public final zzdzc<zzdgu<Bundle>> mo13576a() {
        return ((Boolean) zzwm.m11166e().m16921a(zzabb.f23822h1)).booleanValue() ? zzdyq.m12988a((Object) null) : zzdyq.m12993a(this.f27131b.m16175j(), C4115us.f15669a, this.f27130a);
    }
}
