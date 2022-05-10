package p131c.p161d.p170b.p224d.p252g.p258f;

import com.google.android.gms.internal.measurement.zzij;
import com.google.android.gms.internal.measurement.zzlf;
/* renamed from: c.d.b.d.g.f.n5 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/f/n5.class */
public final class C4554n5 extends AbstractC4561o5 {
    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4561o5
    /* renamed from: a */
    public final int mo25320a(int i, byte[] bArr, int i2, int i3) {
        int d;
        int d2;
        while (i2 < i3 && bArr[i2] >= 0) {
            i2++;
        }
        int i4 = i2;
        if (i2 >= i3) {
            return 0;
        }
        while (i4 < i3) {
            int i5 = i4 + 1;
            byte b = bArr[i4];
            i4 = i5;
            if (b < 0) {
                if (b < -32) {
                    if (i5 >= i3) {
                        return b;
                    }
                    if (b < -62) {
                        return -1;
                    }
                    i4 = i5 + 1;
                    if (bArr[i5] > -65) {
                        return -1;
                    }
                } else if (b < -16) {
                    if (i5 >= i3 - 1) {
                        d = C4547m5.m25356d(bArr, i5, i3);
                        return d;
                    }
                    int i6 = i5 + 1;
                    byte b2 = bArr[i5];
                    if (b2 > -65) {
                        return -1;
                    }
                    if (b == -32 && b2 < -96) {
                        return -1;
                    }
                    if (b == -19 && b2 >= -96) {
                        return -1;
                    }
                    i4 = i6 + 1;
                    if (bArr[i6] > -65) {
                        return -1;
                    }
                } else if (i5 >= i3 - 2) {
                    d2 = C4547m5.m25356d(bArr, i5, i3);
                    return d2;
                } else {
                    int i7 = i5 + 1;
                    byte b3 = bArr[i5];
                    if (b3 > -65 || (((b << 28) + (b3 + 112)) >> 30) != 0) {
                        return -1;
                    }
                    int i8 = i7 + 1;
                    if (bArr[i7] > -65) {
                        return -1;
                    }
                    i4 = i8 + 1;
                    if (bArr[i8] > -65) {
                        return -1;
                    }
                }
            }
        }
        return 0;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4561o5
    /* renamed from: a */
    public final int mo25319a(CharSequence charSequence, byte[] bArr, int i, int i2) {
        int i3;
        int i4;
        char charAt;
        int length = charSequence.length();
        int i5 = i2 + i;
        int i6 = 0;
        while (i6 < length && (i4 = i6 + i) < i5 && (charAt = charSequence.charAt(i6)) < 128) {
            bArr[i4] = (byte) charAt;
            i6++;
        }
        if (i6 == length) {
            return i + length;
        }
        int i7 = i + i6;
        int i8 = i6;
        while (i8 < length) {
            char charAt2 = charSequence.charAt(i8);
            if (charAt2 < 128 && i7 < i5) {
                i7++;
                bArr[i7] = (byte) charAt2;
            } else if (charAt2 < 2048 && i7 <= i5 - 2) {
                int i9 = i7 + 1;
                bArr[i7] = (byte) ((charAt2 >>> 6) | 960);
                i7 = i9 + 1;
                bArr[i9] = (byte) ((charAt2 & '?') | 128);
            } else if ((charAt2 < 55296 || 57343 < charAt2) && i7 <= i5 - 3) {
                int i10 = i7 + 1;
                bArr[i7] = (byte) ((charAt2 >>> '\f') | 480);
                int i11 = i10 + 1;
                bArr[i10] = (byte) (((charAt2 >>> 6) & 63) | 128);
                i7 = i11 + 1;
                bArr[i11] = (byte) ((charAt2 & '?') | 128);
            } else if (i7 <= i5 - 4) {
                int i12 = i8 + 1;
                if (i12 != charSequence.length()) {
                    char charAt3 = charSequence.charAt(i12);
                    if (Character.isSurrogatePair(charAt2, charAt3)) {
                        int codePoint = Character.toCodePoint(charAt2, charAt3);
                        int i13 = i7 + 1;
                        bArr[i7] = (byte) ((codePoint >>> 18) | 240);
                        int i14 = i13 + 1;
                        bArr[i13] = (byte) (((codePoint >>> 12) & 63) | 128);
                        int i15 = i14 + 1;
                        bArr[i14] = (byte) (((codePoint >>> 6) & 63) | 128);
                        i7 = i15 + 1;
                        bArr[i15] = (byte) ((codePoint & 63) | 128);
                        i8 = i12;
                    } else {
                        i8 = i12;
                    }
                }
                throw new zzlf(i8 - 1, length);
            } else if (55296 > charAt2 || charAt2 > 57343 || ((i3 = i8 + 1) != charSequence.length() && Character.isSurrogatePair(charAt2, charSequence.charAt(i3)))) {
                StringBuilder sb = new StringBuilder(37);
                sb.append("Failed writing ");
                sb.append(charAt2);
                sb.append(" at index ");
                sb.append(i7);
                throw new ArrayIndexOutOfBoundsException(sb.toString());
            } else {
                throw new zzlf(i8, length);
            }
            i8++;
        }
        return i7;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4561o5
    /* renamed from: a */
    public final String mo25318a(byte[] bArr, int i, int i2) throws zzij {
        boolean d;
        boolean d2;
        boolean e;
        boolean f;
        boolean d3;
        if ((i | i2 | ((bArr.length - i) - i2)) >= 0) {
            int i3 = i + i2;
            char[] cArr = new char[i2];
            int i4 = 0;
            while (i < i3) {
                byte b = bArr[i];
                d3 = C4540l5.m25373d(b);
                if (!d3) {
                    break;
                }
                i++;
                C4540l5.m25375b(b, cArr, i4);
                i4++;
            }
            int i5 = i;
            int i6 = i4;
            while (i5 < i3) {
                int i7 = i5 + 1;
                byte b2 = bArr[i5];
                d = C4540l5.m25373d(b2);
                if (d) {
                    i6++;
                    C4540l5.m25375b(b2, cArr, i6);
                    i5 = i7;
                    while (i5 < i3) {
                        byte b3 = bArr[i5];
                        d2 = C4540l5.m25373d(b3);
                        if (d2) {
                            i5++;
                            C4540l5.m25375b(b3, cArr, i6);
                            i6++;
                        }
                    }
                } else {
                    e = C4540l5.m25372e(b2);
                    if (!e) {
                        f = C4540l5.m25371f(b2);
                        if (f) {
                            if (i7 < i3 - 1) {
                                int i8 = i7 + 1;
                                C4540l5.m25377b(b2, bArr[i7], bArr[i8], cArr, i6);
                                i5 = i8 + 1;
                                i6++;
                            } else {
                                throw zzij.zzh();
                            }
                        } else if (i7 < i3 - 2) {
                            int i9 = i7 + 1;
                            byte b4 = bArr[i7];
                            int i10 = i9 + 1;
                            C4540l5.m25378b(b2, b4, bArr[i9], bArr[i10], cArr, i6);
                            i5 = i10 + 1;
                            i6 = i6 + 1 + 1;
                        } else {
                            throw zzij.zzh();
                        }
                    } else if (i7 < i3) {
                        C4540l5.m25376b(b2, bArr[i7], cArr, i6);
                        i5 = i7 + 1;
                        i6++;
                    } else {
                        throw zzij.zzh();
                    }
                }
            }
            return new String(cArr, 0, i6);
        }
        throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(bArr.length), Integer.valueOf(i), Integer.valueOf(i2)));
    }
}
