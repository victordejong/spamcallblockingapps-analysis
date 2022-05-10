package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbwg;
import com.google.android.gms.internal.ads.zzbwl;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbwg.class */
public final class zzbwg extends zzbyr<zzbwl> implements zzbuz, zzbwb {

    /* renamed from: b */
    public final zzdnv f25574b;

    /* renamed from: c */
    public AtomicBoolean f25575c = new AtomicBoolean();

    public zzbwg(Set<zzcab<zzbwl>> set, zzdnv zzdnvVar) {
        super(set);
        this.f25574b = zzdnvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbuz
    /* renamed from: M */
    public final void mo13728M() {
        int i = this.f25574b.f27582b;
        if (i == 2 || i == 5 || i == 4) {
            m14983q();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbwb
    /* renamed from: T0 */
    public final void mo13535T0() {
        if (this.f25574b.f27582b == 1) {
            m14983q();
        }
    }

    /* renamed from: a */
    public final /* synthetic */ void m14984a(zzbwl zzbwlVar) throws Exception {
        zzbwlVar.mo13500a(this.f25574b.f27581a0);
    }

    /* renamed from: q */
    public final void m14983q() {
        zzvp zzvpVar;
        if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23737R3)).booleanValue() && this.f25575c.compareAndSet(false, true) && (zzvpVar = this.f25574b.f27581a0) != null && zzvpVar.f29049a == 3) {
            m14941a(new zzbyt(this) { // from class: c.d.b.d.g.a.ne

                /* renamed from: a */
                public final zzbwg f14237a;

                {
                    this.f14237a = this;
                }

                @Override // com.google.android.gms.internal.ads.zzbyt
                /* renamed from: a */
                public final void mo14897a(Object obj) {
                    this.f14237a.m14984a((zzbwl) obj);
                }
            });
        }
    }
}
