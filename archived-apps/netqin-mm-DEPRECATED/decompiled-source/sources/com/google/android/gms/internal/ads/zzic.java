package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzic.class */
public final class zzic {

    /* renamed from: a */
    public static final int[] f28305a = {1, 2, 3, 6};

    /* renamed from: b */
    public static final int[] f28306b = {48000, 44100, 32000};

    /* renamed from: c */
    public static final int[] f28307c = {2, 1, 2, 3, 3, 4, 4, 5};

    /* renamed from: a */
    public static int m11990a() {
        return 1536;
    }

    /* renamed from: a */
    public static int m11988a(ByteBuffer byteBuffer) {
        int i = 6;
        if (((byteBuffer.get(byteBuffer.position() + 4) & 192) >> 6) != 3) {
            i = f28305a[(byteBuffer.get(byteBuffer.position() + 4) & 48) >> 4];
        }
        return i * 256;
    }

    /* renamed from: a */
    public static zzho m11989a(zzpk zzpkVar, String str, String str2, zzjn zzjnVar) {
        int i = f28306b[(zzpkVar.m11650g() & 192) >> 6];
        int g = zzpkVar.m11650g();
        int i2 = f28307c[(g & 56) >> 3];
        int i3 = i2;
        if ((g & 4) != 0) {
            i3 = i2 + 1;
        }
        return zzho.m12029a(str, "audio/ac3", null, -1, -1, i3, i, null, zzjnVar, 0, str2);
    }

    /* renamed from: b */
    public static zzho m11987b(zzpk zzpkVar, String str, String str2, zzjn zzjnVar) {
        zzpkVar.m11654d(2);
        int i = f28306b[(zzpkVar.m11650g() & 192) >> 6];
        int g = zzpkVar.m11650g();
        int i2 = f28307c[(g & 14) >> 1];
        int i3 = i2;
        if ((g & 1) != 0) {
            i3 = i2 + 1;
        }
        return zzho.m12029a(str, "audio/eac3", null, -1, -1, i3, i, null, zzjnVar, 0, str2);
    }
}
