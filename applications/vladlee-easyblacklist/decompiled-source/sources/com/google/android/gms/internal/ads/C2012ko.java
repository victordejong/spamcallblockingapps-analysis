package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.ko */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ko.class */
final class C2012ko implements zzcpf {

    /* renamed from: a */
    private zzbod f9989a;

    /* renamed from: b */
    private zzcpj f9990b;

    /* renamed from: c */
    private final /* synthetic */ zzbgr f9991c;

    private C2012ko(zzbgr zzbgrVar) {
        this.f9991c = zzbgrVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ C2012ko(zzbgr zzbgrVar, byte b) {
        this(zzbgrVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcpf
    public final /* synthetic */ zzcpf zza(zzcpj zzcpjVar) {
        this.f9990b = (zzcpj) zzdxm.checkNotNull(zzcpjVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzcpf
    public final zzcpg zzaet() {
        zzdxm.zza(this.f9989a, zzbod.class);
        zzdxm.zza(this.f9990b, zzcpj.class);
        zzbgr zzbgrVar = this.f9991c;
        zzcpj zzcpjVar = this.f9990b;
        new zzbnb();
        return new C2014kq(zzbgrVar, zzcpjVar, new zzcee(), this.f9989a, new zzdaq(), (byte) 0);
    }

    @Override // com.google.android.gms.internal.ads.zzcpf
    public final /* synthetic */ zzcpf zzf(zzbod zzbodVar) {
        this.f9989a = (zzbod) zzdxm.checkNotNull(zzbodVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzcpf
    @Deprecated
    public final /* synthetic */ zzcpf zzf(zzbrm zzbrmVar) {
        zzdxm.checkNotNull(zzbrmVar);
        return this;
    }
}
