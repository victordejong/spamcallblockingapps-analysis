package com.google.android.gms.internal.measurement;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.measurement.es */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/es.class */
public final class C2595es {

    /* renamed from: a */
    private static final AbstractC2596et f16070a;

    static {
        f16070a = (!(C2588ep.m2585a() && C2588ep.m2572b()) || C2509br.m2898a()) ? new C2599ew() : new C2600ex();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static int m2533a(CharSequence charSequence) {
        int i;
        int i2;
        int length = charSequence.length();
        int i3 = 0;
        int i4 = 0;
        while (i4 < length && charSequence.charAt(i4) < 128) {
            i4++;
        }
        int i5 = length;
        while (true) {
            i = i5;
            if (i4 >= length) {
                break;
            }
            char charAt = charSequence.charAt(i4);
            if (charAt < 2048) {
                i5 += (127 - charAt) >>> 31;
                i4++;
            } else {
                int length2 = charSequence.length();
                while (i4 < length2) {
                    char charAt2 = charSequence.charAt(i4);
                    if (charAt2 < 2048) {
                        i3 += (127 - charAt2) >>> 31;
                        i2 = i4;
                    } else {
                        int i6 = i3 + 2;
                        i3 = i6;
                        i2 = i4;
                        if (55296 <= charAt2) {
                            i3 = i6;
                            i2 = i4;
                            if (charAt2 > 57343) {
                                continue;
                            } else if (Character.codePointAt(charSequence, i4) >= 65536) {
                                i2 = i4 + 1;
                                i3 = i6;
                            } else {
                                throw new C2598ev(i4, length2);
                            }
                        } else {
                            continue;
                        }
                    }
                    i4 = i2 + 1;
                }
                i = i5 + i3;
            }
        }
        if (i >= length) {
            return i;
        }
        StringBuilder sb = new StringBuilder(54);
        sb.append("UTF-8 length does not fit in int: ");
        sb.append(i + 4294967296L);
        throw new IllegalArgumentException(sb.toString());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static int m2532a(CharSequence charSequence, byte[] bArr, int i, int i2) {
        return f16070a.mo2517a(charSequence, bArr, i, i2);
    }

    /* renamed from: a */
    public static boolean m2531a(byte[] bArr) {
        return f16070a.m2524a(bArr, 0, bArr.length);
    }

    /* renamed from: a */
    public static boolean m2530a(byte[] bArr, int i, int i2) {
        return f16070a.m2524a(bArr, i, i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static int m2529b(int i) {
        int i2 = i;
        if (i > -12) {
            i2 = -1;
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static int m2528b(int i, int i2) {
        if (i > -12 || i2 > -65) {
            return -1;
        }
        return i ^ (i2 << 8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static int m2527b(int i, int i2, int i3) {
        if (i > -12 || i2 > -65 || i3 > -65) {
            return -1;
        }
        return (i ^ (i2 << 8)) ^ (i3 << 16);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static String m2526b(byte[] bArr, int i, int i2) {
        return f16070a.mo2514c(bArr, i, i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static /* synthetic */ int m2525c(byte[] bArr, int i, int i2) {
        byte b = bArr[i - 1];
        int i3 = i2 - i;
        if (i3 == 0) {
            return m2529b(b);
        }
        if (i3 == 1) {
            return m2528b(b, bArr[i]);
        }
        if (i3 == 2) {
            return m2527b(b, bArr[i], bArr[i + 1]);
        }
        throw new AssertionError();
    }
}
