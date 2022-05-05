package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.dynamic.ObjectWrapper;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aro.class */
public final class aro extends aru<zzvu> {

    /* renamed from: a */
    private final /* synthetic */ Context f8214a;

    /* renamed from: b */
    private final /* synthetic */ zzuj f8215b;

    /* renamed from: c */
    private final /* synthetic */ String f8216c;

    /* renamed from: d */
    private final /* synthetic */ zzalc f8217d;

    /* renamed from: e */
    private final /* synthetic */ zzup f8218e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aro(zzup zzupVar, Context context, zzuj zzujVar, String str, zzalc zzalcVar) {
        this.f8218e = zzupVar;
        this.f8214a = context;
        this.f8215b = zzujVar;
        this.f8216c = str;
        this.f8217d = zzalcVar;
    }

    @Override // com.google.android.gms.internal.ads.aru
    /* renamed from: a */
    public final /* synthetic */ zzvu mo4750a() {
        zzup.m3001a(this.f8214a, "interstitial");
        return new zzyd();
    }

    @Override // com.google.android.gms.internal.ads.aru
    /* renamed from: a */
    public final /* synthetic */ zzvu mo4749a(zzwd zzwdVar) {
        return zzwdVar.zzb(ObjectWrapper.wrap(this.f8214a), this.f8215b, this.f8216c, this.f8217d, 19649000);
    }

    @Override // com.google.android.gms.internal.ads.aru
    /* renamed from: b */
    public final /* synthetic */ zzvu mo4748b() {
        zzue zzueVar;
        zzueVar = this.f8218e.f15579a;
        return zzueVar.zza(this.f8214a, this.f8215b, this.f8216c, this.f8217d, 2);
    }
}
