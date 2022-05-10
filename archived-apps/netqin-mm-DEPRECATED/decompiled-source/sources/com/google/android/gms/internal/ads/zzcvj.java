package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcvj.class */
public final class zzcvj implements zzeoy<zzcvi> {

    /* renamed from: a */
    public final zzeph<Context> f26593a;

    /* renamed from: b */
    public final zzeph<zzcce> f26594b;

    public zzcvj(zzeph<Context> zzephVar, zzeph<zzcce> zzephVar2) {
        this.f26593a = zzephVar;
        this.f26594b = zzephVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzcvi(this.f26593a.get(), this.f26594b.get());
    }
}
