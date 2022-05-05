package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbnz.class */
public final class zzbnz implements zzdxg<zzded<zzczl, zzawt>> {

    /* renamed from: a */
    private final zzdxp<Context> f12217a;

    /* renamed from: b */
    private final zzdxp<zzazb> f12218b;

    /* renamed from: c */
    private final zzdxp<zzczu> f12219c;

    public zzbnz(zzdxp<Context> zzdxpVar, zzdxp<zzazb> zzdxpVar2, zzdxp<zzczu> zzdxpVar3) {
        this.f12217a = zzdxpVar;
        this.f12218b = zzdxpVar2;
        this.f12219c = zzdxpVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        final Context context = this.f12217a.get();
        final zzazb zzazbVar = this.f12218b.get();
        final zzczu zzczuVar = this.f12219c.get();
        return (zzded) zzdxm.zza(new zzded(context, zzazbVar, zzczuVar) { // from class: com.google.android.gms.internal.ads.lp

            /* renamed from: a */
            private final Context f10187a;

            /* renamed from: b */
            private final zzazb f10188b;

            /* renamed from: c */
            private final zzczu f10189c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10187a = context;
                this.f10188b = zzazbVar;
                this.f10189c = zzczuVar;
            }

            @Override // com.google.android.gms.internal.ads.zzded
            public final Object apply(Object obj) {
                Context context2 = this.f10187a;
                zzazb zzazbVar2 = this.f10188b;
                zzczu zzczuVar2 = this.f10189c;
                zzczl zzczlVar = (zzczl) obj;
                zzawt zzawtVar = new zzawt(context2);
                zzawtVar.zzeo(zzczlVar.zzdkp);
                zzawtVar.zzep(zzczlVar.zzglt.toString());
                zzawtVar.zzx(zzazbVar2.zzbma);
                zzawtVar.setAdUnitId(zzczuVar2.zzgmm);
                return zzawtVar;
            }
        }, "Cannot return null from a non-@Nullable @Provides method");
    }
}
