package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcnl.class */
public final class zzcnl<AdT> implements zzcio<AdT> {

    /* renamed from: a */
    private final zzaak f13408a;

    /* renamed from: b */
    private final zzdhd f13409b;

    /* renamed from: c */
    private final zzdcr f13410c;

    /* renamed from: d */
    private final zzcnq<AdT> f13411d;

    public zzcnl(zzdcr zzdcrVar, zzdhd zzdhdVar, zzaak zzaakVar, zzcnq<AdT> zzcnqVar) {
        this.f13410c = zzdcrVar;
        this.f13409b = zzdhdVar;
        this.f13408a = zzaakVar;
        this.f13411d = zzcnqVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ void m3728a(zzaad zzaadVar) {
        this.f13408a.zza(zzaadVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcio
    public final boolean zza(zzczt zzcztVar, zzczl zzczlVar) {
        return (this.f13408a == null || zzczlVar.zzglo == null || zzczlVar.zzglo.zzdht == null) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.zzcio
    public final zzdhe<AdT> zzb(zzczt zzcztVar, zzczl zzczlVar) {
        zzazl zzazlVar = new zzazl();
        zzcnt zzcntVar = new zzcnt();
        zzcntVar.zza(new C2288uu(this, zzazlVar, zzcztVar, zzczlVar, zzcntVar));
        final zzaad zzaadVar = new zzaad(zzcntVar, zzczlVar.zzglo.zzdhr, zzczlVar.zzglo.zzdht);
        return this.f13410c.zzu(zzdco.CUSTOM_RENDER_SYN).zza(new zzdcb(this, zzaadVar) { // from class: com.google.android.gms.internal.ads.uv

            /* renamed from: a */
            private final zzcnl f10602a;

            /* renamed from: b */
            private final zzaad f10603b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10602a = this;
                this.f10603b = zzaadVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdcb
            public final void run() {
                this.f10602a.m3728a(this.f10603b);
            }
        }, this.f13409b).zzw(zzdco.CUSTOM_RENDER_ACK).zzc(zzazlVar).zzaqg();
    }
}
