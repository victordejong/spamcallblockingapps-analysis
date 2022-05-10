package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdpm.class */
public final class zzdpm implements zzeoy<zzdpj> {

    /* renamed from: a */
    public final zzeph<Context> f27704a;

    /* renamed from: b */
    public final zzeph<zzayi> f27705b;

    public zzdpm(zzeph<Context> zzephVar, zzeph<zzayi> zzephVar2) {
        this.f27704a = zzephVar;
        this.f27705b = zzephVar2;
    }

    /* renamed from: a */
    public static zzdpm m13329a(zzeph<Context> zzephVar, zzeph<zzayi> zzephVar2) {
        return new zzdpm(zzephVar, zzephVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzdpj(this.f27704a.get(), this.f27705b.get());
    }
}
