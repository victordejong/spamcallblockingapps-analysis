package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbpu;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcne.class */
public final class zzcne<AdT, AdapterT, ListenerT extends zzbpu> implements zzdxg<zzcna<AdT, AdapterT, ListenerT>> {

    /* renamed from: a */
    private final zzdxp<zzdcr> f13393a;

    /* renamed from: b */
    private final zzdxp<zzdhd> f13394b;

    /* renamed from: c */
    private final zzdxp<zzcis<AdapterT, ListenerT>> f13395c;

    /* renamed from: d */
    private final zzdxp<zzcir<AdT, AdapterT, ListenerT>> f13396d;

    private zzcne(zzdxp<zzdcr> zzdxpVar, zzdxp<zzdhd> zzdxpVar2, zzdxp<zzcis<AdapterT, ListenerT>> zzdxpVar3, zzdxp<zzcir<AdT, AdapterT, ListenerT>> zzdxpVar4) {
        this.f13393a = zzdxpVar;
        this.f13394b = zzdxpVar2;
        this.f13395c = zzdxpVar3;
        this.f13396d = zzdxpVar4;
    }

    public static <AdT, AdapterT, ListenerT extends zzbpu> zzcne<AdT, AdapterT, ListenerT> zzd(zzdxp<zzdcr> zzdxpVar, zzdxp<zzdhd> zzdxpVar2, zzdxp<zzcis<AdapterT, ListenerT>> zzdxpVar3, zzdxp<zzcir<AdT, AdapterT, ListenerT>> zzdxpVar4) {
        return new zzcne<>(zzdxpVar, zzdxpVar2, zzdxpVar3, zzdxpVar4);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzcna(this.f13393a.get(), this.f13394b.get(), this.f13395c.get(), this.f13396d.get());
    }
}
