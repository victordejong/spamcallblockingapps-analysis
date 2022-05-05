package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzakh.class */
public final class zzakh {

    /* renamed from: a */
    private zzais f10972a;

    /* renamed from: b */
    private zzdhe<zzajq> f10973b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzakh(zzais zzaisVar) {
        this.f10972a = zzaisVar;
    }

    /* renamed from: a */
    private final void m4373a() {
        if (this.f10973b == null) {
            final zzazl zzazlVar = new zzazl();
            this.f10973b = zzazlVar;
            this.f10972a.zzb(null).zza(new zzazp(zzazlVar) { // from class: com.google.android.gms.internal.ads.bp

                /* renamed from: a */
                private final zzazl f8304a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f8304a = zzazlVar;
                }

                @Override // com.google.android.gms.internal.ads.zzazp
                public final void zzh(Object obj) {
                    this.f8304a.set((zzajq) obj);
                }
            }, new zzazn(zzazlVar) { // from class: com.google.android.gms.internal.ads.bo

                /* renamed from: a */
                private final zzazl f8303a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f8303a = zzazlVar;
                }

                @Override // com.google.android.gms.internal.ads.zzazn
                public final void run() {
                    this.f8303a.setException(new zzajr("Cannot get Javascript Engine"));
                }
            });
        }
    }

    public final <I, O> zzako<I, O> zzb(String str, zzajv<I> zzajvVar, zzajw<O> zzajwVar) {
        m4373a();
        return new zzako<>(this.f10973b, str, zzajvVar, zzajwVar);
    }

    public final void zzc(final String str, final zzafn<? super zzajq> zzafnVar) {
        m4373a();
        this.f10973b = zzdgs.zzb(this.f10973b, new zzdgf(str, zzafnVar) { // from class: com.google.android.gms.internal.ads.br

            /* renamed from: a */
            private final String f8307a;

            /* renamed from: b */
            private final zzafn f8308b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f8307a = str;
                this.f8308b = zzafnVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdgf
            public final zzdhe zzf(Object obj) {
                zzajq zzajqVar = (zzajq) obj;
                zzajqVar.zza(this.f8307a, this.f8308b);
                return zzdgs.zzaj(zzajqVar);
            }
        }, zzazd.zzdwj);
    }

    public final void zzd(final String str, final zzafn<? super zzajq> zzafnVar) {
        this.f10973b = zzdgs.zzb(this.f10973b, new zzded(str, zzafnVar) { // from class: com.google.android.gms.internal.ads.bq

            /* renamed from: a */
            private final String f8305a;

            /* renamed from: b */
            private final zzafn f8306b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f8305a = str;
                this.f8306b = zzafnVar;
            }

            @Override // com.google.android.gms.internal.ads.zzded
            public final Object apply(Object obj) {
                zzajq zzajqVar = (zzajq) obj;
                zzajqVar.zzb(this.f8305a, this.f8306b);
                return zzajqVar;
            }
        }, zzazd.zzdwj);
    }
}
