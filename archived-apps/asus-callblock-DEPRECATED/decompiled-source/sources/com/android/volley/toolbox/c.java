package com.android.volley.toolbox;

import android.os.SystemClock;
import com.android.volley.b;
import com.android.volley.v;
import com.asus.updatesdk.BuildConfig;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/android/volley/toolbox/c.class */
public final class c implements com.android.volley.b {

    /* renamed from: a  reason: collision with root package name */
    private final Map<String, a> f2322a;

    /* renamed from: b  reason: collision with root package name */
    private long f2323b;
    private final File c;
    private final int d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/android/volley/toolbox/c$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public long f2324a;

        /* renamed from: b  reason: collision with root package name */
        public String f2325b;
        public String c;
        public long d;
        public long e;
        public long f;
        public long g;
        public Map<String, String> h;

        private a() {
        }

        public a(String str, b.a aVar) {
            this.f2325b = str;
            this.f2324a = aVar.f2284a.length;
            this.c = aVar.f2285b;
            this.d = aVar.c;
            this.e = aVar.d;
            this.f = aVar.e;
            this.g = aVar.f;
            this.h = aVar.g;
        }

        public static a a(InputStream inputStream) {
            a aVar = new a();
            if (c.a(inputStream) != 538247942) {
                throw new IOException();
            }
            aVar.f2325b = c.c(inputStream);
            aVar.c = c.c(inputStream);
            if (aVar.c.equals(BuildConfig.FLAVOR)) {
                aVar.c = null;
            }
            aVar.d = c.b(inputStream);
            aVar.e = c.b(inputStream);
            aVar.f = c.b(inputStream);
            aVar.g = c.b(inputStream);
            aVar.h = c.d(inputStream);
            return aVar;
        }

        public final boolean a(OutputStream outputStream) {
            boolean z;
            try {
                c.a(outputStream, 538247942);
                c.a(outputStream, this.f2325b);
                c.a(outputStream, this.c == null ? BuildConfig.FLAVOR : this.c);
                c.a(outputStream, this.d);
                c.a(outputStream, this.e);
                c.a(outputStream, this.f);
                c.a(outputStream, this.g);
                Map<String, String> map = this.h;
                if (map != null) {
                    c.a(outputStream, map.size());
                    for (Map.Entry<String, String> entry : map.entrySet()) {
                        c.a(outputStream, entry.getKey());
                        c.a(outputStream, entry.getValue());
                    }
                } else {
                    c.a(outputStream, 0);
                }
                outputStream.flush();
                z = true;
            } catch (IOException e) {
                v.b("%s", e.toString());
                z = false;
            }
            return z;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/volley/toolbox/c$b.class */
    private static final class b extends FilterInputStream {

        /* renamed from: a  reason: collision with root package name */
        private int f2326a;

        private b(InputStream inputStream) {
            super(inputStream);
            this.f2326a = 0;
        }

        /* synthetic */ b(InputStream inputStream, byte b2) {
            this(inputStream);
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public final int read() {
            int read = super.read();
            if (read != -1) {
                this.f2326a++;
            }
            return read;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public final int read(byte[] bArr, int i, int i2) {
            int read = super.read(bArr, i, i2);
            if (read != -1) {
                this.f2326a += read;
            }
            return read;
        }
    }

    private c(File file) {
        this.f2322a = new LinkedHashMap(16, 0.75f, true);
        this.f2323b = 0L;
        this.c = file;
        this.d = 5242880;
    }

    public c(File file, byte b2) {
        this(file);
    }

    static int a(InputStream inputStream) {
        return (e(inputStream) << 0) | 0 | (e(inputStream) << 8) | (e(inputStream) << 16) | (e(inputStream) << 24);
    }

    static void a(OutputStream outputStream, int i) {
        outputStream.write((i >> 0) & 255);
        outputStream.write((i >> 8) & 255);
        outputStream.write((i >> 16) & 255);
        outputStream.write((i >> 24) & 255);
    }

    static void a(OutputStream outputStream, long j) {
        outputStream.write((byte) (j >>> 0));
        outputStream.write((byte) (j >>> 8));
        outputStream.write((byte) (j >>> 16));
        outputStream.write((byte) (j >>> 24));
        outputStream.write((byte) (j >>> 32));
        outputStream.write((byte) (j >>> 40));
        outputStream.write((byte) (j >>> 48));
        outputStream.write((byte) (j >>> 56));
    }

    static void a(OutputStream outputStream, String str) {
        byte[] bytes = str.getBytes("UTF-8");
        a(outputStream, bytes.length);
        outputStream.write(bytes, 0, bytes.length);
    }

    private void a(String str, a aVar) {
        if (!this.f2322a.containsKey(str)) {
            this.f2323b += aVar.f2324a;
        } else {
            this.f2323b = (aVar.f2324a - this.f2322a.get(str).f2324a) + this.f2323b;
        }
        this.f2322a.put(str, aVar);
    }

    private static byte[] a(InputStream inputStream, int i) {
        int read;
        byte[] bArr = new byte[i];
        int i2 = 0;
        while (i2 < i && (read = inputStream.read(bArr, i2, i - i2)) != -1) {
            i2 += read;
        }
        if (i2 == i) {
            return bArr;
        }
        throw new IOException("Expected " + i + " bytes, read " + i2 + " bytes");
    }

    static long b(InputStream inputStream) {
        return 0 | ((e(inputStream) & 255) << 0) | ((e(inputStream) & 255) << 8) | ((e(inputStream) & 255) << 16) | ((e(inputStream) & 255) << 24) | ((e(inputStream) & 255) << 32) | ((e(inputStream) & 255) << 40) | ((e(inputStream) & 255) << 48) | ((e(inputStream) & 255) << 56);
    }

    private void b(String str) {
        synchronized (this) {
            boolean delete = d(str).delete();
            a aVar = this.f2322a.get(str);
            if (aVar != null) {
                this.f2323b -= aVar.f2324a;
                this.f2322a.remove(str);
            }
            if (!delete) {
                v.b("Could not delete cache entry for key=%s, filename=%s", str, c(str));
            }
        }
    }

    static String c(InputStream inputStream) {
        return new String(a(inputStream, (int) b(inputStream)), "UTF-8");
    }

    private static String c(String str) {
        int length = str.length() / 2;
        return String.valueOf(str.substring(0, length).hashCode()) + String.valueOf(str.substring(length).hashCode());
    }

    private File d(String str) {
        return new File(this.c, c(str));
    }

    static Map<String, String> d(InputStream inputStream) {
        int a2 = a(inputStream);
        Map<String, String> emptyMap = a2 == 0 ? Collections.emptyMap() : new HashMap<>(a2);
        for (int i = 0; i < a2; i++) {
            emptyMap.put(c(inputStream).intern(), c(inputStream).intern());
        }
        return emptyMap;
    }

    private static int e(InputStream inputStream) {
        int read = inputStream.read();
        if (read != -1) {
            return read;
        }
        throw new EOFException();
    }

    /* JADX WARN: Removed duplicated region for block: B:90:0x0162 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // com.android.volley.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.android.volley.b.a a(java.lang.String r7) {
        /*
            Method dump skipped, instructions count: 394
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.volley.toolbox.c.a(java.lang.String):com.android.volley.b$a");
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:50:0x00d2 -> B:28:0x008d). Please submit an issue!!! */
    @Override // com.android.volley.b
    public final void a() {
        Throwable th;
        BufferedInputStream bufferedInputStream;
        BufferedInputStream bufferedInputStream2;
        synchronized (this) {
            if (this.c.exists()) {
                File[] listFiles = this.c.listFiles();
                if (listFiles != null) {
                    for (File file : listFiles) {
                        try {
                            bufferedInputStream2 = new BufferedInputStream(new FileInputStream(file));
                            try {
                                try {
                                    a a2 = a.a(bufferedInputStream2);
                                    a2.f2324a = file.length();
                                    a(a2.f2325b, a2);
                                    try {
                                        bufferedInputStream2.close();
                                    } catch (IOException e) {
                                    }
                                } catch (Throwable th2) {
                                    th = th2;
                                    bufferedInputStream = bufferedInputStream2;
                                    if (bufferedInputStream != null) {
                                        try {
                                            bufferedInputStream.close();
                                        } catch (IOException e2) {
                                        }
                                    }
                                    throw th;
                                }
                            } catch (IOException e3) {
                                if (file != null) {
                                    file.delete();
                                }
                                if (bufferedInputStream2 != null) {
                                    try {
                                        bufferedInputStream2.close();
                                    } catch (IOException e4) {
                                    }
                                }
                            }
                        } catch (IOException e5) {
                            bufferedInputStream2 = null;
                        } catch (Throwable th3) {
                            th = th3;
                            bufferedInputStream = null;
                        }
                    }
                }
            } else if (!this.c.mkdirs()) {
                v.c("Unable to create cache dir %s", this.c.getAbsolutePath());
            }
        }
    }

    @Override // com.android.volley.b
    public final void a(String str, b.a aVar) {
        BufferedOutputStream bufferedOutputStream;
        a aVar2;
        int i = 0;
        synchronized (this) {
            int length = aVar.f2284a.length;
            if (this.f2323b + length >= this.d) {
                if (v.f2345b) {
                    v.a("Pruning old cache entries.", new Object[0]);
                }
                long j = this.f2323b;
                long elapsedRealtime = SystemClock.elapsedRealtime();
                Iterator<Map.Entry<String, a>> it = this.f2322a.entrySet().iterator();
                do {
                    if (!it.hasNext()) {
                        break;
                    }
                    a value = it.next().getValue();
                    if (d(value.f2325b).delete()) {
                        this.f2323b -= value.f2324a;
                    } else {
                        v.b("Could not delete cache entry for key=%s, filename=%s", value.f2325b, c(value.f2325b));
                    }
                    it.remove();
                    i++;
                } while (((float) (this.f2323b + length)) >= this.d * 0.9f);
                if (v.f2345b) {
                    v.a("pruned %d files, %d bytes, %d ms", Integer.valueOf(i), Long.valueOf(this.f2323b - j), Long.valueOf(SystemClock.elapsedRealtime() - elapsedRealtime));
                }
            }
            File d = d(str);
            try {
                bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(d));
                aVar2 = new a(str, aVar);
            } catch (IOException e) {
                if (!d.delete()) {
                    v.b("Could not clean up file %s", d.getAbsolutePath());
                }
            }
            if (!aVar2.a(bufferedOutputStream)) {
                bufferedOutputStream.close();
                v.b("Failed to write header for %s", d.getAbsolutePath());
                throw new IOException();
            }
            bufferedOutputStream.write(aVar.f2284a);
            bufferedOutputStream.close();
            a(str, aVar2);
        }
    }
}
