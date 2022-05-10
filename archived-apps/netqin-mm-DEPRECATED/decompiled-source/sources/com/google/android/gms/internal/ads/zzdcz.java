package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.internal.ads.zzbcg;
import com.google.android.gms.internal.ads.zzdcw;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import p131c.p161d.p170b.p224d.p252g.p253a.C4301zs;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdcz.class */
public final class zzdcz implements zzdgx<zzdcw> {

    /* renamed from: a */
    public final ScheduledExecutorService f27148a;

    /* renamed from: b */
    public final Executor f27149b;

    public zzdcz(Context context, ScheduledExecutorService scheduledExecutorService, Executor executor) {
        this.f27148a = scheduledExecutorService;
        this.f27149b = executor;
    }

    @Override // com.google.android.gms.internal.ads.zzdgx
    /* renamed from: a */
    public final zzdzc<zzdcw> mo13576a() {
        if (!((Boolean) zzwm.m11166e().m16921a(zzabb.f23860n3)).booleanValue()) {
            return zzdyq.m12988a((Object) null);
        }
        final zzbcg zzbcgVar = new zzbcg();
        try {
            new zzdvq(zzbcgVar) { // from class: c.d.b.d.g.a.xs

                /* renamed from: a */
                public final zzbcg f16065a;

                {
                    this.f16065a = zzbcgVar;
                }

                @Override // com.google.android.gms.internal.ads.zzdvq
                /* renamed from: a */
                public final void mo13104a(boolean z) {
                    this.f16065a.m15835a((zzbcg) false);
                }
            }.mo13104a(false);
        } catch (Throwable th) {
            zzbbq.m15856b("ArCoreApk is not ready.");
            zzbcgVar.m15835a((zzbcg) false);
        }
        return zzdyq.m12990a(zzdyq.m12993a(zzdyq.m12994a(zzbcgVar, 200L, TimeUnit.MILLISECONDS, this.f27148a), new zzdvu(this) { // from class: c.d.b.d.g.a.at
            @Override // com.google.android.gms.internal.ads.zzdvu
            public final Object apply(Object obj) {
                return new zzdcw(false, false, ((Boolean) obj).booleanValue());
            }
        }, this.f27149b), Throwable.class, C4301zs.f16466a, this.f27149b);
    }
}
