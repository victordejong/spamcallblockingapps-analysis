package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Executor;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbjk.class */
public final class zzbjk implements zzdxg<Set<zzbsu<zzbpe>>> {

    /* renamed from: a */
    private final zzdxp<zzbjd> f11979a;

    /* renamed from: b */
    private final zzdxp<Executor> f11980b;

    /* renamed from: c */
    private final zzdxp<JSONObject> f11981c;

    private zzbjk(zzdxp<zzbjd> zzdxpVar, zzdxp<Executor> zzdxpVar2, zzdxp<JSONObject> zzdxpVar3) {
        this.f11979a = zzdxpVar;
        this.f11980b = zzdxpVar2;
        this.f11981c = zzdxpVar3;
    }

    public static zzbjk zzb(zzdxp<zzbjd> zzdxpVar, zzdxp<Executor> zzdxpVar2, zzdxp<JSONObject> zzdxpVar3) {
        return new zzbjk(zzdxpVar, zzdxpVar2, zzdxpVar3);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (Set) zzdxm.zza(this.f11981c.get() == null ? Collections.emptySet() : Collections.singleton(new zzbsu(this.f11979a.get(), this.f11980b.get())), "Cannot return null from a non-@Nullable @Provides method");
    }
}
