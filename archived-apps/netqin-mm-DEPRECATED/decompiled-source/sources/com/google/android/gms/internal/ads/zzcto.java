package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcto.class */
public final class zzcto implements zzeoy<zzcth> {

    /* renamed from: a */
    public final zzeph<zzbob> f26508a;

    /* renamed from: b */
    public final zzeph<Context> f26509b;

    /* renamed from: c */
    public final zzeph<Executor> f26510c;

    /* renamed from: d */
    public final zzeph<zzcjt> f26511d;

    /* renamed from: e */
    public final zzeph<zzdok> f26512e;

    /* renamed from: f */
    public final zzeph<zzbbx> f26513f;

    public zzcto(zzeph<zzbob> zzephVar, zzeph<Context> zzephVar2, zzeph<Executor> zzephVar3, zzeph<zzcjt> zzephVar4, zzeph<zzdok> zzephVar5, zzeph<zzbbx> zzephVar6) {
        this.f26508a = zzephVar;
        this.f26509b = zzephVar2;
        this.f26510c = zzephVar3;
        this.f26511d = zzephVar4;
        this.f26512e = zzephVar5;
        this.f26513f = zzephVar6;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzcth(this.f26508a.get(), this.f26509b.get(), this.f26510c.get(), this.f26511d.get(), this.f26512e.get(), this.f26513f.get());
    }
}
