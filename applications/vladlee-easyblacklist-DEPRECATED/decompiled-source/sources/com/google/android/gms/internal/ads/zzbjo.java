package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Executor;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbjo.class */
public final class zzbjo implements zzdxg<Set<zzbsu<zzps>>> {

    /* renamed from: a */
    private final zzdxp<zzbjd> f11989a;

    /* renamed from: b */
    private final zzdxp<Executor> f11990b;

    /* renamed from: c */
    private final zzdxp<JSONObject> f11991c;

    private zzbjo(zzdxp<zzbjd> zzdxpVar, zzdxp<Executor> zzdxpVar2, zzdxp<JSONObject> zzdxpVar3) {
        this.f11989a = zzdxpVar;
        this.f11990b = zzdxpVar2;
        this.f11991c = zzdxpVar3;
    }

    public static zzbjo zze(zzdxp<zzbjd> zzdxpVar, zzdxp<Executor> zzdxpVar2, zzdxp<JSONObject> zzdxpVar3) {
        return new zzbjo(zzdxpVar, zzdxpVar2, zzdxpVar3);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (Set) zzdxm.zza(this.f11991c.get() == null ? Collections.emptySet() : Collections.singleton(new zzbsu(this.f11989a.get(), this.f11990b.get())), "Cannot return null from a non-@Nullable @Provides method");
    }
}
