package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcsu.class */
public final class zzcsu implements zzdxg<zzcss> {

    /* renamed from: a */
    private final zzdxp<zzdhd> f13829a;

    /* renamed from: b */
    private final zzdxp<Context> f13830b;

    /* renamed from: c */
    private final zzdxp<Set<String>> f13831c;

    private zzcsu(zzdxp<zzdhd> zzdxpVar, zzdxp<Context> zzdxpVar2, zzdxp<Set<String>> zzdxpVar3) {
        this.f13829a = zzdxpVar;
        this.f13830b = zzdxpVar2;
        this.f13831c = zzdxpVar3;
    }

    public static zzcsu zzo(zzdxp<zzdhd> zzdxpVar, zzdxp<Context> zzdxpVar2, zzdxp<Set<String>> zzdxpVar3) {
        return new zzcsu(zzdxpVar, zzdxpVar2, zzdxpVar3);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzcss(this.f13829a.get(), this.f13830b.get(), this.f13831c.get());
    }
}
