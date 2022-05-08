package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbte.class */
public final class zzbte extends zzbrl<zzafx> implements zzafx {
    public zzbte(Set<zzbsu<zzafx>> set) {
        super(set);
    }

    @Override // com.google.android.gms.internal.ads.zzafx
    public final void zza(final zzasd zzasdVar) {
        m3995a(new zzbrn(zzasdVar) { // from class: com.google.android.gms.internal.ads.nf

            /* renamed from: a */
            private final zzasd f10234a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10234a = zzasdVar;
            }

            @Override // com.google.android.gms.internal.ads.zzbrn
            public final void zzp(Object obj) {
                ((zzafx) obj).zza(this.f10234a);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzafx
    public final void zzrs() {
        synchronized (this) {
            m3995a(C2082nd.f10232a);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzafx
    public final void zzrt() {
        m3995a(C2083ne.f10233a);
    }
}
