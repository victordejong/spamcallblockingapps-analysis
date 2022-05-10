package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdhx.class */
public final class zzdhx implements zzeoy<zzdhv> {

    /* renamed from: a */
    public final zzeph<zzatj> f27352a;

    /* renamed from: b */
    public final zzeph<Context> f27353b;

    /* renamed from: c */
    public final zzeph<String> f27354c;

    /* renamed from: d */
    public final zzeph<zzdzb> f27355d;

    public zzdhx(zzeph<zzatj> zzephVar, zzeph<Context> zzephVar2, zzeph<String> zzephVar3, zzeph<zzdzb> zzephVar4) {
        this.f27352a = zzephVar;
        this.f27353b = zzephVar2;
        this.f27354c = zzephVar3;
        this.f27355d = zzephVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzdhv(this.f27352a.get(), this.f27353b.get(), this.f27354c.get(), this.f27355d.get());
    }
}
