package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcwx.class */
public final class zzcwx implements zzeoy<zzcww> {

    /* renamed from: a */
    public final zzeph<Context> f26685a;

    /* renamed from: b */
    public final zzeph<zzcjj> f26686b;

    public zzcwx(zzeph<Context> zzephVar, zzeph<zzcjj> zzephVar2) {
        this.f26685a = zzephVar;
        this.f26686b = zzephVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzcww(this.f26685a.get(), this.f26686b.get());
    }
}
