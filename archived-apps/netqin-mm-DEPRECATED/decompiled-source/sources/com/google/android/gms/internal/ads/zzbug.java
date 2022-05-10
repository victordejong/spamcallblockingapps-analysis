package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbui;
import com.google.android.gms.internal.ads.zzva;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbug.class */
public final class zzbug extends zzbyr<zzbui> implements zzbui {
    public zzbug(Set<zzcab<zzbui>> set) {
        super(set);
    }

    @Override // com.google.android.gms.internal.ads.zzbui
    /* renamed from: a */
    public final void mo13335a(final zzva zzvaVar) {
        m14941a(new zzbyt(zzvaVar) { // from class: c.d.b.d.g.a.od

            /* renamed from: a */
            public final zzva f14329a;

            {
                this.f14329a = zzvaVar;
            }

            @Override // com.google.android.gms.internal.ads.zzbyt
            /* renamed from: a */
            public final void mo14897a(Object obj) {
                ((zzbui) obj).mo13335a(this.f14329a);
            }
        });
    }
}
