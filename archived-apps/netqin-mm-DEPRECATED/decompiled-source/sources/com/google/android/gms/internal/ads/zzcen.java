package com.google.android.gms.internal.ads;

import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcen.class */
public final class zzcen implements zzeoy<zzcel> {

    /* renamed from: a */
    public final zzeph<zzdnv> f25873a;

    /* renamed from: b */
    public final zzeph<JSONObject> f25874b;

    public zzcen(zzeph<zzdnv> zzephVar, zzeph<JSONObject> zzephVar2) {
        this.f25873a = zzephVar;
        this.f25874b = zzephVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzcel(this.f25873a.get(), this.f25874b.get());
    }
}
