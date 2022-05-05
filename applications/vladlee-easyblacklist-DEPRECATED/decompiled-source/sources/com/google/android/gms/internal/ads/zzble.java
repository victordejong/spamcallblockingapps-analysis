package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzble.class */
public final class zzble implements zzdxg<zzbsu<zzbrb>> {

    /* renamed from: a */
    private final zzbkn f12084a;

    /* renamed from: b */
    private final zzdxp<zzbqp> f12085b;

    public zzble(zzbkn zzbknVar, zzdxp<zzbqp> zzdxpVar) {
        this.f12084a = zzbknVar;
        this.f12085b = zzdxpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        final zzbqp zzbqpVar = this.f12085b.get();
        return (zzbsu) zzdxm.zza(new zzbsu(new zzbrb(zzbqpVar) { // from class: com.google.android.gms.internal.ads.lb

            /* renamed from: a */
            private final zzbqp f10165a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10165a = zzbqpVar;
            }

            @Override // com.google.android.gms.internal.ads.zzbrb
            public final void zzagj() {
                this.f10165a.zzahj();
            }
        }, zzazd.zzdwj), "Cannot return null from a non-@Nullable @Provides method");
    }
}
