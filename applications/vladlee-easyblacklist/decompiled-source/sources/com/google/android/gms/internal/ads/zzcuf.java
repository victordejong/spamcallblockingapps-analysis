package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcuf.class */
public final class zzcuf<T> implements zzdxg<zzcua<T>> {

    /* renamed from: a */
    private final zzdxp<Executor> f13905a;

    /* renamed from: b */
    private final zzdxp<Set<zzcub<? extends zzcty<T>>>> f13906b;

    private zzcuf(zzdxp<Executor> zzdxpVar, zzdxp<Set<zzcub<? extends zzcty<T>>>> zzdxpVar2) {
        this.f13905a = zzdxpVar;
        this.f13906b = zzdxpVar2;
    }

    public static <T> zzcuf<T> zzau(zzdxp<Executor> zzdxpVar, zzdxp<Set<zzcub<? extends zzcty<T>>>> zzdxpVar2) {
        return new zzcuf<>(zzdxpVar, zzdxpVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzcua(this.f13905a.get(), this.f13906b.get());
    }
}
