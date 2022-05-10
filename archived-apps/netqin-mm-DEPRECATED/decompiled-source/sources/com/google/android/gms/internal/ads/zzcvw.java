package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcvw.class */
public final class zzcvw implements zzeoy<zzcvt> {

    /* renamed from: a */
    public final zzeph<Context> f26610a;

    /* renamed from: b */
    public final zzeph<zzcda> f26611b;

    /* renamed from: c */
    public final zzeph<Executor> f26612c;

    public zzcvw(zzeph<Context> zzephVar, zzeph<zzcda> zzephVar2, zzeph<Executor> zzephVar3) {
        this.f26610a = zzephVar;
        this.f26611b = zzephVar2;
        this.f26612c = zzephVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzcvt(this.f26610a.get(), this.f26611b.get(), this.f26612c.get());
    }
}
