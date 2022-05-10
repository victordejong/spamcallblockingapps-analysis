package p599h.p600d0;

import com.android.volley.Request;
import com.android.volley.toolbox.HttpHeaderParser;
import java.io.Closeable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.IDN;
import java.net.InetAddress;
import java.net.Socket;
import java.nio.charset.Charset;
import java.security.GeneralSecurityException;
import java.security.KeyStore;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;
import okio.ByteString;
import p599h.AbstractC10095b0;
import p599h.AbstractC10252z;
import p599h.C10234r;
import p599h.C10240u;
import p599h.p600d0.p605i.C10156a;
import p610i.AbstractC10264e;
import p610i.AbstractC10281q;
import p610i.C10260c;
/* renamed from: h.d0.c */
/* loaded from: classes2-dex2jar.jar:h/d0/c.class */
public final class C10109c {

    /* renamed from: a */
    public static final byte[] f37314a;

    /* renamed from: c */
    public static final AbstractC10095b0 f37316c;

    /* renamed from: p */
    public static final Method f37329p;

    /* renamed from: q */
    public static final Pattern f37330q;

    /* renamed from: b */
    public static final String[] f37315b = new String[0];

    /* renamed from: d */
    public static final ByteString f37317d = ByteString.decodeHex("efbbbf");

    /* renamed from: e */
    public static final ByteString f37318e = ByteString.decodeHex("feff");

    /* renamed from: f */
    public static final ByteString f37319f = ByteString.decodeHex("fffe");

    /* renamed from: g */
    public static final ByteString f37320g = ByteString.decodeHex("0000ffff");

    /* renamed from: h */
    public static final ByteString f37321h = ByteString.decodeHex("ffff0000");

    /* renamed from: i */
    public static final Charset f37322i = Charset.forName(Request.DEFAULT_PARAMS_ENCODING);

    /* renamed from: j */
    public static final Charset f37323j = Charset.forName("UTF-16BE");

    /* renamed from: k */
    public static final Charset f37324k = Charset.forName("UTF-16LE");

    /* renamed from: l */
    public static final Charset f37325l = Charset.forName("UTF-32BE");

    /* renamed from: m */
    public static final Charset f37326m = Charset.forName("UTF-32LE");

    /* renamed from: n */
    public static final TimeZone f37327n = TimeZone.getTimeZone("GMT");

    /* renamed from: o */
    public static final Comparator<String> f37328o = new C10110a();

    /* renamed from: h.d0.c$a */
    /* loaded from: classes2-dex2jar.jar:h/d0/c$a.class */
    public class C10110a implements Comparator<String> {
        /* renamed from: a */
        public int compare(String str, String str2) {
            return str.compareTo(str2);
        }
    }

    /* renamed from: h.d0.c$b */
    /* loaded from: classes2-dex2jar.jar:h/d0/c$b.class */
    public class ThreadFactoryC10111b implements ThreadFactory {

        /* renamed from: a */
        public final /* synthetic */ String f37331a;

        /* renamed from: b */
        public final /* synthetic */ boolean f37332b;

        public ThreadFactoryC10111b(String str, boolean z) {
            this.f37331a = str;
            this.f37332b = z;
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable, this.f37331a);
            thread.setDaemon(this.f37332b);
            return thread;
        }
    }

    static {
        byte[] bArr = new byte[0];
        f37314a = bArr;
        Method method = null;
        f37316c = AbstractC10095b0.m1506a(null, bArr);
        AbstractC10252z.m801a((C10240u) null, f37314a);
        Charset.forName(HttpHeaderParser.DEFAULT_CONTENT_CHARSET);
        try {
            method = Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class);
        } catch (Exception e) {
        }
        f37329p = method;
        f37330q = Pattern.compile("([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)");
    }

    /* renamed from: a */
    public static int m1468a(char c) {
        if (c >= '0' && c <= '9') {
            return c - '0';
        }
        char c2 = 'a';
        if (c < 'a' || c > 'f') {
            c2 = 'A';
            if (c < 'A' || c > 'F') {
                return -1;
            }
        }
        return (c - c2) + 10;
    }

    /* renamed from: a */
    public static int m1458a(String str, int i, int i2, char c) {
        while (i < i2) {
            if (str.charAt(i) == c) {
                return i;
            }
            i++;
        }
        return i2;
    }

    /* renamed from: a */
    public static int m1457a(String str, int i, int i2, String str2) {
        while (i < i2) {
            if (str2.indexOf(str.charAt(i)) != -1) {
                return i;
            }
            i++;
        }
        return i2;
    }

    /* renamed from: a */
    public static int m1455a(String str, long j, TimeUnit timeUnit) {
        if (j < 0) {
            throw new IllegalArgumentException(str + " < 0");
        } else if (timeUnit != null) {
            long millis = timeUnit.toMillis(j);
            if (millis > 2147483647L) {
                throw new IllegalArgumentException(str + " too large.");
            } else if (millis != 0 || j <= 0) {
                return (int) millis;
            } else {
                throw new IllegalArgumentException(str + " too small.");
            }
        } else {
            throw new NullPointerException("unit == null");
        }
    }

    /* renamed from: a */
    public static int m1449a(Comparator<String> comparator, String[] strArr, String str) {
        int length = strArr.length;
        for (int i = 0; i < length; i++) {
            if (comparator.compare(strArr[i], str) == 0) {
                return i;
            }
        }
        return -1;
    }

    /* renamed from: a */
    public static AssertionError m1454a(String str, Exception exc) {
        AssertionError assertionError = new AssertionError(str);
        try {
            assertionError.initCause(exc);
        } catch (IllegalStateException e) {
        }
        return assertionError;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0049, code lost:
        if (r3.m931j() != p599h.C10236s.m941c(r3.m928m())) goto L_0x004c;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m1466a(p599h.C10236s r3, boolean r4) {
        /*
            r0 = r3
            java.lang.String r0 = r0.m934g()
            java.lang.String r1 = ":"
            boolean r0 = r0.contains(r1)
            if (r0 == 0) goto L_0x0033
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r5 = r0
            r0 = r5
            java.lang.String r1 = "["
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r5
            r1 = r3
            java.lang.String r1 = r1.m934g()
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r5
            java.lang.String r1 = "]"
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r5
            java.lang.String r0 = r0.toString()
            r5 = r0
            goto L_0x0038
        L_0x0033:
            r0 = r3
            java.lang.String r0 = r0.m934g()
            r5 = r0
        L_0x0038:
            r0 = r4
            if (r0 != 0) goto L_0x004c
            r0 = r5
            r6 = r0
            r0 = r3
            int r0 = r0.m931j()
            r1 = r3
            java.lang.String r1 = r1.m928m()
            int r1 = p599h.C10236s.m941c(r1)
            if (r0 == r1) goto L_0x006f
        L_0x004c:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r6 = r0
            r0 = r6
            r1 = r5
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r6
            java.lang.String r1 = ":"
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r6
            r1 = r3
            int r1 = r1.m931j()
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r6
            java.lang.String r0 = r0.toString()
            r6 = r0
        L_0x006f:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p599h.p600d0.C10109c.m1466a(h.s, boolean):java.lang.String");
    }

    /* renamed from: a */
    public static String m1460a(String str) {
        if (str.contains(":")) {
            InetAddress a = (!str.startsWith("[") || !str.endsWith("]")) ? m1459a(str, 0, str.length()) : m1459a(str, 1, str.length() - 1);
            if (a == null) {
                return null;
            }
            byte[] address = a.getAddress();
            if (address.length == 16) {
                return m1445a(address);
            }
            throw new AssertionError("Invalid IPv6 address: '" + str + "'");
        }
        try {
            String lowerCase = IDN.toASCII(str).toLowerCase(Locale.US);
            if (lowerCase.isEmpty()) {
                return null;
            }
            if (m1441b(lowerCase)) {
                return null;
            }
            return lowerCase;
        } catch (IllegalArgumentException e) {
            return null;
        }
    }

    /* renamed from: a */
    public static String m1452a(String str, Object... objArr) {
        return String.format(Locale.US, str, objArr);
    }

    /* renamed from: a */
    public static String m1445a(byte[] bArr) {
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
        C10260c cVar = new C10260c();
        while (i2 < bArr.length) {
            if (i2 == i3) {
                cVar.writeByte(58);
                int i7 = i2 + i4;
                i2 = i7;
                if (i7 == 16) {
                    cVar.writeByte(58);
                    i2 = i7;
                }
            } else {
                if (i2 > 0) {
                    cVar.writeByte(58);
                }
                cVar.mo736e(((bArr[i2] & 255) << 8) | (bArr[i2 + 1] & 255));
                i2 += 2;
            }
        }
        return cVar.m767j();
    }

    /* JADX WARN: Code restructure failed: missing block: B:45:0x012f, code lost:
        if (r14 == 16) goto L_0x015b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0135, code lost:
        if (r15 != (-1)) goto L_0x013a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0138, code lost:
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x013a, code lost:
        r0 = r14 - r15;
        java.lang.System.arraycopy(r0, r15, r0, 16 - r0, r0);
        java.util.Arrays.fill(r0, r15, (16 - r14) + r15, (byte) 0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0161, code lost:
        return java.net.InetAddress.getByAddress(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x016f, code lost:
        throw new java.lang.AssertionError();
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.net.InetAddress m1459a(java.lang.String r7, int r8, int r9) {
        /*
            Method dump skipped, instructions count: 371
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p599h.p600d0.C10109c.m1459a(java.lang.String, int, int):java.net.InetAddress");
    }

    /* renamed from: a */
    public static Charset m1465a(AbstractC10264e eVar, Charset charset) throws IOException {
        if (eVar.mo724a(0L, f37317d)) {
            eVar.skip(f37317d.size());
            return f37322i;
        } else if (eVar.mo724a(0L, f37318e)) {
            eVar.skip(f37318e.size());
            return f37323j;
        } else if (eVar.mo724a(0L, f37319f)) {
            eVar.skip(f37319f.size());
            return f37324k;
        } else if (eVar.mo724a(0L, f37320g)) {
            eVar.skip(f37320g.size());
            return f37325l;
        } else if (!eVar.mo724a(0L, f37321h)) {
            return charset;
        } else {
            eVar.skip(f37321h.size());
            return f37326m;
        }
    }

    /* renamed from: a */
    public static <T> List<T> m1447a(List<T> list) {
        return Collections.unmodifiableList(new ArrayList(list));
    }

    /* renamed from: a */
    public static <T> List<T> m1444a(T... tArr) {
        return Collections.unmodifiableList(Arrays.asList((Object[]) tArr.clone()));
    }

    /* renamed from: a */
    public static <K, V> Map<K, V> m1446a(Map<K, V> map) {
        return map.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(new LinkedHashMap(map));
    }

    /* renamed from: a */
    public static ThreadFactory m1453a(String str, boolean z) {
        return new ThreadFactoryC10111b(str, z);
    }

    /* renamed from: a */
    public static X509TrustManager m1469a() {
        try {
            TrustManagerFactory instance = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
            instance.init((KeyStore) null);
            TrustManager[] trustManagers = instance.getTrustManagers();
            if (trustManagers.length == 1 && (trustManagers[0] instanceof X509TrustManager)) {
                return (X509TrustManager) trustManagers[0];
            }
            throw new IllegalStateException("Unexpected default trust managers:" + Arrays.toString(trustManagers));
        } catch (GeneralSecurityException e) {
            throw m1454a("No System TLS", (Exception) e);
        }
    }

    /* renamed from: a */
    public static void m1467a(long j, long j2, long j3) {
        if ((j2 | j3) < 0 || j2 > j || j - j2 < j3) {
            throw new ArrayIndexOutOfBoundsException();
        }
    }

    /* renamed from: a */
    public static void m1463a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception e2) {
            }
        }
    }

    /* renamed from: a */
    public static void m1451a(Throwable th, Throwable th2) {
        Method method = f37329p;
        if (method != null) {
            try {
                method.invoke(th, th2);
            } catch (IllegalAccessException | InvocationTargetException e) {
            }
        }
    }

    /* renamed from: a */
    public static void m1450a(Socket socket) {
        if (socket != null) {
            try {
                socket.close();
            } catch (AssertionError e) {
                if (!m1462a(e)) {
                    throw e;
                }
            } catch (RuntimeException e2) {
                throw e2;
            } catch (Exception e3) {
            }
        }
    }

    /* renamed from: a */
    public static boolean m1464a(AbstractC10281q qVar, int i, TimeUnit timeUnit) {
        try {
            return m1442b(qVar, i, timeUnit);
        } catch (IOException e) {
            return false;
        }
    }

    /* renamed from: a */
    public static boolean m1462a(AssertionError assertionError) {
        return (assertionError.getCause() == null || assertionError.getMessage() == null || !assertionError.getMessage().contains("getsockname failed")) ? false : true;
    }

    /* renamed from: a */
    public static boolean m1461a(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    /* renamed from: a */
    public static boolean m1456a(String str, int i, int i2, byte[] bArr, int i3) {
        char charAt;
        int i4 = i3;
        int i5 = i;
        while (i5 < i2) {
            if (i4 == bArr.length) {
                return false;
            }
            int i6 = i5;
            if (i4 != i3) {
                if (str.charAt(i5) != '.') {
                    return false;
                }
                i6 = i5 + 1;
            }
            i5 = i6;
            int i7 = 0;
            while (i5 < i2 && (charAt = str.charAt(i5)) >= '0' && charAt <= '9') {
                if (i7 == 0 && i6 != i5) {
                    return false;
                }
                i7 = ((i7 * 10) + charAt) - 48;
                if (i7 > 255) {
                    return false;
                }
                i5++;
            }
            if (i5 - i6 == 0) {
                return false;
            }
            bArr[i4] = (byte) i7;
            i4++;
        }
        return i4 == i3 + 4;
    }

    /* renamed from: a */
    public static String[] m1448a(Comparator<? super String> comparator, String[] strArr, String[] strArr2) {
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            int length = strArr2.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    break;
                } else if (comparator.compare(str, strArr2[i]) == 0) {
                    arrayList.add(str);
                    break;
                } else {
                    i++;
                }
            }
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    /* renamed from: a */
    public static String[] m1443a(String[] strArr, String str) {
        int length = strArr.length + 1;
        String[] strArr2 = new String[length];
        System.arraycopy(strArr, 0, strArr2, 0, strArr.length);
        strArr2[length - 1] = str;
        return strArr2;
    }

    /* renamed from: b */
    public static int m1440b(String str, int i, int i2) {
        while (i < i2) {
            char charAt = str.charAt(i);
            if (charAt != '\t' && charAt != '\n' && charAt != '\f' && charAt != '\r' && charAt != ' ') {
                return i;
            }
            i++;
        }
        return i2;
    }

    /* renamed from: b */
    public static C10234r m1438b(List<C10156a> list) {
        C10234r.C10235a aVar = new C10234r.C10235a();
        for (C10156a aVar2 : list) {
            AbstractC10107a.f37312a.mo842a(aVar, aVar2.f37495a.utf8(), aVar2.f37496b.utf8());
        }
        return aVar.m963a();
    }

    /* renamed from: b */
    public static boolean m1442b(AbstractC10281q qVar, int i, TimeUnit timeUnit) throws IOException {
        long nanoTime = System.nanoTime();
        long c = qVar.mo703f0().mo699d() ? qVar.mo703f0().mo700c() - nanoTime : Long.MAX_VALUE;
        qVar.mo703f0().mo697a(Math.min(c, timeUnit.toNanos(i)) + nanoTime);
        try {
            C10260c cVar = new C10260c();
            while (qVar.mo704b(cVar, 8192L) != -1) {
                cVar.m774c();
            }
            if (c == Long.MAX_VALUE) {
                qVar.mo703f0().mo702a();
                return true;
            }
            qVar.mo703f0().mo697a(nanoTime + c);
            return true;
        } catch (InterruptedIOException e) {
            if (c == Long.MAX_VALUE) {
                qVar.mo703f0().mo702a();
                return false;
            }
            qVar.mo703f0().mo697a(nanoTime + c);
            return false;
        } catch (Throwable th) {
            if (c == Long.MAX_VALUE) {
                qVar.mo703f0().mo702a();
            } else {
                qVar.mo703f0().mo697a(nanoTime + c);
            }
            throw th;
        }
    }

    /* renamed from: b */
    public static boolean m1441b(String str) {
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (charAt <= 31 || charAt >= 127 || " #%/:?@[\\]".indexOf(charAt) != -1) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: b */
    public static boolean m1439b(Comparator<String> comparator, String[] strArr, String[] strArr2) {
        if (strArr == null || strArr2 == null || strArr.length == 0 || strArr2.length == 0) {
            return false;
        }
        for (String str : strArr) {
            for (String str2 : strArr2) {
                if (comparator.compare(str, str2) == 0) {
                    return true;
                }
            }
        }
        return false;
    }

    /* renamed from: c */
    public static int m1437c(String str) {
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (charAt <= 31 || charAt >= 127) {
                return i;
            }
        }
        return -1;
    }

    /* renamed from: c */
    public static int m1436c(String str, int i, int i2) {
        while (true) {
            i2--;
            if (i2 < i) {
                return i;
            }
            char charAt = str.charAt(i2);
            if (charAt != '\t' && charAt != '\n' && charAt != '\f' && charAt != '\r' && charAt != ' ') {
                return i2 + 1;
            }
        }
    }

    /* renamed from: d */
    public static String m1434d(String str, int i, int i2) {
        int b = m1440b(str, i, i2);
        return str.substring(b, m1436c(str, b, i2));
    }

    /* renamed from: d */
    public static boolean m1435d(String str) {
        return f37330q.matcher(str).matches();
    }
}
