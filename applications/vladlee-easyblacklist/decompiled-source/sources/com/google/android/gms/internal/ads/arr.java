package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.dynamic.ObjectWrapper;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/arr.class */
public final class arr extends aru<zzvn> {

    /* renamed from: a */
    private final /* synthetic */ Context f8225a;

    /* renamed from: b */
    private final /* synthetic */ String f8226b;

    /* renamed from: c */
    private final /* synthetic */ zzalc f8227c;

    /* renamed from: d */
    private final /* synthetic */ zzup f8228d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public arr(zzup zzupVar, Context context, String str, zzalc zzalcVar) {
        this.f8228d = zzupVar;
        this.f8225a = context;
        this.f8226b = str;
        this.f8227c = zzalcVar;
    }

    @Override // com.google.android.gms.internal.ads.aru
    /* renamed from: a */
    protected final /* synthetic */ zzvn mo4750a() {
        zzup.m3001a(this.f8225a, "native_ad");
        return new zzxz();
    }

    @Override // com.google.android.gms.internal.ads.aru
    /* renamed from: a */
    public final /* synthetic */ zzvn mo4749a(zzwd zzwdVar) {
        return zzwdVar.zza(ObjectWrapper.wrap(this.f8225a), this.f8226b, this.f8227c, 19649000);
    }

    @Override // com.google.android.gms.internal.ads.aru
    /* renamed from: b */
    public final /* synthetic */ zzvn mo4748b() {
        zzub zzubVar;
        zzubVar = this.f8228d.f15580b;
        return zzubVar.zza(this.f8225a, this.f8226b, this.f8227c);
    }
}
