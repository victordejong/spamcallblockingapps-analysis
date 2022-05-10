package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Executor;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbnc.class */
public final class zzbnc implements zzeoy<Set<zzcab<zzbuy>>> {

    /* renamed from: a */
    public final zzeph<zzbmu> f25228a;

    /* renamed from: b */
    public final zzeph<Executor> f25229b;

    /* renamed from: c */
    public final zzeph<JSONObject> f25230c;

    public zzbnc(zzeph<zzbmu> zzephVar, zzeph<Executor> zzephVar2, zzeph<JSONObject> zzephVar3) {
        this.f25228a = zzephVar;
        this.f25229b = zzephVar2;
        this.f25230c = zzephVar3;
    }

    /* renamed from: a */
    public static zzbnc m15296a(zzeph<zzbmu> zzephVar, zzeph<Executor> zzephVar2, zzeph<JSONObject> zzephVar3) {
        return new zzbnc(zzephVar, zzephVar2, zzephVar3);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        Set emptySet = this.f25230c.get() == null ? Collections.emptySet() : Collections.singleton(new zzcab(this.f25228a.get(), this.f25229b.get()));
        zzepe.m12187a(emptySet, "Cannot return null from a non-@Nullable @Provides method");
        return emptySet;
    }
}
