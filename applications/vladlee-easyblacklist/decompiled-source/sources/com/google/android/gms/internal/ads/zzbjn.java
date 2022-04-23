package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzo;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Executor;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbjn.class */
public final class zzbjn implements zzdxg<Set<zzbsu<zzo>>> {

    /* renamed from: a */
    private final zzdxp<zzbjd> f11986a;

    /* renamed from: b */
    private final zzdxp<Executor> f11987b;

    /* renamed from: c */
    private final zzdxp<JSONObject> f11988c;

    private zzbjn(zzdxp<zzbjd> zzdxpVar, zzdxp<Executor> zzdxpVar2, zzdxp<JSONObject> zzdxpVar3) {
        this.f11986a = zzdxpVar;
        this.f11987b = zzdxpVar2;
        this.f11988c = zzdxpVar3;
    }

    public static zzbjn zzd(zzdxp<zzbjd> zzdxpVar, zzdxp<Executor> zzdxpVar2, zzdxp<JSONObject> zzdxpVar3) {
        return new zzbjn(zzdxpVar, zzdxpVar2, zzdxpVar3);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (Set) zzdxm.zza(this.f11988c.get() == null ? Collections.emptySet() : Collections.singleton(new zzbsu(this.f11986a.get(), this.f11987b.get())), "Cannot return null from a non-@Nullable @Provides method");
    }
}
