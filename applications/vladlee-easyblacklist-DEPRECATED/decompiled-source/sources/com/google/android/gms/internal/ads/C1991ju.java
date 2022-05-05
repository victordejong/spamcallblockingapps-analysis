package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.ju */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ju.class */
final class C1991ju implements zzbvl {

    /* renamed from: a */
    private zzbrm f8964a;

    /* renamed from: b */
    private zzbod f8965b;

    /* renamed from: c */
    private zzbvi f8966c;

    /* renamed from: d */
    private zzczt f8967d;

    /* renamed from: e */
    private zzcxw f8968e;

    /* renamed from: f */
    private final /* synthetic */ zzbgr f8969f;

    private C1991ju(zzbgr zzbgrVar) {
        this.f8969f = zzbgrVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ C1991ju(zzbgr zzbgrVar, byte b) {
        this(zzbgrVar);
    }

    @Override // com.google.android.gms.internal.ads.zzboe
    public final /* synthetic */ zzboe<zzbvm> zza(zzcxw zzcxwVar) {
        this.f8968e = zzcxwVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzboe
    public final /* synthetic */ zzboe<zzbvm> zza(zzczt zzcztVar) {
        this.f8967d = zzcztVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzbvl
    public final /* synthetic */ zzbvl zza(zzbod zzbodVar) {
        this.f8965b = (zzbod) zzdxm.checkNotNull(zzbodVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzbvl
    public final /* synthetic */ zzbvl zza(zzbrm zzbrmVar) {
        this.f8964a = (zzbrm) zzdxm.checkNotNull(zzbrmVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzbvl
    public final /* synthetic */ zzbvl zza(zzbvi zzbviVar) {
        this.f8966c = (zzbvi) zzdxm.checkNotNull(zzbviVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzbvl
    /* renamed from: zzadf */
    public final zzbvm zzadg() {
        zzdxm.zza(this.f8964a, zzbrm.class);
        zzdxm.zza(this.f8965b, zzbod.class);
        zzdxm.zza(this.f8966c, zzbvi.class);
        return new C1990jt(this.f8969f, this.f8966c, new zzbnb(), new zzdai(), new zzbny(), new zzcee(), this.f8964a, this.f8965b, new zzdaq(), this.f8967d, this.f8968e, (byte) 0);
    }
}
