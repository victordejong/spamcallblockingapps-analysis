package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aaj.class */
final class aaj extends zzbrl<zzdcx> implements zzdcp<zzdco> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public aaj(Set<zzbsu<zzdcx>> set) {
        super(set);
    }

    @Override // com.google.android.gms.internal.ads.zzdcp
    public final void zza(final zzdca<zzdco, ?> zzdcaVar) {
        m3995a(new zzbrn(zzdcaVar) { // from class: com.google.android.gms.internal.ads.aal

            /* renamed from: a */
            private final zzdca f7135a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f7135a = zzdcaVar;
            }

            @Override // com.google.android.gms.internal.ads.zzbrn
            public final void zzp(Object obj) {
                zzdca zzdcaVar2 = this.f7135a;
                ((zzdcx) obj).zza((zzdco) zzdcaVar2.zzaqd(), zzdcaVar2.zzaqe());
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzdcp
    public final void zza(final zzdca<zzdco, ?> zzdcaVar, final Throwable th) {
        m3995a(new zzbrn(zzdcaVar, th) { // from class: com.google.android.gms.internal.ads.aan

            /* renamed from: a */
            private final zzdca f7137a;

            /* renamed from: b */
            private final Throwable f7138b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f7137a = zzdcaVar;
                this.f7138b = th;
            }

            @Override // com.google.android.gms.internal.ads.zzbrn
            public final void zzp(Object obj) {
                zzdca zzdcaVar2 = this.f7137a;
                ((zzdcx) obj).zza((zzdco) zzdcaVar2.zzaqd(), zzdcaVar2.zzaqe(), this.f7138b);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzdcp
    public final void zzb(final zzdca<zzdco, ?> zzdcaVar) {
        m3995a(new zzbrn(zzdcaVar) { // from class: com.google.android.gms.internal.ads.aak

            /* renamed from: a */
            private final zzdca f7134a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f7134a = zzdcaVar;
            }

            @Override // com.google.android.gms.internal.ads.zzbrn
            public final void zzp(Object obj) {
                zzdca zzdcaVar2 = this.f7134a;
                ((zzdcx) obj).zzb((zzdco) zzdcaVar2.zzaqd(), zzdcaVar2.zzaqe());
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzdcp
    public final void zzc(final zzdca<zzdco, ?> zzdcaVar) {
        m3995a(new zzbrn(zzdcaVar) { // from class: com.google.android.gms.internal.ads.aam

            /* renamed from: a */
            private final zzdca f7136a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f7136a = zzdcaVar;
            }

            @Override // com.google.android.gms.internal.ads.zzbrn
            public final void zzp(Object obj) {
                zzdca zzdcaVar2 = this.f7136a;
                ((zzdcx) obj).zzc((zzdco) zzdcaVar2.zzaqd(), zzdcaVar2.zzaqe());
            }
        });
    }
}
