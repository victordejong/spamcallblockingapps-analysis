package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcng.class */
public final class zzcng implements zzcio<zzbkk> {

    /* renamed from: a */
    private final Context f13397a;

    /* renamed from: b */
    private final zzblg f13398b;

    /* renamed from: c */
    private final zzaak f13399c;

    /* renamed from: d */
    private final zzdhd f13400d;

    /* renamed from: e */
    private final zzdcr f13401e;

    public zzcng(Context context, zzblg zzblgVar, zzdcr zzdcrVar, zzdhd zzdhdVar, zzaak zzaakVar) {
        this.f13397a = context;
        this.f13398b = zzblgVar;
        this.f13401e = zzdcrVar;
        this.f13400d = zzdhdVar;
        this.f13399c = zzaakVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ void m3729a(zzaad zzaadVar) {
        this.f13399c.zza(zzaadVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcio
    public final boolean zza(zzczt zzcztVar, zzczl zzczlVar) {
        return (this.f13399c == null || zzczlVar.zzglo == null || zzczlVar.zzglo.zzdht == null) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.zzcio
    public final zzdhe<zzbkk> zzb(zzczt zzcztVar, zzczl zzczlVar) {
        zzbkj zza = this.f13398b.zza(new zzbmt(zzcztVar, zzczlVar, null), new C2286us(new View(this.f13397a), C2285ur.f10594a, zzczlVar.zzglq.get(0)));
        final zzaad zzaadVar = new zzaad(zza.zzaej(), zzczlVar.zzglo.zzdhr, zzczlVar.zzglo.zzdht);
        return this.f13401e.zzu(zzdco.CUSTOM_RENDER_SYN).zza(new zzdcb(this, zzaadVar) { // from class: com.google.android.gms.internal.ads.ut

            /* renamed from: a */
            private final zzcng f10595a;

            /* renamed from: b */
            private final zzaad f10596b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10595a = this;
                this.f10596b = zzaadVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdcb
            public final void run() {
                this.f10595a.m3729a(this.f10596b);
            }
        }, this.f13400d).zzw(zzdco.CUSTOM_RENDER_ACK).zzc(zzdgs.zzaj(zza.zzaeh())).zzaqg();
    }
}
