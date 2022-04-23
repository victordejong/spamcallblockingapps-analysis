package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.dynamic.ObjectWrapper;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/arl.class */
public final class arl extends aru<zzvu> {

    /* renamed from: a */
    private final /* synthetic */ Context f8202a;

    /* renamed from: b */
    private final /* synthetic */ zzuj f8203b;

    /* renamed from: c */
    private final /* synthetic */ String f8204c;

    /* renamed from: d */
    private final /* synthetic */ zzalc f8205d;

    /* renamed from: e */
    private final /* synthetic */ zzup f8206e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public arl(zzup zzupVar, Context context, zzuj zzujVar, String str, zzalc zzalcVar) {
        this.f8206e = zzupVar;
        this.f8202a = context;
        this.f8203b = zzujVar;
        this.f8204c = str;
        this.f8205d = zzalcVar;
    }

    @Override // com.google.android.gms.internal.ads.aru
    /* renamed from: a */
    public final /* synthetic */ zzvu mo4750a() {
        zzup.m3001a(this.f8202a, "banner");
        return new zzyd();
    }

    @Override // com.google.android.gms.internal.ads.aru
    /* renamed from: a */
    public final /* synthetic */ zzvu mo4749a(zzwd zzwdVar) {
        return zzwdVar.zza(ObjectWrapper.wrap(this.f8202a), this.f8203b, this.f8204c, this.f8205d, 19649000);
    }

    @Override // com.google.android.gms.internal.ads.aru
    /* renamed from: b */
    public final /* synthetic */ zzvu mo4748b() {
        zzue zzueVar;
        zzueVar = this.f8206e.f15579a;
        return zzueVar.zza(this.f8202a, this.f8203b, this.f8204c, this.f8205d, 1);
    }
}
