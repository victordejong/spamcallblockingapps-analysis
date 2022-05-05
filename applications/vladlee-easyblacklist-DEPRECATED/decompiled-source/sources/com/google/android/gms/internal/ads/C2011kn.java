package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.kn */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/kn.class */
final class C2011kn implements zzcbh {

    /* renamed from: a */
    private zzbrm f9984a;

    /* renamed from: b */
    private zzbod f9985b;

    /* renamed from: c */
    private zzczt f9986c;

    /* renamed from: d */
    private zzcxw f9987d;

    /* renamed from: e */
    private final /* synthetic */ zzbgr f9988e;

    private C2011kn(zzbgr zzbgrVar) {
        this.f9988e = zzbgrVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ C2011kn(zzbgr zzbgrVar, byte b) {
        this(zzbgrVar);
    }

    @Override // com.google.android.gms.internal.ads.zzboe
    public final /* synthetic */ zzboe<zzcbi> zza(zzcxw zzcxwVar) {
        this.f9987d = zzcxwVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzboe
    public final /* synthetic */ zzboe<zzcbi> zza(zzczt zzcztVar) {
        this.f9986c = zzcztVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzcbh
    /* renamed from: zzaes */
    public final zzcbi zzadg() {
        zzdxm.zza(this.f9984a, zzbrm.class);
        zzdxm.zza(this.f9985b, zzbod.class);
        return new C2010km(this.f9988e, new zzbnb(), new zzdai(), new zzbny(), new zzcee(), this.f9984a, this.f9985b, new zzdaq(), this.f9986c, this.f9987d, (byte) 0);
    }

    @Override // com.google.android.gms.internal.ads.zzcbh
    public final /* synthetic */ zzcbh zze(zzbod zzbodVar) {
        this.f9985b = (zzbod) zzdxm.checkNotNull(zzbodVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzcbh
    public final /* synthetic */ zzcbh zze(zzbrm zzbrmVar) {
        this.f9984a = (zzbrm) zzdxm.checkNotNull(zzbrmVar);
        return this;
    }
}
