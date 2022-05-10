package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdek.class */
public final class zzdek implements zzeoy<zzdei> {

    /* renamed from: a */
    public final zzeph<Context> f27208a;

    /* renamed from: b */
    public final zzeph<zzdzb> f27209b;

    public zzdek(zzeph<Context> zzephVar, zzeph<zzdzb> zzephVar2) {
        this.f27208a = zzephVar;
        this.f27209b = zzephVar2;
    }

    /* renamed from: a */
    public static zzdek m13634a(zzeph<Context> zzephVar, zzeph<zzdzb> zzephVar2) {
        return new zzdek(zzephVar, zzephVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzdei(this.f27208a.get(), this.f27209b.get());
    }
}
