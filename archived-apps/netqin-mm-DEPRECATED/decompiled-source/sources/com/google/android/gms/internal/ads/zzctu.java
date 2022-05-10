package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzctu.class */
public final class zzctu implements zzeoy<zzctq> {

    /* renamed from: a */
    public final zzeph<zzbnq> f26524a;

    /* renamed from: b */
    public final zzeph<Context> f26525b;

    /* renamed from: c */
    public final zzeph<Executor> f26526c;

    /* renamed from: d */
    public final zzeph<zzcjt> f26527d;

    public zzctu(zzeph<zzbnq> zzephVar, zzeph<Context> zzephVar2, zzeph<Executor> zzephVar3, zzeph<zzcjt> zzephVar4) {
        this.f26524a = zzephVar;
        this.f26525b = zzephVar2;
        this.f26526c = zzephVar3;
        this.f26527d = zzephVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzctq(this.f26524a.get(), this.f26525b.get(), this.f26526c.get(), this.f26527d.get());
    }
}
