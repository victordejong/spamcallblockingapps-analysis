package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcnk.class */
public final class zzcnk implements zzeoy<Set<zzcab<zzbui>>> {

    /* renamed from: a */
    public final zzeph<zzcns> f26300a;

    /* renamed from: b */
    public final zzeph<Executor> f26301b;

    public zzcnk(zzcni zzcniVar, zzeph<zzcns> zzephVar, zzeph<Executor> zzephVar2) {
        this.f26300a = zzephVar;
        this.f26301b = zzephVar2;
    }

    /* renamed from: a */
    public static zzcnk m14012a(zzcni zzcniVar, zzeph<zzcns> zzephVar, zzeph<Executor> zzephVar2) {
        return new zzcnk(zzcniVar, zzephVar, zzephVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        Set<zzcab<zzbui>> d = zzcni.m14019d(this.f26300a.get(), this.f26301b.get());
        zzepe.m12187a(d, "Cannot return null from a non-@Nullable @Provides method");
        return d;
    }
}
