package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdgc.class */
public final class zzdgc implements zzeoy<zzdfz> {

    /* renamed from: a */
    public final zzeph<zzdzb> f27264a;

    /* renamed from: b */
    public final zzeph<ScheduledExecutorService> f27265b;

    /* renamed from: c */
    public final zzeph<String> f27266c;

    /* renamed from: d */
    public final zzeph<zzcza> f27267d;

    /* renamed from: e */
    public final zzeph<Context> f27268e;

    /* renamed from: f */
    public final zzeph<zzdok> f27269f;

    /* renamed from: g */
    public final zzeph<zzcyy> f27270g;

    public zzdgc(zzeph<zzdzb> zzephVar, zzeph<ScheduledExecutorService> zzephVar2, zzeph<String> zzephVar3, zzeph<zzcza> zzephVar4, zzeph<Context> zzephVar5, zzeph<zzdok> zzephVar6, zzeph<zzcyy> zzephVar7) {
        this.f27264a = zzephVar;
        this.f27265b = zzephVar2;
        this.f27266c = zzephVar3;
        this.f27267d = zzephVar4;
        this.f27268e = zzephVar5;
        this.f27269f = zzephVar6;
        this.f27270g = zzephVar7;
    }

    /* renamed from: a */
    public static zzdgc m13613a(zzeph<zzdzb> zzephVar, zzeph<ScheduledExecutorService> zzephVar2, zzeph<String> zzephVar3, zzeph<zzcza> zzephVar4, zzeph<Context> zzephVar5, zzeph<zzdok> zzephVar6, zzeph<zzcyy> zzephVar7) {
        return new zzdgc(zzephVar, zzephVar2, zzephVar3, zzephVar4, zzephVar5, zzephVar6, zzephVar7);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzdfz(this.f27264a.get(), this.f27265b.get(), this.f27266c.get(), this.f27267d.get(), this.f27268e.get(), this.f27269f.get(), this.f27270g.get());
    }
}
