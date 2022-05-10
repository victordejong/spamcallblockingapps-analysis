package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcnp.class */
public final class zzcnp implements zzeoy<Set<zzcab<zzdso>>> {

    /* renamed from: a */
    public final zzeph<zzcns> f26309a;

    /* renamed from: b */
    public final zzeph<Executor> f26310b;

    public zzcnp(zzcni zzcniVar, zzeph<zzcns> zzephVar, zzeph<Executor> zzephVar2) {
        this.f26309a = zzephVar;
        this.f26310b = zzephVar2;
    }

    /* renamed from: a */
    public static zzcnp m14006a(zzcni zzcniVar, zzeph<zzcns> zzephVar, zzeph<Executor> zzephVar2) {
        return new zzcnp(zzcniVar, zzephVar, zzephVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        Set<zzcab<zzdso>> h = zzcni.m14015h(this.f26309a.get(), this.f26310b.get());
        zzepe.m12187a(h, "Cannot return null from a non-@Nullable @Provides method");
        return h;
    }
}
