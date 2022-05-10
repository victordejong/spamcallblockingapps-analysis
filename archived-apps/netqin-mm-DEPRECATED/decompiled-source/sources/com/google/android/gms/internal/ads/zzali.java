package com.google.android.gms.internal.ads;

import p131c.p161d.p170b.p224d.p252g.p253a.C4199x1;
import p131c.p161d.p170b.p224d.p252g.p253a.C4236y1;
import p131c.p161d.p170b.p224d.p252g.p253a.C4274z1;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzali.class */
public final class zzali extends zzbcn<zzalp> {

    /* renamed from: c */
    public final Object f24166c = new Object();

    /* renamed from: d */
    public final zzalm f24167d;

    /* renamed from: e */
    public boolean f24168e;

    public zzali(zzalm zzalmVar) {
        this.f24167d = zzalmVar;
    }

    /* renamed from: c */
    public final void m16679c() {
        synchronized (this.f24166c) {
            if (!this.f24168e) {
                this.f24168e = true;
                m15828a(new C4199x1(this), new zzbcl());
                m15828a(new C4274z1(this), new C4236y1(this));
            }
        }
    }
}
