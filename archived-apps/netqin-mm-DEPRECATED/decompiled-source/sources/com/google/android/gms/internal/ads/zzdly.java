package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdly.class */
public final class zzdly implements zzeoy<zzdlv<zzbob, zzboh>> {

    /* renamed from: a */
    public final zzeph<Context> f27493a;

    /* renamed from: b */
    public final zzeph<zzdpw> f27494b;

    /* renamed from: c */
    public final zzeph<zzdqo> f27495c;

    public zzdly(zzeph<Context> zzephVar, zzeph<zzdpw> zzephVar2, zzeph<zzdqo> zzephVar3) {
        this.f27493a = zzephVar;
        this.f27494b = zzephVar2;
        this.f27495c = zzephVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzdlv<zzbob, zzboh> b = zzdlz.m13514b(this.f27493a.get(), this.f27494b.get(), this.f27495c.get());
        zzepe.m12187a(b, "Cannot return null from a non-@Nullable @Provides method");
        return b;
    }
}
