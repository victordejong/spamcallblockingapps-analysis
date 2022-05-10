package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zznv.class */
public final class zznv extends zzoa {

    /* renamed from: d */
    public final AtomicReference<zzny> f28697d;

    public zznv() {
        this(null);
    }

    public zznv(zzoe zzoeVar) {
        this.f28697d = new AtomicReference<>(new zzny());
    }

    /* renamed from: a */
    public static int m11748a(int i, int i2) {
        if (i == -1) {
            return i2 == -1 ? 0 : -1;
        }
        if (i2 == -1) {
            return 1;
        }
        return i - i2;
    }

    /* renamed from: a */
    public static boolean m11747a(zzho zzhoVar, String str) {
        return str != null && TextUtils.equals(str, zzpq.m11617b(zzhoVar.f28287y));
    }

    /* renamed from: b */
    public static boolean m11746b(int i, boolean z) {
        int i2 = i & 3;
        if (i2 != 3) {
            return z && i2 == 2;
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:285:0x01f4 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0175  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x018a  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x01c4  */
    @Override // com.google.android.gms.internal.ads.zzoa
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.ads.zzob[] mo11744a(com.google.android.gms.internal.ads.zzhw[] r7, com.google.android.gms.internal.ads.zznp[] r8, int[][][] r9) throws com.google.android.gms.internal.ads.zzhd {
        /*
            Method dump skipped, instructions count: 2212
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zznv.mo11744a(com.google.android.gms.internal.ads.zzhw[], com.google.android.gms.internal.ads.zznp[], int[][][]):com.google.android.gms.internal.ads.zzob[]");
    }
}
