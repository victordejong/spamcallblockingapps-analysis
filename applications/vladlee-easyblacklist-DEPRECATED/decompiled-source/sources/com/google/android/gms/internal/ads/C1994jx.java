package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.jx */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/jx.class */
final class C1994jx implements zzbjz {

    /* renamed from: a */
    private zzbrm f9095a;

    /* renamed from: b */
    private zzbod f9096b;

    /* renamed from: c */
    private zzczt f9097c;

    /* renamed from: d */
    private zzcxw f9098d;

    /* renamed from: e */
    private final /* synthetic */ zzbgr f9099e;

    private C1994jx(zzbgr zzbgrVar) {
        this.f9099e = zzbgrVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ C1994jx(zzbgr zzbgrVar, byte b) {
        this(zzbgrVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbjz
    @Deprecated
    public final /* synthetic */ zzbjz zza(zzbkf zzbkfVar) {
        zzdxm.checkNotNull(zzbkfVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzboe
    public final /* synthetic */ zzboe<zzbka> zza(zzcxw zzcxwVar) {
        this.f9098d = zzcxwVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzboe
    public final /* synthetic */ zzboe<zzbka> zza(zzczt zzcztVar) {
        this.f9097c = zzcztVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzboe
    public final /* synthetic */ zzbka zzadg() {
        zzdxm.zza(this.f9095a, zzbrm.class);
        zzdxm.zza(this.f9096b, zzbod.class);
        return new C1998ka(this.f9099e, new zzbnb(), new zzdai(), new zzbny(), new zzcee(), this.f9095a, this.f9096b, new zzdaq(), this.f9097c, this.f9098d, (byte) 0);
    }

    @Override // com.google.android.gms.internal.ads.zzbjz
    public final /* synthetic */ zzbjz zzb(zzbod zzbodVar) {
        this.f9096b = (zzbod) zzdxm.checkNotNull(zzbodVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzbjz
    public final /* synthetic */ zzbjz zzb(zzbrm zzbrmVar) {
        this.f9095a = (zzbrm) zzdxm.checkNotNull(zzbrmVar);
        return this;
    }
}
