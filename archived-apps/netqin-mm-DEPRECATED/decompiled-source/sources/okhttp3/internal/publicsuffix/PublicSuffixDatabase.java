package okhttp3.internal.publicsuffix;

import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.net.IDN;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;
import p599h.p600d0.C10109c;
import p599h.p600d0.p607k.C10203f;
import p610i.AbstractC10264e;
import p610i.C10268i;
import p610i.C10270k;
/* loaded from: classes2-dex2jar.jar:okhttp3/internal/publicsuffix/PublicSuffixDatabase.class */
public final class PublicSuffixDatabase {

    /* renamed from: e */
    public static final byte[] f38760e = {42};

    /* renamed from: f */
    public static final String[] f38761f = new String[0];

    /* renamed from: g */
    public static final String[] f38762g = {"*"};

    /* renamed from: h */
    public static final PublicSuffixDatabase f38763h = new PublicSuffixDatabase();

    /* renamed from: a */
    public final AtomicBoolean f38764a = new AtomicBoolean(false);

    /* renamed from: b */
    public final CountDownLatch f38765b = new CountDownLatch(1);

    /* renamed from: c */
    public byte[] f38766c;

    /* renamed from: d */
    public byte[] f38767d;

    /* renamed from: a */
    public static String m8a(byte[] bArr, byte[][] bArr2, int i) {
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
                    i3 = 46;
                    z = false;
                } else {
                    i3 = bArr2[i10][i11] & 255;
                }
                i4 = i3 - (bArr[i7 + i12] & 255);
                if (i4 == 0) {
                    i12++;
                    i11++;
                    if (i12 == i9) {
                        break;
                    } else if (bArr2[i10].length == i11) {
                        if (i10 == bArr2.length - 1) {
                            break;
                        }
                        i10++;
                        z = true;
                        i11 = -1;
                    }
                } else {
                    break;
                }
            }
            if (i4 >= 0) {
                if (i4 <= 0) {
                    int i13 = i9 - i12;
                    int length2 = bArr2[i10].length - i11;
                    while (true) {
                        i10++;
                        if (i10 >= bArr2.length) {
                            break;
                        }
                        length2 += bArr2[i10].length;
                    }
                    if (length2 >= i13) {
                        if (length2 <= i13) {
                            str = new String(bArr, i7, i9, C10109c.f37322i);
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

    /* renamed from: c */
    public static PublicSuffixDatabase m5c() {
        return f38763h;
    }

    /* renamed from: a */
    public String m9a(String str) {
        int i;
        int i2;
        if (str != null) {
            String[] split = IDN.toUnicode(str).split("\\.");
            String[] a = m7a(split);
            if (split.length == a.length && a[0].charAt(0) != '!') {
                return null;
            }
            if (a[0].charAt(0) == '!') {
                i2 = split.length;
                i = a.length;
            } else {
                i2 = split.length;
                i = a.length + 1;
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

    /* renamed from: a */
    public final void m10a() throws IOException {
        InputStream resourceAsStream = PublicSuffixDatabase.class.getResourceAsStream("publicsuffixes.gz");
        if (resourceAsStream != null) {
            AbstractC10264e a = C10270k.m753a(new C10268i(C10270k.m751a(resourceAsStream)));
            try {
                byte[] bArr = new byte[a.readInt()];
                a.readFully(bArr);
                byte[] bArr2 = new byte[a.readInt()];
                a.readFully(bArr2);
                synchronized (this) {
                    this.f38766c = bArr;
                    this.f38767d = bArr2;
                }
                this.f38765b.countDown();
            } finally {
                C10109c.m1463a(a);
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v20, types: [byte[], byte[][], java.lang.Object] */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String[] m7a(java.lang.String[] r6) {
        /*
            Method dump skipped, instructions count: 392
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.publicsuffix.PublicSuffixDatabase.m7a(java.lang.String[]):java.lang.String[]");
    }

    /* renamed from: b */
    public final void m6b() {
        boolean z = false;
        while (true) {
            try {
                try {
                    try {
                        m10a();
                        break;
                    } catch (IOException e) {
                        C10203f.m1071d().mo1086a(5, "Failed to read public suffix list", e);
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
