package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbut.class */
public final class zzbut implements zzeoy<zzbuo> {

    /* renamed from: a */
    public final zzeph<Set<zzcab<zzbuv>>> f25565a;

    public zzbut(zzeph<Set<zzcab<zzbuv>>> zzephVar) {
        this.f25565a = zzephVar;
    }

    /* renamed from: a */
    public static zzbut m15033a(zzeph<Set<zzcab<zzbuv>>> zzephVar) {
        return new zzbut(zzephVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzbuo(this.f25565a.get());
    }
}
