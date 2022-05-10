package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcwa.class */
public final class zzcwa implements zzeoy<zzcvv> {

    /* renamed from: a */
    public final zzeph<Context> f26619a;

    /* renamed from: b */
    public final zzeph<zzcda> f26620b;

    public zzcwa(zzeph<Context> zzephVar, zzeph<zzcda> zzephVar2) {
        this.f26619a = zzephVar;
        this.f26620b = zzephVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzcvv(this.f26619a.get(), this.f26620b.get());
    }
}
