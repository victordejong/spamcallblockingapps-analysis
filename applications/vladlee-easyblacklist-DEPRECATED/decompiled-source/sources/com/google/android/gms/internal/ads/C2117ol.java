package com.google.android.gms.internal.ads;

import android.graphics.Bitmap;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.ol */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ol.class */
public final class C2117ol implements zzded<zzo, Bitmap> {

    /* renamed from: a */
    private final /* synthetic */ double f10277a;

    /* renamed from: b */
    private final /* synthetic */ boolean f10278b;

    /* renamed from: c */
    private final /* synthetic */ zzbyl f10279c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2117ol(zzbyl zzbylVar, double d, boolean z) {
        this.f10279c = zzbylVar;
        this.f10277a = d;
        this.f10278b = z;
    }

    @Override // com.google.android.gms.internal.ads.zzded
    public final /* synthetic */ Bitmap apply(zzo zzoVar) {
        return zzbyl.m3851a(this.f10279c, zzoVar.data, this.f10277a, this.f10278b);
    }
}
