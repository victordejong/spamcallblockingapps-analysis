package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.dynamic.ObjectWrapper;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/arp.class */
public final class arp extends aru<zzvu> {

    /* renamed from: a */
    private final /* synthetic */ Context f8219a;

    /* renamed from: b */
    private final /* synthetic */ zzuj f8220b;

    /* renamed from: c */
    private final /* synthetic */ String f8221c;

    /* renamed from: d */
    private final /* synthetic */ zzup f8222d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public arp(zzup zzupVar, Context context, zzuj zzujVar, String str) {
        this.f8222d = zzupVar;
        this.f8219a = context;
        this.f8220b = zzujVar;
        this.f8221c = str;
    }

    @Override // com.google.android.gms.internal.ads.aru
    /* renamed from: a */
    public final /* synthetic */ zzvu mo4750a() {
        zzup.m3001a(this.f8219a, "search");
        return new zzyd();
    }

    @Override // com.google.android.gms.internal.ads.aru
    /* renamed from: a */
    public final /* synthetic */ zzvu mo4749a(zzwd zzwdVar) {
        return zzwdVar.zza(ObjectWrapper.wrap(this.f8219a), this.f8220b, this.f8221c, 19649000);
    }

    @Override // com.google.android.gms.internal.ads.aru
    /* renamed from: b */
    public final /* synthetic */ zzvu mo4748b() {
        zzue zzueVar;
        zzueVar = this.f8222d.f15579a;
        return zzueVar.zza(this.f8219a, this.f8220b, this.f8221c, null, 3);
    }
}
