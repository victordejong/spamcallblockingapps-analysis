package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbsv.class */
public final class zzbsv implements zzdxg<zzbst> {

    /* renamed from: a */
    private final zzdxp<Context> f12370a;

    /* renamed from: b */
    private final zzdxp<Set<zzbsu<zzps>>> f12371b;

    /* renamed from: c */
    private final zzdxp<zzczl> f12372c;

    private zzbsv(zzdxp<Context> zzdxpVar, zzdxp<Set<zzbsu<zzps>>> zzdxpVar2, zzdxp<zzczl> zzdxpVar3) {
        this.f12370a = zzdxpVar;
        this.f12371b = zzdxpVar2;
        this.f12372c = zzdxpVar3;
    }

    public static zzbsv zzh(zzdxp<Context> zzdxpVar, zzdxp<Set<zzbsu<zzps>>> zzdxpVar2, zzdxp<zzczl> zzdxpVar3) {
        return new zzbsv(zzdxpVar, zzdxpVar2, zzdxpVar3);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzbst(this.f12370a.get(), this.f12371b.get(), this.f12372c.get());
    }
}
