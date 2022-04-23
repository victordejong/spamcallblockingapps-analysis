package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbmd;
import com.google.android.gms.internal.ads.zzbob;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcxf.class */
public final class zzcxf<R extends zzbob<AdT>, AdT extends zzbmd> implements zzcxt<R, zzdbi<AdT>> {

    /* renamed from: a */
    private R f14024a;

    /* renamed from: b */
    private final Executor f14025b = zzdhg.zzarw();

    @Override // com.google.android.gms.internal.ads.zzcxt
    public final zzdhe<zzdbi<AdT>> zza(zzcxs zzcxsVar, zzcxv<R> zzcxvVar) {
        zzboe<R> zzc = zzcxvVar.zzc(zzcxsVar);
        zzc.zza(new zzcxw(true));
        this.f14024a = zzc.zzadg();
        final zzbmz zzadc = this.f14024a.zzadc();
        final zzdbi zzdbiVar = new zzdbi();
        return ((zzdgn) zzdgs.zzb(zzdgn.zze(zzadc.zzagz()), new zzdgf(this, zzdbiVar, zzadc) { // from class: com.google.android.gms.internal.ads.yj

            /* renamed from: a */
            private final zzcxf f10717a;

            /* renamed from: b */
            private final zzdbi f10718b;

            /* renamed from: c */
            private final zzbmz f10719c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10717a = this;
                this.f10718b = zzdbiVar;
                this.f10719c = zzadc;
            }

            @Override // com.google.android.gms.internal.ads.zzdgf
            public final zzdhe zzf(Object obj) {
                zzdbi zzdbiVar2 = this.f10718b;
                zzbmz zzbmzVar = this.f10719c;
                zzczt zzcztVar = (zzczt) obj;
                zzdbiVar2.zzelt = zzcztVar;
                r9 = false;
                boolean z = false;
                loop0: for (zzczl zzczlVar : zzcztVar.zzgmi.zzgme) {
                    for (String str : zzczlVar.zzgli) {
                        if (!str.contains("FirstPartyRenderer")) {
                            break loop0;
                        }
                        z = true;
                    }
                }
                return !z ? zzdgs.zzaj(null) : zzbmzVar.zza(zzdgs.zzaj(zzcztVar));
            }
        }, this.f14025b)).zza(new zzded(zzdbiVar) { // from class: com.google.android.gms.internal.ads.yk

            /* renamed from: a */
            private final zzdbi f10720a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10720a = zzdbiVar;
            }

            /* JADX WARN: Type inference failed for: r1v1, types: [AdT extends com.google.android.gms.internal.ads.zzbmd, com.google.android.gms.internal.ads.zzbmd] */
            @Override // com.google.android.gms.internal.ads.zzded
            public final Object apply(Object obj) {
                zzdbi zzdbiVar2 = this.f10720a;
                zzdbiVar2.zzgpd = (zzbmd) obj;
                return zzdbiVar2;
            }
        }, this.f14025b);
    }

    @Override // com.google.android.gms.internal.ads.zzcxt
    public final /* synthetic */ Object zzaog() {
        return this.f14024a;
    }
}
