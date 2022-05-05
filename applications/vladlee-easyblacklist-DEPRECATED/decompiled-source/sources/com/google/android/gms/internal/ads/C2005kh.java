package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.kh */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/kh.class */
final class C2005kh implements zzbus {

    /* renamed from: a */
    private zzbrm f9588a;

    /* renamed from: b */
    private zzbod f9589b;

    /* renamed from: c */
    private zzcns f9590c;

    /* renamed from: d */
    private zzczt f9591d;

    /* renamed from: e */
    private zzcxw f9592e;

    /* renamed from: f */
    private final /* synthetic */ zzbgr f9593f;

    private C2005kh(zzbgr zzbgrVar) {
        this.f9593f = zzbgrVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ C2005kh(zzbgr zzbgrVar, byte b) {
        this(zzbgrVar);
    }

    @Override // com.google.android.gms.internal.ads.zzboe
    public final /* synthetic */ zzboe<zzbup> zza(zzcxw zzcxwVar) {
        this.f9592e = zzcxwVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzboe
    public final /* synthetic */ zzboe<zzbup> zza(zzczt zzcztVar) {
        this.f9591d = zzcztVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzbus
    /* renamed from: zzaek */
    public final zzbup zzadg() {
        zzdxm.zza(this.f9588a, zzbrm.class);
        zzdxm.zza(this.f9589b, zzbod.class);
        zzdxm.zza(this.f9590c, zzcns.class);
        return new C2007kj(this.f9593f, new zzbnb(), new zzdai(), new zzbny(), new zzcee(), this.f9588a, this.f9589b, new zzdaq(), this.f9590c, this.f9591d, this.f9592e, (byte) 0);
    }

    @Override // com.google.android.gms.internal.ads.zzbus
    public final /* synthetic */ zzbus zzb(zzcns zzcnsVar) {
        this.f9590c = (zzcns) zzdxm.checkNotNull(zzcnsVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzbus
    public final /* synthetic */ zzbus zzd(zzbod zzbodVar) {
        this.f9589b = (zzbod) zzdxm.checkNotNull(zzbodVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzbus
    public final /* synthetic */ zzbus zzd(zzbrm zzbrmVar) {
        this.f9588a = (zzbrm) zzdxm.checkNotNull(zzbrmVar);
        return this;
    }
}
