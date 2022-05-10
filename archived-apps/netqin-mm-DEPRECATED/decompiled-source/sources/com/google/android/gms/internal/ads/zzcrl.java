package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.HashMap;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcrl.class */
public final class zzcrl implements zzeoy<zzcqv> {

    /* renamed from: a */
    public final zzeph<Context> f26420a;

    /* renamed from: b */
    public final zzeph<Executor> f26421b;

    /* renamed from: c */
    public final zzeph<zzatt> f26422c;

    /* renamed from: d */
    public final zzeph<zzbly> f26423d;

    /* renamed from: e */
    public final zzeph<zzatq> f26424e;

    /* renamed from: f */
    public final zzeph<HashMap<String, zzcrk>> f26425f;

    public zzcrl(zzeph<Context> zzephVar, zzeph<Executor> zzephVar2, zzeph<zzatt> zzephVar3, zzeph<zzbly> zzephVar4, zzeph<zzatq> zzephVar5, zzeph<HashMap<String, zzcrk>> zzephVar6) {
        this.f26420a = zzephVar;
        this.f26421b = zzephVar2;
        this.f26422c = zzephVar3;
        this.f26423d = zzephVar4;
        this.f26424e = zzephVar5;
        this.f26425f = zzephVar6;
    }

    /* renamed from: a */
    public static zzcrl m13912a(zzeph<Context> zzephVar, zzeph<Executor> zzephVar2, zzeph<zzatt> zzephVar3, zzeph<zzbly> zzephVar4, zzeph<zzatq> zzephVar5, zzeph<HashMap<String, zzcrk>> zzephVar6) {
        return new zzcrl(zzephVar, zzephVar2, zzephVar3, zzephVar4, zzephVar5, zzephVar6);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzcqv(this.f26420a.get(), this.f26421b.get(), this.f26422c.get(), this.f26423d.get(), this.f26424e.get(), this.f26425f.get());
    }
}
