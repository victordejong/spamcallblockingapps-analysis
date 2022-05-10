package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcvb.class */
public final class zzcvb implements zzeoy<zzcuw> {

    /* renamed from: a */
    public final zzeph<Context> f26577a;

    /* renamed from: b */
    public final zzeph<zzbbx> f26578b;

    /* renamed from: c */
    public final zzeph<zzdok> f26579c;

    /* renamed from: d */
    public final zzeph<Executor> f26580d;

    /* renamed from: e */
    public final zzeph<zzcce> f26581e;

    /* renamed from: f */
    public final zzeph<zzcjt> f26582f;

    public zzcvb(zzeph<Context> zzephVar, zzeph<zzbbx> zzephVar2, zzeph<zzdok> zzephVar3, zzeph<Executor> zzephVar4, zzeph<zzcce> zzephVar5, zzeph<zzcjt> zzephVar6) {
        this.f26577a = zzephVar;
        this.f26578b = zzephVar2;
        this.f26579c = zzephVar3;
        this.f26580d = zzephVar4;
        this.f26581e = zzephVar5;
        this.f26582f = zzephVar6;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzcuw(this.f26577a.get(), this.f26578b.get(), this.f26579c.get(), this.f26580d.get(), this.f26581e.get(), this.f26582f.get());
    }
}
