package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Executor;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbmx.class */
public final class zzbmx implements zzeoy<Set<zzcab<zzbuz>>> {

    /* renamed from: a */
    public final zzeph<zzbmu> f25214a;

    /* renamed from: b */
    public final zzeph<Executor> f25215b;

    /* renamed from: c */
    public final zzeph<JSONObject> f25216c;

    public zzbmx(zzeph<zzbmu> zzephVar, zzeph<Executor> zzephVar2, zzeph<JSONObject> zzephVar3) {
        this.f25214a = zzephVar;
        this.f25215b = zzephVar2;
        this.f25216c = zzephVar3;
    }

    /* renamed from: a */
    public static zzbmx m15301a(zzeph<zzbmu> zzephVar, zzeph<Executor> zzephVar2, zzeph<JSONObject> zzephVar3) {
        return new zzbmx(zzephVar, zzephVar2, zzephVar3);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        Set emptySet = this.f25216c.get() == null ? Collections.emptySet() : Collections.singleton(new zzcab(this.f25214a.get(), this.f25215b.get()));
        zzepe.m12187a(emptySet, "Cannot return null from a non-@Nullable @Provides method");
        return emptySet;
    }
}
