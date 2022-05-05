package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdrt;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ajf.class */
public final class ajf implements aiv {

    /* renamed from: a */
    private final zzdte f7465a;

    /* renamed from: b */
    private final String f7466b;

    /* renamed from: c */
    private final Object[] f7467c;

    /* renamed from: d */
    private final int f7468d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ajf(zzdte zzdteVar, String str, Object[] objArr) {
        this.f7465a = zzdteVar;
        this.f7466b = str;
        this.f7467c = objArr;
        char charAt = str.charAt(0);
        if (charAt < 55296) {
            this.f7468d = charAt;
            return;
        }
        int i = charAt & 8191;
        int i2 = 13;
        int i3 = 1;
        while (true) {
            char charAt2 = str.charAt(i3);
            if (charAt2 >= 55296) {
                i |= (charAt2 & 8191) << i2;
                i2 += 13;
                i3++;
            } else {
                this.f7468d = i | (charAt2 << i2);
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.aiv
    /* renamed from: a */
    public final int mo5096a() {
        return (this.f7468d & 1) == 1 ? zzdrt.zze.zzhna : zzdrt.zze.zzhnb;
    }

    @Override // com.google.android.gms.internal.ads.aiv
    /* renamed from: b */
    public final boolean mo5095b() {
        return (this.f7468d & 2) == 2;
    }

    @Override // com.google.android.gms.internal.ads.aiv
    /* renamed from: c */
    public final zzdte mo5094c() {
        return this.f7465a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public final String m5244d() {
        return this.f7466b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public final Object[] m5243e() {
        return this.f7467c;
    }
}
