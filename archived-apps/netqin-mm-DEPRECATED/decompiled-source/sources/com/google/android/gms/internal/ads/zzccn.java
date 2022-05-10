package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.internal.ads.zzua;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzccn.class */
public final class zzccn implements zzeoy<zzcco> {

    /* renamed from: a */
    public final zzeph<Context> f25703a;

    /* renamed from: b */
    public final zzeph<zzbgj> f25704b;

    /* renamed from: c */
    public final zzeph<zzdnv> f25705c;

    /* renamed from: d */
    public final zzeph<zzbbx> f25706d;

    /* renamed from: e */
    public final zzeph<zzua.zza.EnumC10505zza> f25707e;

    public zzccn(zzeph<Context> zzephVar, zzeph<zzbgj> zzephVar2, zzeph<zzdnv> zzephVar3, zzeph<zzbbx> zzephVar4, zzeph<zzua.zza.EnumC10505zza> zzephVar5) {
        this.f25703a = zzephVar;
        this.f25704b = zzephVar2;
        this.f25705c = zzephVar3;
        this.f25706d = zzephVar4;
        this.f25707e = zzephVar5;
    }

    /* renamed from: a */
    public static zzccn m14808a(zzeph<Context> zzephVar, zzeph<zzbgj> zzephVar2, zzeph<zzdnv> zzephVar3, zzeph<zzbbx> zzephVar4, zzeph<zzua.zza.EnumC10505zza> zzephVar5) {
        return new zzccn(zzephVar, zzephVar2, zzephVar3, zzephVar4, zzephVar5);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzcco(this.f25703a.get(), this.f25704b.get(), this.f25705c.get(), this.f25706d.get(), this.f25707e.get());
    }
}
