package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.dynamic.ObjectWrapper;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/arm.class */
public final class arm extends aru<zzvu> {

    /* renamed from: a */
    private final /* synthetic */ Context f8207a;

    /* renamed from: b */
    private final /* synthetic */ zzuj f8208b;

    /* renamed from: c */
    private final /* synthetic */ String f8209c;

    /* renamed from: d */
    private final /* synthetic */ zzalc f8210d;

    /* renamed from: e */
    private final /* synthetic */ zzup f8211e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public arm(zzup zzupVar, Context context, zzuj zzujVar, String str, zzalc zzalcVar) {
        this.f8211e = zzupVar;
        this.f8207a = context;
        this.f8208b = zzujVar;
        this.f8209c = str;
        this.f8210d = zzalcVar;
    }

    @Override // com.google.android.gms.internal.ads.aru
    /* renamed from: a */
    public final /* synthetic */ zzvu mo4750a() {
        zzup.m3001a(this.f8207a, "app_open");
        return new zzyd();
    }

    @Override // com.google.android.gms.internal.ads.aru
    /* renamed from: a */
    public final /* synthetic */ zzvu mo4749a(zzwd zzwdVar) {
        return zzwdVar.zzc(ObjectWrapper.wrap(this.f8207a), this.f8208b, this.f8209c, this.f8210d, 19649000);
    }

    @Override // com.google.android.gms.internal.ads.aru
    /* renamed from: b */
    public final /* synthetic */ zzvu mo4748b() {
        zzue zzueVar;
        zzueVar = this.f8211e.f15579a;
        return zzueVar.zza(this.f8207a, this.f8208b, this.f8209c, this.f8210d, 4);
    }
}
