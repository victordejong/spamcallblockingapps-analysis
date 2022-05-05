package p000a.p001a.p002a.p003a.p004a.p010e;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.Flushable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.MalformedURLException;
import java.net.Proxy;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.zip.GZIPInputStream;
/* renamed from: a.a.a.a.a.e.e */
/* loaded from: classes-dex2jar.jar:a/a/a/a/a/e/e.class */
public final class C0093e {

    /* renamed from: b */
    private static final String[] f176b = new String[0];

    /* renamed from: c */
    private static AbstractC0095b f177c = AbstractC0095b.f190a;

    /* renamed from: a */
    public final URL f178a;

    /* renamed from: e */
    private final String f180e;

    /* renamed from: f */
    private C0098e f181f;

    /* renamed from: g */
    private boolean f182g;

    /* renamed from: k */
    private String f186k;

    /* renamed from: l */
    private int f187l;

    /* renamed from: d */
    private HttpURLConnection f179d = null;

    /* renamed from: h */
    private boolean f183h = true;

    /* renamed from: i */
    private boolean f184i = false;

    /* renamed from: j */
    private int f185j = 8192;

    /* renamed from: a.a.a.a.a.e.e$a */
    /* loaded from: classes-dex2jar.jar:a/a/a/a/a/e/e$a.class */
    protected static abstract class AbstractC0094a<V> extends AbstractCallableC0097d<V> {

        /* renamed from: a */
        private final Closeable f188a;

        /* renamed from: b */
        private final boolean f189b;

        /* JADX INFO: Access modifiers changed from: protected */
        public AbstractC0094a(Closeable closeable, boolean z) {
            this.f188a = closeable;
            this.f189b = z;
        }

        @Override // p000a.p001a.p002a.p003a.p004a.p010e.C0093e.AbstractCallableC0097d
        /* renamed from: b */
        protected final void mo10206b() {
            Closeable closeable = this.f188a;
            if (closeable instanceof Flushable) {
                ((Flushable) closeable).flush();
            }
            if (this.f189b) {
                try {
                    this.f188a.close();
                } catch (IOException e) {
                }
            } else {
                this.f188a.close();
            }
        }
    }

    /* renamed from: a.a.a.a.a.e.e$b */
    /* loaded from: classes-dex2jar.jar:a/a/a/a/a/e/e$b.class */
    public interface AbstractC0095b {

        /* renamed from: a */
        public static final AbstractC0095b f190a = new C0100g();

        /* renamed from: a */
        HttpURLConnection mo10203a(URL url);

        /* renamed from: a */
        HttpURLConnection mo10202a(URL url, Proxy proxy);
    }

    /* renamed from: a.a.a.a.a.e.e$c */
    /* loaded from: classes-dex2jar.jar:a/a/a/a/a/e/e$c.class */
    public static final class C0096c extends RuntimeException {
        protected C0096c(IOException iOException) {
            super(iOException);
        }

        @Override // java.lang.Throwable
        public final /* bridge */ /* synthetic */ Throwable getCause() {
            return (IOException) super.getCause();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a.a.a.a.a.e.e$d */
    /* loaded from: classes-dex2jar.jar:a/a/a/a/a/e/e$d.class */
    public static abstract class AbstractCallableC0097d<V> implements Callable<V> {
        protected AbstractCallableC0097d() {
        }

        /* renamed from: a */
        protected abstract V mo10204a();

        /* renamed from: b */
        protected abstract void mo10206b();

        @Override // java.util.concurrent.Callable
        public V call() {
            Throwable th;
            boolean z = true;
            try {
                try {
                    try {
                        V a = mo10204a();
                        try {
                            mo10206b();
                            return a;
                        } catch (IOException e) {
                            throw new C0096c(e);
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        try {
                            mo10206b();
                        } catch (IOException e2) {
                            if (!z) {
                                throw new C0096c(e2);
                            }
                        }
                        throw th;
                    }
                } catch (C0096c e3) {
                    throw e3;
                }
            } catch (IOException e4) {
                throw new C0096c(e4);
            } catch (Throwable th3) {
                th = th3;
                z = false;
                mo10206b();
                throw th;
            }
        }
    }

    /* renamed from: a.a.a.a.a.e.e$e */
    /* loaded from: classes-dex2jar.jar:a/a/a/a/a/e/e$e.class */
    public static final class C0098e extends BufferedOutputStream {

        /* renamed from: a */
        private final CharsetEncoder f191a;

        public C0098e(OutputStream outputStream, String str, int i) {
            super(outputStream, i);
            this.f191a = Charset.forName(C0093e.m10219c(str)).newEncoder();
        }

        /* renamed from: a */
        public final C0098e m10205a(String str) {
            ByteBuffer encode = this.f191a.encode(CharBuffer.wrap(str));
            super.write(encode.array(), 0, encode.limit());
            return this;
        }
    }

    private C0093e(CharSequence charSequence, String str) {
        try {
            this.f178a = new URL(charSequence.toString());
            this.f180e = str;
        } catch (MalformedURLException e) {
            throw new C0096c(e);
        }
    }

    /* renamed from: a */
    private C0093e m10236a(InputStream inputStream, OutputStream outputStream) {
        return new C0099f(this, inputStream, this.f183h, inputStream, outputStream).call();
    }

    /* renamed from: a */
    public static C0093e m10235a(CharSequence charSequence) {
        return new C0093e(charSequence, "PUT");
    }

    /* renamed from: a */
    public static C0093e m10234a(CharSequence charSequence, Map<?, ?> map) {
        return new C0093e(m10221c((CharSequence) m10220c(charSequence, map)), "GET");
    }

    /* renamed from: a */
    private C0093e m10230a(String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder();
        sb.append("form-data; name=\"");
        sb.append(str);
        if (str2 != null) {
            sb.append("\"; filename=\"");
            sb.append(str2);
        }
        sb.append('\"');
        m10212e("Content-Disposition", sb.toString());
        if (str3 != null) {
            m10212e("Content-Type", str3);
        }
        return m10216d("\r\n");
    }

    /* renamed from: b */
    public static C0093e m10226b(CharSequence charSequence) {
        return new C0093e(charSequence, "DELETE");
    }

    /* renamed from: b */
    public static C0093e m10225b(CharSequence charSequence, Map<?, ?> map) {
        return new C0093e(m10221c((CharSequence) m10220c(charSequence, map)), "POST");
    }

    /* renamed from: c */
    private static String m10221c(CharSequence charSequence) {
        int port;
        int i;
        try {
            URL url = new URL(charSequence.toString());
            String host = url.getHost();
            String str = host;
            if (url.getPort() != -1) {
                str = host + ':' + Integer.toString(port);
            }
            try {
                String aSCIIString = new URI(url.getProtocol(), str, url.getPath(), url.getQuery(), url.getRef()).toASCIIString();
                int indexOf = aSCIIString.indexOf(63);
                String str2 = aSCIIString;
                if (indexOf > 0) {
                    str2 = aSCIIString;
                    if (indexOf + 1 < aSCIIString.length()) {
                        str2 = aSCIIString.substring(0, i) + aSCIIString.substring(i).replace("+", "%2B").replace("#", "%23");
                    }
                }
                return str2;
            } catch (URISyntaxException e) {
                IOException iOException = new IOException("Parsing URI failed");
                iOException.initCause(e);
                throw new C0096c(iOException);
            }
        } catch (IOException e2) {
            throw new C0096c(e2);
        }
    }

    /* renamed from: c */
    private static String m10220c(CharSequence charSequence, Map<?, ?> map) {
        String charSequence2 = charSequence.toString();
        String str = charSequence2;
        if (map != null) {
            if (map.isEmpty()) {
                str = charSequence2;
            } else {
                StringBuilder sb = new StringBuilder(charSequence2);
                if (charSequence2.indexOf(58) + 2 == charSequence2.lastIndexOf(47)) {
                    sb.append('/');
                }
                int indexOf = charSequence2.indexOf(63);
                int length = sb.length() - 1;
                if (indexOf == -1) {
                    sb.append('?');
                } else if (indexOf < length && charSequence2.charAt(length) != '&') {
                    sb.append('&');
                }
                Iterator<Map.Entry<?, ?>> it = map.entrySet().iterator();
                Map.Entry<?, ?> next = it.next();
                sb.append(next.getKey().toString());
                sb.append('=');
                Object value = next.getValue();
                if (value != null) {
                    sb.append(value);
                }
                while (it.hasNext()) {
                    sb.append('&');
                    Map.Entry<?, ?> next2 = it.next();
                    sb.append(next2.getKey().toString());
                    sb.append('=');
                    Object value2 = next2.getValue();
                    if (value2 != null) {
                        sb.append(value2);
                    }
                }
                str = sb.toString();
            }
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public static String m10219c(String str) {
        return (str == null || str.length() <= 0) ? "UTF-8" : str;
    }

    /* renamed from: c */
    private static String m10218c(String str, String str2) {
        String trim;
        int length;
        if (str == null || str.length() == 0) {
            return null;
        }
        int length2 = str.length();
        int indexOf = str.indexOf(59) + 1;
        if (indexOf == 0 || indexOf == length2) {
            return null;
        }
        int indexOf2 = str.indexOf(59, indexOf);
        int i = indexOf;
        int i2 = indexOf2;
        if (indexOf2 == -1) {
            i = indexOf;
            i2 = length2;
        }
        while (i < i2) {
            int indexOf3 = str.indexOf(61, i);
            if (indexOf3 == -1 || indexOf3 >= i2 || !str2.equals(str.substring(i, indexOf3).trim()) || (length = (trim = str.substring(indexOf3 + 1, i2).trim()).length()) == 0) {
                int i3 = i2 + 1;
                int indexOf4 = str.indexOf(59, i3);
                i = i3;
                i2 = indexOf4;
                if (indexOf4 == -1) {
                    i = i3;
                    i2 = length2;
                }
            } else {
                if (length > 2 && '\"' == trim.charAt(0)) {
                    int i4 = length - 1;
                    if ('\"' == trim.charAt(i4)) {
                        return trim.substring(1, i4);
                    }
                }
                return trim;
            }
        }
        return null;
    }

    /* renamed from: d */
    private C0093e m10216d(CharSequence charSequence) {
        try {
            m10208i();
            this.f181f.m10205a(charSequence.toString());
            return this;
        } catch (IOException e) {
            throw new C0096c(e);
        }
    }

    /* renamed from: d */
    private C0093e m10214d(String str, String str2) {
        try {
            m10207j();
            m10230a(str, null, null);
            this.f181f.m10205a(str2);
            return this;
        } catch (IOException e) {
            throw new C0096c(e);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [int, java.io.ByteArrayOutputStream] */
    /* JADX WARN: Type inference failed for: r0v4, types: [java.io.OutputStream, java.io.BufferedInputStream, java.io.ByteArrayOutputStream, java.io.InputStream] */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String m10215d(java.lang.String r5) {
        /*
            r4 = this;
            r0 = r4
            a.a.a.a.a.e.e r0 = r0.m10209h()
            r0 = r4
            java.net.HttpURLConnection r0 = r0.m10238a()
            java.lang.String r1 = "Content-Length"
            r2 = -1
            int r0 = r0.getHeaderFieldInt(r1, r2)
            r6 = r0
            java.io.ByteArrayOutputStream r0 = new java.io.ByteArrayOutputStream
            r7 = r0
            r0 = r6
            if (r0 <= 0) goto L_0x0021
            r0 = r7
            r1 = r6
            r0.<init>(r1)
            goto L_0x0025
        L_0x0021:
            r0 = r7
            r0.<init>()
        L_0x0025:
            java.io.BufferedInputStream r0 = new java.io.BufferedInputStream     // Catch: IOException -> 0x004a
            r8 = r0
            r0 = r8
            r1 = r4
            java.io.InputStream r1 = r1.m10211f()     // Catch: IOException -> 0x004a
            r2 = r4
            int r2 = r2.f185j     // Catch: IOException -> 0x004a
            r0.<init>(r1, r2)     // Catch: IOException -> 0x004a
            r0 = r4
            r1 = r8
            r2 = r7
            a.a.a.a.a.e.e r0 = r0.m10236a(r1, r2)     // Catch: IOException -> 0x004a
            r0 = r7
            r1 = r5
            java.lang.String r1 = m10219c(r1)     // Catch: IOException -> 0x004a
            java.lang.String r0 = r0.toString(r1)     // Catch: IOException -> 0x004a
            r5 = r0
            r0 = r5
            return r0
        L_0x004a:
            r5 = move-exception
            a.a.a.a.a.e.e$c r0 = new a.a.a.a.a.e.e$c
            r1 = r0
            r2 = r5
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p000a.p001a.p002a.p003a.p004a.p010e.C0093e.m10215d(java.lang.String):java.lang.String");
    }

    /* renamed from: e */
    private C0093e m10212e(String str, String str2) {
        return m10216d((CharSequence) str).m10216d(": ").m10216d((CharSequence) str2).m10216d("\r\n");
    }

    /* renamed from: e */
    private HttpURLConnection m10213e() {
        try {
            HttpURLConnection a = this.f186k != null ? f177c.mo10202a(this.f178a, new Proxy(Proxy.Type.HTTP, new InetSocketAddress(this.f186k, this.f187l))) : f177c.mo10203a(this.f178a);
            a.setRequestMethod(this.f180e);
            return a;
        } catch (IOException e) {
            throw new C0096c(e);
        }
    }

    /* renamed from: f */
    private InputStream m10211f() {
        InputStream inputStream;
        if (m10227b() < 400) {
            try {
                inputStream = m10238a().getInputStream();
            } catch (IOException e) {
                throw new C0096c(e);
            }
        } else {
            InputStream errorStream = m10238a().getErrorStream();
            inputStream = errorStream;
            if (errorStream == null) {
                try {
                    inputStream = m10238a().getInputStream();
                } catch (IOException e2) {
                    throw new C0096c(e2);
                }
            }
        }
        if (!this.f184i || !"gzip".equals(m10233a("Content-Encoding"))) {
            return inputStream;
        }
        try {
            return new GZIPInputStream(inputStream);
        } catch (IOException e3) {
            throw new C0096c(e3);
        }
    }

    /* renamed from: g */
    private C0093e m10210g() {
        C0098e eVar = this.f181f;
        if (eVar == null) {
            return this;
        }
        if (this.f182g) {
            eVar.m10205a("\r\n--00content0boundary00--\r\n");
        }
        if (this.f183h) {
            try {
                this.f181f.close();
            } catch (IOException e) {
            }
        } else {
            this.f181f.close();
        }
        this.f181f = null;
        return this;
    }

    /* renamed from: h */
    private C0093e m10209h() {
        try {
            return m10210g();
        } catch (IOException e) {
            throw new C0096c(e);
        }
    }

    /* renamed from: i */
    private C0093e m10208i() {
        if (this.f181f != null) {
            return this;
        }
        m10238a().setDoOutput(true);
        this.f181f = new C0098e(m10238a().getOutputStream(), m10218c(m10238a().getRequestProperty("Content-Type"), "charset"), this.f185j);
        return this;
    }

    /* renamed from: j */
    private C0093e m10207j() {
        String str;
        C0098e eVar;
        if (!this.f182g) {
            this.f182g = true;
            m10231a("Content-Type", "multipart/form-data; boundary=00content0boundary00").m10208i();
            eVar = this.f181f;
            str = "--00content0boundary00\r\n";
        } else {
            eVar = this.f181f;
            str = "\r\n--00content0boundary00\r\n";
        }
        eVar.m10205a(str);
        return this;
    }

    /* renamed from: a */
    public final C0093e m10232a(String str, Number number) {
        return m10214d(str, number != null ? number.toString() : null);
    }

    /* renamed from: a */
    public final C0093e m10231a(String str, String str2) {
        m10238a().setRequestProperty(str, str2);
        return this;
    }

    /* renamed from: a */
    public final C0093e m10229a(String str, String str2, String str3, File file) {
        Throwable th;
        IOException e;
        BufferedInputStream bufferedInputStream;
        r7 = null;
        BufferedInputStream bufferedInputStream2 = null;
        try {
            try {
                bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
            } catch (IOException e2) {
                e = e2;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            C0093e a = m10228a(str, str2, str3, bufferedInputStream);
            try {
                bufferedInputStream.close();
            } catch (IOException e3) {
            }
            return a;
        } catch (IOException e4) {
            e = e4;
            bufferedInputStream2 = bufferedInputStream;
            throw new C0096c(e);
        } catch (Throwable th3) {
            th = th3;
            bufferedInputStream2 = bufferedInputStream;
            if (bufferedInputStream2 != null) {
                try {
                    bufferedInputStream2.close();
                } catch (IOException e5) {
                }
            }
            throw th;
        }
    }

    /* renamed from: a */
    public final C0093e m10228a(String str, String str2, String str3, InputStream inputStream) {
        try {
            m10207j();
            m10230a(str, str2, str3);
            m10236a(inputStream, this.f181f);
            return this;
        } catch (IOException e) {
            throw new C0096c(e);
        }
    }

    /* renamed from: a */
    public final String m10233a(String str) {
        m10209h();
        return m10238a().getHeaderField(str);
    }

    /* renamed from: a */
    public final HttpURLConnection m10238a() {
        if (this.f179d == null) {
            this.f179d = m10213e();
        }
        return this.f179d;
    }

    /* renamed from: b */
    public final int m10227b() {
        try {
            m10210g();
            return m10238a().getResponseCode();
        } catch (IOException e) {
            throw new C0096c(e);
        }
    }

    /* renamed from: b */
    public final C0093e m10223b(String str, String str2) {
        return m10214d(str, str2);
    }

    /* renamed from: c */
    public final String m10222c() {
        return m10215d(m10218c(m10233a("Content-Type"), "charset"));
    }

    /* renamed from: d */
    public final String m10217d() {
        return m10238a().getRequestMethod();
    }

    public final String toString() {
        return m10238a().getRequestMethod() + ' ' + m10238a().getURL();
    }
}
