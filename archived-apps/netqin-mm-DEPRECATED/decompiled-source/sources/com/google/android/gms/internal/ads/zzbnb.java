package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Executor;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbnb.class */
public final class zzbnb implements zzeoy<Set<zzcab<zzqu>>> {

    /* renamed from: a */
    public final zzeph<zzbmu> f25225a;

    /* renamed from: b */
    public final zzeph<Executor> f25226b;

    /* renamed from: c */
    public final zzeph<JSONObject> f25227c;

    public zzbnb(zzeph<zzbmu> zzephVar, zzeph<Executor> zzephVar2, zzeph<JSONObject> zzephVar3) {
        this.f25225a = zzephVar;
        this.f25226b = zzephVar2;
        this.f25227c = zzephVar3;
    }

    /* renamed from: a */
    public static zzbnb m15297a(zzeph<zzbmu> zzephVar, zzeph<Executor> zzephVar2, zzeph<JSONObject> zzephVar3) {
        return new zzbnb(zzephVar, zzephVar2, zzephVar3);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        Set emptySet = this.f25227c.get() == null ? Collections.emptySet() : Collections.singleton(new zzcab(this.f25225a.get(), this.f25226b.get()));
        zzepe.m12187a(emptySet, "Cannot return null from a non-@Nullable @Provides method");
        return emptySet;
    }
}
