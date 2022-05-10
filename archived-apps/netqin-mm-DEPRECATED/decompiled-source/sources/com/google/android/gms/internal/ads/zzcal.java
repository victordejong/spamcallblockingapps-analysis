package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzaia;
import com.google.android.gms.internal.ads.zzauv;
import java.util.Set;
import p131c.p161d.p170b.p224d.p252g.p253a.C3915pg;
import p131c.p161d.p170b.p224d.p252g.p253a.C3952qg;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcal.class */
public final class zzcal extends zzbyr<zzaia> implements zzaia {
    public zzcal(Set<zzcab<zzaia>> set) {
        super(set);
    }

    @Override // com.google.android.gms.internal.ads.zzaia
    /* renamed from: a */
    public final void mo14156a(final zzauv zzauvVar) {
        m14941a(new zzbyt(zzauvVar) { // from class: c.d.b.d.g.a.og

            /* renamed from: a */
            public final zzauv f14338a;

            {
                this.f14338a = zzauvVar;
            }

            @Override // com.google.android.gms.internal.ads.zzbyt
            /* renamed from: a */
            public final void mo14897a(Object obj) {
                ((zzaia) obj).mo14156a(this.f14338a);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzaia
    /* renamed from: o */
    public final void mo14155o() {
        m14941a(C3952qg.f14818a);
    }

    @Override // com.google.android.gms.internal.ads.zzaia
    /* renamed from: p */
    public final void mo14154p() {
        synchronized (this) {
            m14941a(C3915pg.f14542a);
        }
    }
}
