package okhttp3.internal;

import java.net.InetAddress;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import okio.Buffer;
@Metadata(bv = {1, 0, 3}, d1 = {"��&\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\u001a7\u0010\t\u001a\u00020\b2\u0006\u0010\u0001\u001a\u00020��2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\t\u0010\n\u001a)\u0010\f\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0001\u001a\u00020��2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\f\u0010\r\u001a\u0017\u0010\u000e\u001a\u00020��2\u0006\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u000e\u0010\u000f\u001a\u0013\u0010\u0010\u001a\u00020\b*\u00020��H\u0002¢\u0006\u0004\b\u0010\u0010\u0011\u001a\u0013\u0010\u0012\u001a\u0004\u0018\u00010��*\u00020��¢\u0006\u0004\b\u0012\u0010\u0013¨\u0006\u0014"}, d2 = {"", "input", "", "pos", "limit", "", "address", "addressOffset", "", "decodeIpv4Suffix", "(Ljava/lang/String;II[BI)Z", "Ljava/net/InetAddress;", "decodeIpv6", "(Ljava/lang/String;II)Ljava/net/InetAddress;", "inet6AddressToAscii", "([B)Ljava/lang/String;", "containsInvalidHostnameAsciiCodes", "(Ljava/lang/String;)Z", "toCanonicalHost", "(Ljava/lang/String;)Ljava/lang/String;", "okhttp"}, k = 2, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:okhttp3/internal/HostnamesKt.class */
public final class HostnamesKt {
    private static final boolean containsInvalidHostnameAsciiCodes(String str) {
        int T;
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (Intrinsics.m1828g(charAt, 31) <= 0 || Intrinsics.m1828g(charAt, 127) >= 0) {
                return true;
            }
            T = StringsKt__StringsKt.m1454T(" #%/:?@[\\]", charAt, 0, false, 6, null);
            if (T != -1) {
                return true;
            }
        }
        return false;
    }

    private static final boolean decodeIpv4Suffix(String str, int i, int i2, byte[] bArr, int i3) {
        int i4 = i3;
        int i5 = i;
        while (true) {
            boolean z = false;
            if (i5 >= i2) {
                if (i4 == i3 + 4) {
                    z = true;
                }
                return z;
            } else if (i4 == bArr.length) {
                return false;
            } else {
                int i6 = i5;
                if (i4 != i3) {
                    if (str.charAt(i5) != '.') {
                        return false;
                    }
                    i6 = i5 + 1;
                }
                i5 = i6;
                int i7 = 0;
                while (i5 < i2) {
                    char charAt = str.charAt(i5);
                    if (Intrinsics.m1828g(charAt, 48) < 0 || Intrinsics.m1828g(charAt, 57) > 0) {
                        break;
                    } else if (i7 == 0 && i6 != i5) {
                        return false;
                    } else {
                        i7 = ((i7 * 10) + charAt) - 48;
                        if (i7 > 255) {
                            return false;
                        }
                        i5++;
                    }
                }
                if (i5 - i6 == 0) {
                    return false;
                }
                bArr[i4] = (byte) i7;
                i4++;
            }
        }
    }

    private static final InetAddress decodeIpv6(String str, int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int parseHexDigit;
        boolean B;
        boolean B2;
        boolean B3;
        byte[] bArr = new byte[16];
        int i10 = 0;
        int i11 = -1;
        int i12 = -1;
        int i13 = i;
        while (true) {
            i3 = i10;
            i4 = i11;
            if (i13 >= i2) {
                break;
            } else if (i10 == 16) {
                return null;
            } else {
                int i14 = i13 + 2;
                if (i14 <= i2) {
                    B3 = StringsKt__StringsJVMKt.m1492B(str, "::", i13, false, 4, null);
                    if (B3) {
                        if (i11 != -1) {
                            return null;
                        }
                        i3 = i10 + 2;
                        if (i14 == i2) {
                            i4 = i3;
                            break;
                        }
                        i11 = i3;
                        i5 = i3;
                        i6 = i14;
                        i7 = i6;
                        i8 = 0;
                        while (i7 < i2 && (parseHexDigit = Util.parseHexDigit(str.charAt(i7))) != -1) {
                            i8 = (i8 << 4) + parseHexDigit;
                            i7++;
                        }
                        i9 = i7 - i6;
                        if (i9 == 0 && i9 <= 4) {
                            int i15 = i5 + 1;
                            bArr[i5] = (byte) ((i8 >>> 8) & 255);
                            i10 = i15 + 1;
                            bArr[i15] = (byte) (i8 & 255);
                            i13 = i7;
                            i12 = i6;
                        }
                    }
                }
                i6 = i13;
                if (i10 != 0) {
                    B = StringsKt__StringsJVMKt.m1492B(str, ":", i13, false, 4, null);
                    if (B) {
                        i6 = i13 + 1;
                    } else {
                        B2 = StringsKt__StringsJVMKt.m1492B(str, ".", i13, false, 4, null);
                        if (!B2 || !decodeIpv4Suffix(str, i12, i2, bArr, i10 - 2)) {
                            return null;
                        }
                        i3 = i10 + 2;
                        i4 = i11;
                    }
                }
                i5 = i10;
                i7 = i6;
                i8 = 0;
                while (i7 < i2) {
                    i8 = (i8 << 4) + parseHexDigit;
                    i7++;
                }
                i9 = i7 - i6;
                return i9 == 0 ? null : null;
            }
        }
        if (i3 != 16) {
            if (i4 == -1) {
                return null;
            }
            int i16 = i3 - i4;
            System.arraycopy(bArr, i4, bArr, 16 - i16, i16);
            Arrays.fill(bArr, i4, (16 - i3) + i4, (byte) 0);
        }
        return InetAddress.getByAddress(bArr);
    }

    private static final String inet6AddressToAscii(byte[] bArr) {
        int i;
        int i2 = 0;
        int i3 = -1;
        int i4 = 0;
        for (int i5 = 0; i5 < bArr.length; i5 = i + 2) {
            i = i5;
            while (i < 16 && bArr[i] == 0 && bArr[i + 1] == 0) {
                i += 2;
            }
            int i6 = i - i5;
            i3 = i3;
            i4 = i4;
            if (i6 > i4) {
                i3 = i3;
                i4 = i4;
                if (i6 >= 4) {
                    i4 = i6;
                    i3 = i5;
                }
            }
        }
        Buffer buffer = new Buffer();
        while (i2 < bArr.length) {
            if (i2 == i3) {
                buffer.m222D0(58);
                int i7 = i2 + i4;
                i2 = i7;
                if (i7 == 16) {
                    buffer.m222D0(58);
                    i2 = i7;
                }
            } else {
                if (i2 > 0) {
                    buffer.m222D0(58);
                }
                buffer.m220F0((Util.and(bArr[i2], 255) << 8) | Util.and(bArr[i2 + 1], 255));
                i2 += 2;
            }
        }
        return buffer.m199e0();
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0095 A[RETURN] */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.String toCanonicalHost(@org.jetbrains.annotations.NotNull java.lang.String r6) {
        /*
            Method dump skipped, instructions count: 234
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.HostnamesKt.toCanonicalHost(java.lang.String):java.lang.String");
    }
}
