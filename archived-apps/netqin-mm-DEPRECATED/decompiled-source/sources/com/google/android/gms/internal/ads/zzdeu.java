package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdeu;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdeu.class */
public final class zzdeu implements zzdgx<zzdev> {

    /* renamed from: a */
    public final zzdzb f27217a;

    /* renamed from: b */
    public final zzdnt f27218b;

    public zzdeu(zzdzb zzdzbVar, zzdnt zzdntVar) {
        this.f27217a = zzdzbVar;
        this.f27218b = zzdntVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdgx
    /* renamed from: a */
    public final zzdzc<zzdev> mo13576a() {
        return this.f27217a.mo12977a(new Callable(this) { // from class: c.d.b.d.g.a.qt

            /* renamed from: a */
            public final zzdeu f14841a;

            {
                this.f14841a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f14841a.m13631b();
            }
        });
    }

    /* renamed from: b */
    public final /* synthetic */ zzdev m13631b() throws Exception {
        return new zzdev(this.f27218b);
    }
}
