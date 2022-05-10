package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.internal.ads.zzdfh;
import java.util.Set;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdfh.class */
public final class zzdfh implements zzdgx<zzdfe> {

    /* renamed from: a */
    public final zzdzb f27231a;

    /* renamed from: b */
    public final Context f27232b;

    /* renamed from: c */
    public final Set<String> f27233c;

    public zzdfh(zzdzb zzdzbVar, Context context, Set<String> set) {
        this.f27231a = zzdzbVar;
        this.f27232b = context;
        this.f27233c = set;
    }

    @Override // com.google.android.gms.internal.ads.zzdgx
    /* renamed from: a */
    public final zzdzc<zzdfe> mo13576a() {
        return this.f27231a.mo12977a(new Callable(this) { // from class: c.d.b.d.g.a.wt

            /* renamed from: a */
            public final zzdfh f15974a;

            {
                this.f15974a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f15974a.m13625b();
            }
        });
    }

    /* renamed from: b */
    public final /* synthetic */ zzdfe m13625b() throws Exception {
        boolean a;
        if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23897u2)).booleanValue()) {
            a = zzdfe.m13627a((Set<String>) this.f27233c);
            if (a) {
                return new zzdfe(zzp.m17954r().m16418a(this.f27232b));
            }
        }
        return new zzdfe(null);
    }
}
