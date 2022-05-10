package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbqb.class */
public final class zzbqb implements zzeoy<zzbpw> {

    /* renamed from: a */
    public final zzeph<zzbqn> f25344a;

    /* renamed from: b */
    public final zzeph<zzafy> f25345b;

    /* renamed from: c */
    public final zzeph<Runnable> f25346c;

    /* renamed from: d */
    public final zzeph<Executor> f25347d;

    public zzbqb(zzeph<zzbqn> zzephVar, zzeph<zzafy> zzephVar2, zzeph<Runnable> zzephVar3, zzeph<Executor> zzephVar4) {
        this.f25344a = zzephVar;
        this.f25345b = zzephVar2;
        this.f25346c = zzephVar3;
        this.f25347d = zzephVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzbpw(this.f25344a.get(), this.f25345b.get(), this.f25346c.get(), this.f25347d.get());
    }
}
