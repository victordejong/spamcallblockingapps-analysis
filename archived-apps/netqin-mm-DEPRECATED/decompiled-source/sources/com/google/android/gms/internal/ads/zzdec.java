package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.internal.ads.zzdec;
import java.util.concurrent.Callable;
import p131c.p161d.p170b.p224d.p252g.p253a.C3817mt;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdec.class */
public final class zzdec implements zzdgx<C3817mt> {

    /* renamed from: a */
    public final Context f27197a;

    /* renamed from: b */
    public final zzdzb f27198b;

    public zzdec(Context context, zzdzb zzdzbVar) {
        this.f27197a = context;
        this.f27198b = zzdzbVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdgx
    /* renamed from: a */
    public final zzdzc<C3817mt> mo13576a() {
        return this.f27198b.mo12977a(new Callable(this) { // from class: c.d.b.d.g.a.lt

            /* renamed from: a */
            public final zzdec f14000a;

            {
                this.f14000a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f14000a.m13638b();
            }
        });
    }

    /* renamed from: b */
    public final /* synthetic */ C3817mt m13638b() throws Exception {
        zzp.m17969c();
        String l = zzayu.m16082l(this.f27197a);
        String str = "";
        if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23800d3)).booleanValue()) {
            str = this.f27197a.getSharedPreferences("mobileads_consent", 0).getString("fc_consent", "");
        }
        zzp.m17969c();
        return new C3817mt(l, str, zzayu.m16081m(this.f27197a));
    }
}
