package com.google.android.gms.internal.ads;

import p131c.p161d.p170b.p224d.p252g.p253a.C3874oc;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbpc.class */
public final class zzbpc implements zzeoy<zzboq> {

    /* renamed from: a */
    public final zzbot f25313a;

    /* renamed from: b */
    public final zzeph<C3874oc> f25314b;

    public zzbpc(zzbot zzbotVar, zzeph<C3874oc> zzephVar) {
        this.f25313a = zzbotVar;
        this.f25314b = zzephVar;
    }

    /* renamed from: a */
    public static zzboq m15217a(zzbot zzbotVar, Object obj) {
        C3874oc ocVar = (C3874oc) obj;
        zzepe.m12187a(ocVar, "Cannot return null from a non-@Nullable @Provides method");
        return ocVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return m15217a(this.f25313a, this.f25314b.get());
    }
}
