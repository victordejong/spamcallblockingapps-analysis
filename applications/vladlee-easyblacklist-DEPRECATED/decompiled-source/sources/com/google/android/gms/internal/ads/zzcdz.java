package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcdz.class */
public final class zzcdz implements zzdxg<zzcea> {

    /* renamed from: a */
    private final zzdxp<String> f13004a;

    /* renamed from: b */
    private final zzdxp<zzcdv> f13005b;

    public zzcdz(zzdxp<String> zzdxpVar, zzdxp<zzcdv> zzdxpVar2) {
        this.f13004a = zzdxpVar;
        this.f13005b = zzdxpVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzcea(this.f13004a.get(), this.f13005b.get());
    }
}
