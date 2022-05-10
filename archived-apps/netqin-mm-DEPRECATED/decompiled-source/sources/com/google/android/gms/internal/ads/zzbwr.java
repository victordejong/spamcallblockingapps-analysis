package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzatc;
import com.google.android.gms.internal.ads.zzbws;
import com.google.android.gms.internal.ads.zzdog;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbwr.class */
public final class zzbwr extends zzbyr<zzbws> implements zzbws {
    public zzbwr(Set<zzcab<zzbws>> set) {
        super(set);
    }

    @Override // com.google.android.gms.internal.ads.zzbws
    /* renamed from: a */
    public final void mo14002a(final zzatc zzatcVar) {
        m14941a(new zzbyt(zzatcVar) { // from class: c.d.b.d.g.a.re

            /* renamed from: a */
            public final zzatc f15001a;

            {
                this.f15001a = zzatcVar;
            }

            @Override // com.google.android.gms.internal.ads.zzbyt
            /* renamed from: a */
            public final void mo14897a(Object obj) {
                ((zzbws) obj).mo14002a(this.f15001a);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbws
    /* renamed from: a */
    public final void mo14001a(final zzdog zzdogVar) {
        m14941a(new zzbyt(zzdogVar) { // from class: c.d.b.d.g.a.se

            /* renamed from: a */
            public final zzdog f15300a;

            {
                this.f15300a = zzdogVar;
            }

            @Override // com.google.android.gms.internal.ads.zzbyt
            /* renamed from: a */
            public final void mo14897a(Object obj) {
                ((zzbws) obj).mo14001a(this.f15300a);
            }
        });
    }
}
