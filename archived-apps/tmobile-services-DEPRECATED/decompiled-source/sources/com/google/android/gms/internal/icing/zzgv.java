package com.google.android.gms.internal.icing;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzgv.class */
public final class zzgv {

    /* renamed from: a */
    private static final zzgx f8115a;

    static {
        f8115a = (!(zzgs.m13563q() && zzgs.m13562r()) || zzcs.m13982a()) ? new zzgw() : new zzgy();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static int m13541a(CharSequence charSequence) {
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
                                throw new zzgz(i4, length2);
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
    /* renamed from: b */
    public static int m13540b(CharSequence charSequence, byte[] bArr, int i, int i2) {
        return f8115a.mo13527b(charSequence, bArr, i, i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public static int m13539c(int i) {
        int i2 = i;
        if (i > -12) {
            i2 = -1;
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public static int m13537e(int i, int i2, int i3) {
        if (i > -12 || i2 > -65 || i3 > -65) {
            return -1;
        }
        return (i ^ (i2 << 8)) ^ (i3 << 16);
    }

    /* renamed from: f */
    public static boolean m13536f(byte[] bArr, int i, int i2) {
        return f8115a.m13529c(bArr, i, i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h */
    public static int m13534h(byte[] bArr, int i, int i2) {
        byte b = bArr[i - 1];
        int i3 = i2 - i;
        if (i3 == 0) {
            return m13539c(b);
        }
        if (i3 == 1) {
            return m13531k(b, bArr[i]);
        }
        if (i3 == 2) {
            return m13537e(b, bArr[i], bArr[i + 1]);
        }
        throw new AssertionError();
    }

    /* renamed from: i */
    public static boolean m13533i(byte[] bArr) {
        return f8115a.m13529c(bArr, 0, bArr.length);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: k */
    public static int m13531k(int i, int i2) {
        if (i > -12 || i2 > -65) {
            return -1;
        }
        return i ^ (i2 << 8);
    }
}
