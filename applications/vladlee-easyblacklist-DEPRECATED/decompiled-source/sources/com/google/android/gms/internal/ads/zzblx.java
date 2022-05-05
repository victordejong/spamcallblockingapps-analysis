package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzblx.class */
public final class zzblx implements zzdxg<zzbly> {

    /* renamed from: a */
    private final zzdxp<zzczl> f12120a;

    /* renamed from: b */
    private final zzdxp<zzbpd> f12121b;

    /* renamed from: c */
    private final zzdxp<zzbqf> f12122c;

    private zzblx(zzdxp<zzczl> zzdxpVar, zzdxp<zzbpd> zzdxpVar2, zzdxp<zzbqf> zzdxpVar3) {
        this.f12120a = zzdxpVar;
        this.f12121b = zzdxpVar2;
        this.f12122c = zzdxpVar3;
    }

    public static zzblx zzf(zzdxp<zzczl> zzdxpVar, zzdxp<zzbpd> zzdxpVar2, zzdxp<zzbqf> zzdxpVar3) {
        return new zzblx(zzdxpVar, zzdxpVar2, zzdxpVar3);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzbly(this.f12120a.get(), this.f12121b.get(), this.f12122c.get());
    }
}
