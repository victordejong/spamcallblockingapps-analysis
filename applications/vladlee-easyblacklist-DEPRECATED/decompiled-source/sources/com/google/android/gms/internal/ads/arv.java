package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.dynamic.ObjectWrapper;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/arv.class */
public final class arv extends aru<zzarl> {

    /* renamed from: a */
    private final /* synthetic */ Context f8238a;

    /* renamed from: b */
    private final /* synthetic */ zzalc f8239b;

    /* renamed from: c */
    private final /* synthetic */ zzup f8240c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public arv(zzup zzupVar, Context context, zzalc zzalcVar) {
        this.f8240c = zzupVar;
        this.f8238a = context;
        this.f8239b = zzalcVar;
    }

    @Override // com.google.android.gms.internal.ads.aru
    /* renamed from: a */
    protected final /* synthetic */ zzarl mo4750a() {
        zzup.m3001a(this.f8238a, "rewarded_video");
        return new zzyl();
    }

    @Override // com.google.android.gms.internal.ads.aru
    /* renamed from: a */
    public final /* synthetic */ zzarl mo4749a(zzwd zzwdVar) {
        return zzwdVar.zza(ObjectWrapper.wrap(this.f8238a), this.f8239b, 19649000);
    }

    @Override // com.google.android.gms.internal.ads.aru
    /* renamed from: b */
    public final /* synthetic */ zzarl mo4748b() {
        zzars zzarsVar;
        zzarsVar = this.f8240c.f15583e;
        return zzarsVar.zza(this.f8238a, this.f8239b);
    }
}
