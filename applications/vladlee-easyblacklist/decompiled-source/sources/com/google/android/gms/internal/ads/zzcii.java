package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcii.class */
public final class zzcii implements zzdxg<zzcid> {

    /* renamed from: a */
    private final zzdxp<Context> f13179a;

    /* renamed from: b */
    private final zzdxp<zzdhe<Bundle>> f13180b;

    /* renamed from: c */
    private final zzdxp<zzchz> f13181c;

    /* renamed from: d */
    private final zzdxp<zzcht> f13182d;

    private zzcii(zzdxp<Context> zzdxpVar, zzdxp<zzdhe<Bundle>> zzdxpVar2, zzdxp<zzchz> zzdxpVar3, zzdxp<zzcht> zzdxpVar4) {
        this.f13179a = zzdxpVar;
        this.f13180b = zzdxpVar2;
        this.f13181c = zzdxpVar3;
        this.f13182d = zzdxpVar4;
    }

    public static zzcii zzc(zzdxp<Context> zzdxpVar, zzdxp<zzdhe<Bundle>> zzdxpVar2, zzdxp<zzchz> zzdxpVar3, zzdxp<zzcht> zzdxpVar4) {
        return new zzcii(zzdxpVar, zzdxpVar2, zzdxpVar3, zzdxpVar4);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzcid(this.f13179a.get(), this.f13180b.get(), this.f13181c.get(), this.f13182d.get());
    }
}
