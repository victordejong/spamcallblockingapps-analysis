package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzc;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbnr.class */
public final class zzbnr implements zzdxg<zzc> {

    /* renamed from: a */
    private final zzbns f12200a;

    /* renamed from: b */
    private final zzdxp<Context> f12201b;

    /* renamed from: c */
    private final zzdxp<zzato> f12202c;

    private zzbnr(zzbns zzbnsVar, zzdxp<Context> zzdxpVar, zzdxp<zzato> zzdxpVar2) {
        this.f12200a = zzbnsVar;
        this.f12201b = zzdxpVar;
        this.f12202c = zzdxpVar2;
    }

    public static zzbnr zza(zzbns zzbnsVar, zzdxp<Context> zzdxpVar, zzdxp<zzato> zzdxpVar2) {
        return new zzbnr(zzbnsVar, zzdxpVar, zzdxpVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (zzc) zzdxm.zza(new zzc(this.f12201b.get(), this.f12202c.get(), null), "Cannot return null from a non-@Nullable @Provides method");
    }
}
