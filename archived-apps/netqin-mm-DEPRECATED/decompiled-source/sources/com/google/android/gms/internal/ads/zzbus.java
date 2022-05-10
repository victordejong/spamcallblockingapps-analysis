package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbus.class */
public final class zzbus implements zzeoy<zzbuk> {

    /* renamed from: a */
    public final zzeph<zzbuo> f25562a;

    /* renamed from: b */
    public final zzeph<Set<zzcab<zzbul>>> f25563b;

    /* renamed from: c */
    public final zzeph<Executor> f25564c;

    public zzbus(zzeph<zzbuo> zzephVar, zzeph<Set<zzcab<zzbul>>> zzephVar2, zzeph<Executor> zzephVar3) {
        this.f25562a = zzephVar;
        this.f25563b = zzephVar2;
        this.f25564c = zzephVar3;
    }

    /* renamed from: a */
    public static zzbus m15034a(zzeph<zzbuo> zzephVar, zzeph<Set<zzcab<zzbul>>> zzephVar2, zzeph<Executor> zzephVar3) {
        return new zzbus(zzephVar, zzephVar2, zzephVar3);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzbuk(this.f25562a.get(), this.f25563b.get(), this.f25564c.get());
    }
}
