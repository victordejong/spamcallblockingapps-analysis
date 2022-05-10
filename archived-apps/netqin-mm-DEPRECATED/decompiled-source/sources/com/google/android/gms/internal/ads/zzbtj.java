package com.google.android.gms.internal.ads;

import android.content.Context;
import p131c.p161d.p170b.p224d.p252g.p253a.C3727kd;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbtj.class */
public final class zzbtj implements zzeoy<C3727kd> {

    /* renamed from: a */
    public final zzeph<Context> f25501a;

    /* renamed from: b */
    public final zzeph<zzdnv> f25502b;

    /* renamed from: c */
    public final zzeph<zzarj> f25503c;

    public zzbtj(zzeph<Context> zzephVar, zzeph<zzdnv> zzephVar2, zzeph<zzarj> zzephVar3) {
        this.f25501a = zzephVar;
        this.f25502b = zzephVar2;
        this.f25503c = zzephVar3;
    }

    /* renamed from: a */
    public static zzbtj m15079a(zzeph<Context> zzephVar, zzeph<zzdnv> zzephVar2, zzeph<zzarj> zzephVar3) {
        return new zzbtj(zzephVar, zzephVar2, zzephVar3);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new C3727kd(this.f25501a.get(), this.f25502b.get(), this.f25503c.get());
    }
}
