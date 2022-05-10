package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import java.util.concurrent.Executor;
import p131c.p161d.p170b.p224d.p252g.p253a.C3874oc;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbou.class */
public final class zzbou implements zzeoy<C3874oc> {

    /* renamed from: a */
    public final zzeph<zzbqn> f25293a;

    /* renamed from: b */
    public final zzeph<Context> f25294b;

    /* renamed from: c */
    public final zzeph<zzdnu> f25295c;

    /* renamed from: d */
    public final zzeph<View> f25296d;

    /* renamed from: e */
    public final zzeph<zzbgj> f25297e;

    /* renamed from: f */
    public final zzeph<zzbql> f25298f;

    /* renamed from: g */
    public final zzeph<zzcep> f25299g;

    /* renamed from: h */
    public final zzeph<zzcaf> f25300h;

    /* renamed from: i */
    public final zzeph<zzczf> f25301i;

    /* renamed from: j */
    public final zzeph<Executor> f25302j;

    public zzbou(zzeph<zzbqn> zzephVar, zzeph<Context> zzephVar2, zzeph<zzdnu> zzephVar3, zzeph<View> zzephVar4, zzeph<zzbgj> zzephVar5, zzeph<zzbql> zzephVar6, zzeph<zzcep> zzephVar7, zzeph<zzcaf> zzephVar8, zzeph<zzczf> zzephVar9, zzeph<Executor> zzephVar10) {
        this.f25293a = zzephVar;
        this.f25294b = zzephVar2;
        this.f25295c = zzephVar3;
        this.f25296d = zzephVar4;
        this.f25297e = zzephVar5;
        this.f25298f = zzephVar6;
        this.f25299g = zzephVar7;
        this.f25300h = zzephVar8;
        this.f25301i = zzephVar9;
        this.f25302j = zzephVar10;
    }

    /* renamed from: a */
    public static C3874oc m15223a(zzbqn zzbqnVar, Context context, zzdnu zzdnuVar, View view, zzbgj zzbgjVar, zzbql zzbqlVar, zzcep zzcepVar, zzcaf zzcafVar, zzeos<zzczf> zzeosVar, Executor executor) {
        return new C3874oc(zzbqnVar, context, zzdnuVar, view, zzbgjVar, zzbqlVar, zzcepVar, zzcafVar, zzeosVar, executor);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return m15223a(this.f25293a.get(), this.f25294b.get(), this.f25295c.get(), this.f25296d.get(), this.f25297e.get(), this.f25298f.get(), this.f25299g.get(), this.f25300h.get(), zzeov.m12197b(this.f25301i), this.f25302j.get());
    }
}
