package com.google.android.gms.internal.icing;

import org.mozilla.javascript.typedarrays.Conversions;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzff.class */
public final class zzff {
    private static final zzfg zzmo;

    static {
        zzmo = zzfd.zzcs() && zzfd.zzct() ? new zzfj() : new zzfh();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zza(CharSequence charSequence) {
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
                            } else if (Character.codePointAt(charSequence, i4) < 65536) {
                                throw new zzfi(i4, length2);
                            } else {
                                i2 = i4 + 1;
                                i3 = i6;
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
        sb.append(i + Conversions.THIRTYTWO_BIT);
        throw new IllegalArgumentException(sb.toString());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zza(CharSequence charSequence, byte[] bArr, int i, int i2) {
        return zzmo.zzb(charSequence, bArr, i, i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int zzah(int i) {
        int i2 = i;
        if (i > -12) {
            i2 = -1;
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int zzc(int i, int i2, int i3) {
        if (i > -12 || i2 > -65 || i3 > -65) {
            return -1;
        }
        return (i ^ (i2 << 8)) ^ (i3 << 16);
    }

    public static boolean zzc(byte[] bArr, int i, int i2) {
        return zzmo.zzc(bArr, i, i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int zzd(byte[] bArr, int i, int i2) {
        byte b = bArr[i - 1];
        switch (i2 - i) {
            case 0:
                return zzah(b);
            case 1:
                return zzo(b, bArr[i]);
            case 2:
                return zzc(b, bArr[i], bArr[i + 1]);
            default:
                throw new AssertionError();
        }
    }

    public static boolean zzd(byte[] bArr) {
        return zzmo.zzc(bArr, 0, bArr.length);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int zzo(int i, int i2) {
        if (i > -12 || i2 > -65) {
            return -1;
        }
        return i ^ (i2 << 8);
    }
}
