package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.HashSet;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcdr.class */
public final class zzcdr implements zzeoy<zzcae> {

    /* renamed from: a */
    public final zzeph<Context> f25790a;

    /* renamed from: b */
    public final zzeph<zzdnv> f25791b;

    public zzcdr(zzeph<Context> zzephVar, zzeph<zzdnv> zzephVar2) {
        this.f25790a = zzephVar;
        this.f25791b = zzephVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzcae zzcaeVar = new zzcae(this.f25790a.get(), new HashSet(), this.f25791b.get());
        zzepe.m12187a(zzcaeVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzcaeVar;
    }
}
