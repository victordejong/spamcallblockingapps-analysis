package com.google.android.gms.internal.ads;

import android.app.Activity;
import com.google.android.gms.dynamic.ObjectWrapper;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/arn.class */
public final class arn extends aru<zzaot> {

    /* renamed from: a */
    private final /* synthetic */ Activity f8212a;

    /* renamed from: b */
    private final /* synthetic */ zzup f8213b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public arn(zzup zzupVar, Activity activity) {
        this.f8213b = zzupVar;
        this.f8212a = activity;
    }

    @Override // com.google.android.gms.internal.ads.aru
    /* renamed from: a */
    protected final /* synthetic */ zzaot mo4750a() {
        zzup.m3001a(this.f8212a, "ad_overlay");
        return null;
    }

    @Override // com.google.android.gms.internal.ads.aru
    /* renamed from: a */
    public final /* synthetic */ zzaot mo4749a(zzwd zzwdVar) {
        return zzwdVar.zzb(ObjectWrapper.wrap(this.f8212a));
    }

    @Override // com.google.android.gms.internal.ads.aru
    /* renamed from: b */
    public final /* synthetic */ zzaot mo4748b() {
        zzaor zzaorVar;
        zzaorVar = this.f8213b.f15585g;
        return zzaorVar.zzc(this.f8212a);
    }
}
