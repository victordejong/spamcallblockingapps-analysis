package com.google.android.gms.internal.ads;

import com.google.android.gms.common.internal.Preconditions;
import p131c.p161d.p170b.p224d.p252g.p253a.C3340a2;
import p131c.p161d.p170b.p224d.p252g.p253a.C3377b2;
import p131c.p161d.p170b.p224d.p252g.p253a.C3418c2;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzalm.class */
public final class zzalm extends zzbcn<zzaki> {

    /* renamed from: d */
    public zzbad<zzaki> f24170d;

    /* renamed from: c */
    public final Object f24169c = new Object();

    /* renamed from: e */
    public boolean f24171e = false;

    /* renamed from: f */
    public int f24172f = 0;

    public zzalm(zzbad<zzaki> zzbadVar) {
        this.f24170d = zzbadVar;
    }

    /* renamed from: c */
    public final zzali m16677c() {
        zzali zzaliVar = new zzali(this);
        synchronized (this.f24169c) {
            m15828a(new C3340a2(this, zzaliVar), new C3418c2(this, zzaliVar));
            Preconditions.m17280b(this.f24172f >= 0);
            this.f24172f++;
        }
        return zzaliVar;
    }

    /* renamed from: d */
    public final void m16676d() {
        synchronized (this.f24169c) {
            Preconditions.m17280b(this.f24172f > 0);
            zzayp.m16153g("Releasing 1 reference for JS Engine");
            this.f24172f--;
            m16674f();
        }
    }

    /* renamed from: e */
    public final void m16675e() {
        synchronized (this.f24169c) {
            Preconditions.m17280b(this.f24172f >= 0);
            zzayp.m16153g("Releasing root reference. JS Engine will be destroyed once other references are released.");
            this.f24171e = true;
            m16674f();
        }
    }

    /* renamed from: f */
    public final void m16674f() {
        synchronized (this.f24169c) {
            Preconditions.m17280b(this.f24172f >= 0);
            if (!this.f24171e || this.f24172f != 0) {
                zzayp.m16153g("There are still references to the engine. Not destroying.");
            } else {
                zzayp.m16153g("No reference is left (including root). Cleaning up engine.");
                m15828a(new C3377b2(this), new zzbcl());
            }
        }
    }
}
