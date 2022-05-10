package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcfi.class */
public final class zzcfi implements zzeoy<zzcfe> {

    /* renamed from: a */
    public final zzeph<zzayr> f25934a;

    /* renamed from: b */
    public final zzeph<zzdok> f25935b;

    /* renamed from: c */
    public final zzeph<zzcem> f25936c;

    /* renamed from: d */
    public final zzeph<zzcei> f25937d;

    /* renamed from: e */
    public final zzeph<zzcfm> f25938e;

    /* renamed from: f */
    public final zzeph<zzcfu> f25939f;

    /* renamed from: g */
    public final zzeph<Executor> f25940g;

    /* renamed from: h */
    public final zzeph<Executor> f25941h;

    /* renamed from: i */
    public final zzeph<zzced> f25942i;

    public zzcfi(zzeph<zzayr> zzephVar, zzeph<zzdok> zzephVar2, zzeph<zzcem> zzephVar3, zzeph<zzcei> zzephVar4, zzeph<zzcfm> zzephVar5, zzeph<zzcfu> zzephVar6, zzeph<Executor> zzephVar7, zzeph<Executor> zzephVar8, zzeph<zzced> zzephVar9) {
        this.f25934a = zzephVar;
        this.f25935b = zzephVar2;
        this.f25936c = zzephVar3;
        this.f25937d = zzephVar4;
        this.f25938e = zzephVar5;
        this.f25939f = zzephVar6;
        this.f25940g = zzephVar7;
        this.f25941h = zzephVar8;
        this.f25942i = zzephVar9;
    }

    /* renamed from: a */
    public static zzcfi m14342a(zzeph<zzayr> zzephVar, zzeph<zzdok> zzephVar2, zzeph<zzcem> zzephVar3, zzeph<zzcei> zzephVar4, zzeph<zzcfm> zzephVar5, zzeph<zzcfu> zzephVar6, zzeph<Executor> zzephVar7, zzeph<Executor> zzephVar8, zzeph<zzced> zzephVar9) {
        return new zzcfi(zzephVar, zzephVar2, zzephVar3, zzephVar4, zzephVar5, zzephVar6, zzephVar7, zzephVar8, zzephVar9);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzcfe(this.f25934a.get(), this.f25935b.get(), this.f25936c.get(), this.f25937d.get(), this.f25938e.get(), this.f25939f.get(), this.f25940g.get(), this.f25941h.get(), this.f25942i.get());
    }
}
