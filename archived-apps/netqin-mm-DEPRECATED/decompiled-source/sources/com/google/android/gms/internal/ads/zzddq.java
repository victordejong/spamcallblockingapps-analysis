package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzddq;
import java.util.concurrent.Callable;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzddq.class */
public final class zzddq implements zzdgx<zzddr> {

    /* renamed from: a */
    public final zzdzb f27177a;

    /* renamed from: b */
    public final zzckw f27178b;

    /* renamed from: c */
    public final String f27179c;

    /* renamed from: d */
    public final zzdok f27180d;

    public zzddq(zzdzb zzdzbVar, zzckw zzckwVar, zzdok zzdokVar, String str) {
        this.f27177a = zzdzbVar;
        this.f27178b = zzckwVar;
        this.f27180d = zzdokVar;
        this.f27179c = str;
    }

    @Override // com.google.android.gms.internal.ads.zzdgx
    /* renamed from: a */
    public final zzdzc<zzddr> mo13576a() {
        return this.f27177a.mo12977a(new Callable(this) { // from class: c.d.b.d.g.a.ft

            /* renamed from: a */
            public final zzddq f13000a;

            {
                this.f13000a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f13000a.m13640b();
            }
        });
    }

    /* renamed from: b */
    public final /* synthetic */ zzddr m13640b() throws Exception {
        JSONObject a;
        if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23710M1)).booleanValue() && (a = this.f27178b.m14099a(this.f27180d.f27644f, this.f27179c)) != null) {
            return new zzddr(a.toString());
        }
        return null;
    }
}
