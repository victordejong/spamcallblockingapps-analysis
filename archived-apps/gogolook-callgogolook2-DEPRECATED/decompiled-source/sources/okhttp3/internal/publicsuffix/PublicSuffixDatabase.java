package okhttp3.internal.publicsuffix;

import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.net.IDN;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;
import okhttp3.internal.Util;
import okhttp3.internal.platform.Platform;
import p645m.AbstractC15174e;
import p645m.C15179j;
import p645m.C15181l;
/* loaded from: classes3-dex2jar.jar:okhttp3/internal/publicsuffix/PublicSuffixDatabase.class */
public final class PublicSuffixDatabase {
    public byte[] publicSuffixExceptionListBytes;
    public byte[] publicSuffixListBytes;
    public static final byte[] WILDCARD_LABEL = {42};
    public static final String[] EMPTY_RULE = new String[0];
    public static final String[] PREVAILING_RULE = {"*"};
    public static final PublicSuffixDatabase instance = new PublicSuffixDatabase();
    public final AtomicBoolean listRead = new AtomicBoolean(false);
    public final CountDownLatch readCompleteLatch = new CountDownLatch(1);

    public static String binarySearchBytes(byte[] bArr, byte[][] bArr2, int i) {
        String str;
        int i2;
        int i3;
        int i4;
        int length = bArr.length;
        int i5 = 0;
        while (true) {
            if (i5 >= length) {
                str = null;
                break;
            }
            int i6 = (i5 + length) / 2;
            while (i6 > -1 && bArr[i6] != 10) {
                i6--;
            }
            int i7 = i6 + 1;
            int i8 = 1;
            while (true) {
                i2 = i7 + i8;
                if (bArr[i2] == 10) {
                    break;
                }
                i8++;
            }
            int i9 = i2 - i7;
            int i10 = i;
            boolean z = false;
            int i11 = 0;
            int i12 = 0;
            while (true) {
                if (z) {
                    z = false;
                    i3 = 46;
                } else {
                    i3 = bArr2[i10][i11] & 255;
                }
                i4 = i3 - (bArr[i7 + i12] & 255);
                if (i4 != 0) {
                    break;
                }
                int i13 = i12 + 1;
                int i14 = i11 + 1;
                if (i13 == i9) {
                    i11 = i14;
                    i12 = i13;
                    break;
                }
                i11 = i14;
                i12 = i13;
                if (bArr2[i10].length == i14) {
                    if (i10 == bArr2.length - 1) {
                        i12 = i13;
                        i11 = i14;
                        break;
                    }
                    i10++;
                    z = true;
                    i11 = -1;
                    i12 = i13;
                }
            }
            if (i4 >= 0) {
                if (i4 <= 0) {
                    int i15 = i9 - i12;
                    int length2 = bArr2[i10].length - i11;
                    while (true) {
                        i10++;
                        if (i10 >= bArr2.length) {
                            break;
                        }
                        length2 += bArr2[i10].length;
                    }
                    if (length2 >= i15) {
                        if (length2 <= i15) {
                            str = new String(bArr, i7, i9, Util.UTF_8);
                            break;
                        }
                    }
                }
                i5 = i2 + 1;
            }
            length = i7 - 1;
        }
        return str;
    }

    public static PublicSuffixDatabase get() {
        return instance;
    }

    /* JADX WARN: Type inference failed for: r0v19, types: [java.lang.Object, byte[], byte[][]] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String[] findMatchingRule(java.lang.String[] r6) {
        /*
            Method dump skipped, instructions count: 377
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.publicsuffix.PublicSuffixDatabase.findMatchingRule(java.lang.String[]):java.lang.String[]");
    }

    public String getEffectiveTldPlusOne(String str) {
        int i;
        int i2;
        if (str != null) {
            String[] split = IDN.toUnicode(str).split("\\.");
            String[] findMatchingRule = findMatchingRule(split);
            if (split.length == findMatchingRule.length && findMatchingRule[0].charAt(0) != '!') {
                return null;
            }
            if (findMatchingRule[0].charAt(0) == '!') {
                i2 = split.length;
                i = findMatchingRule.length;
            } else {
                i2 = split.length;
                i = findMatchingRule.length + 1;
            }
            StringBuilder sb = new StringBuilder();
            String[] split2 = str.split("\\.");
            for (int i3 = i2 - i; i3 < split2.length; i3++) {
                sb.append(split2[i3]);
                sb.append('.');
            }
            sb.deleteCharAt(sb.length() - 1);
            return sb.toString();
        }
        throw new NullPointerException("domain == null");
    }

    public final void readTheList() throws IOException {
        InputStream resourceAsStream = PublicSuffixDatabase.class.getResourceAsStream("publicsuffixes.gz");
        if (resourceAsStream != null) {
            AbstractC15174e a = C15181l.m318a(new C15179j(C15181l.m325a(resourceAsStream)));
            try {
                byte[] bArr = new byte[a.readInt()];
                a.readFully(bArr);
                byte[] bArr2 = new byte[a.readInt()];
                a.readFully(bArr2);
                synchronized (this) {
                    this.publicSuffixListBytes = bArr;
                    this.publicSuffixExceptionListBytes = bArr2;
                }
                this.readCompleteLatch.countDown();
            } finally {
                Util.closeQuietly(a);
            }
        }
    }

    public final void readTheListUninterruptibly() {
        boolean z = false;
        while (true) {
            try {
                try {
                    try {
                        readTheList();
                        break;
                    } catch (IOException e) {
                        Platform.get().log(5, "Failed to read public suffix list", e);
                        if (z) {
                            Thread.currentThread().interrupt();
                            return;
                        }
                        return;
                    }
                } catch (InterruptedIOException e2) {
                    Thread.interrupted();
                    z = true;
                }
            } catch (Throwable th) {
                if (z) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
    }
}
