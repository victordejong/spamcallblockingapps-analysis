package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/akl.class */
public final class akl {

    /* renamed from: a */
    private static final akn f7549a;

    static {
        f7549a = (!(akj.m5071a() && akj.m5055b()) || aha.m5427a()) ? new akm() : new ako();
    }

    /* renamed from: a */
    public static int m5008a(int i, byte[] bArr, int i2, int i3) {
        return f7549a.mo4995a(i, bArr, i2, i3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static int m5007a(CharSequence charSequence) {
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
                                throw new akp(i4, length2);
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
    public static int m5005a(CharSequence charSequence, byte[] bArr, int i, int i2) {
        return f7549a.mo4993a(charSequence, bArr, i, i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m5006a(CharSequence charSequence, ByteBuffer byteBuffer) {
        akn aknVar = f7549a;
        if (byteBuffer.hasArray()) {
            int arrayOffset = byteBuffer.arrayOffset();
            byteBuffer.position(m5005a(charSequence, byteBuffer.array(), byteBuffer.position() + arrayOffset, byteBuffer.remaining()) - arrayOffset);
        } else if (byteBuffer.isDirect()) {
            aknVar.mo4994a(charSequence, byteBuffer);
        } else {
            akn.m4997b(charSequence, byteBuffer);
        }
    }

    /* renamed from: a */
    public static boolean m5004a(byte[] bArr) {
        return f7549a.m4996b(bArr, 0, bArr.length);
    }

    /* renamed from: a */
    public static boolean m5003a(byte[] bArr, int i, int i2) {
        return f7549a.m4996b(bArr, i, i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static int m5002b(int i) {
        int i2 = i;
        if (i > -12) {
            i2 = -1;
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static int m5001b(int i, int i2) {
        if (i > -12 || i2 > -65) {
            return -1;
        }
        return i ^ (i2 << 8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static int m5000b(int i, int i2, int i3) {
        if (i > -12 || i2 > -65 || i3 > -65) {
            return -1;
        }
        return (i ^ (i2 << 8)) ^ (i3 << 16);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static String m4999b(byte[] bArr, int i, int i2) {
        return f7549a.mo4992a(bArr, i, i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static /* synthetic */ int m4998c(byte[] bArr, int i, int i2) {
        byte b = bArr[i - 1];
        int i3 = i2 - i;
        if (i3 == 0) {
            return m5002b(b);
        }
        if (i3 == 1) {
            return m5001b(b, bArr[i]);
        }
        if (i3 == 2) {
            return m5000b(b, bArr[i], bArr[i + 1]);
        }
        throw new AssertionError();
    }
}
