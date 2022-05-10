package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcsx.class */
public final class zzcsx implements zzeoy<zzcsy> {

    /* renamed from: a */
    public final zzeph<Context> f26488a;

    /* renamed from: b */
    public final zzeph<zzcsp> f26489b;

    /* renamed from: c */
    public final zzeph<zzbbu> f26490c;

    public zzcsx(zzeph<Context> zzephVar, zzeph<zzcsp> zzephVar2, zzeph<zzbbu> zzephVar3) {
        this.f26488a = zzephVar;
        this.f26489b = zzephVar2;
        this.f26490c = zzephVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzcsy(this.f26488a.get(), this.f26489b.get(), this.f26490c.get());
    }
}
