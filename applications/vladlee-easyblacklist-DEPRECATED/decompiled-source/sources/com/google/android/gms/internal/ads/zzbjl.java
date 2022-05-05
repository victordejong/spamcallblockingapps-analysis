package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Executor;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbjl.class */
public final class zzbjl implements zzdxg<Set<zzbsu<zzbph>>> {

    /* renamed from: a */
    private final zzdxp<zzbjd> f11982a;

    /* renamed from: b */
    private final zzdxp<Executor> f11983b;

    /* renamed from: c */
    private final zzdxp<JSONObject> f11984c;

    private zzbjl(zzdxp<zzbjd> zzdxpVar, zzdxp<Executor> zzdxpVar2, zzdxp<JSONObject> zzdxpVar3) {
        this.f11982a = zzdxpVar;
        this.f11983b = zzdxpVar2;
        this.f11984c = zzdxpVar3;
    }

    public static zzbjl zzc(zzdxp<zzbjd> zzdxpVar, zzdxp<Executor> zzdxpVar2, zzdxp<JSONObject> zzdxpVar3) {
        return new zzbjl(zzdxpVar, zzdxpVar2, zzdxpVar3);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (Set) zzdxm.zza(this.f11984c.get() == null ? Collections.emptySet() : Collections.singleton(new zzbsu(this.f11982a.get(), this.f11983b.get())), "Cannot return null from a non-@Nullable @Provides method");
    }
}
