package com.google.android.gms.internal.ads;

import android.os.SystemClock;
import android.text.TextUtils;
import com.android.volley.Request;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import p131c.p161d.p170b.p224d.p252g.p253a.C3866o4;
import p131c.p161d.p170b.p224d.p252g.p253a.C4202x4;
import p131c.p161d.p170b.p224d.p252g.p253a.C4203x5;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzav.class */
public final class zzav implements zzk {

    /* renamed from: a */
    public final Map<String, C3866o4> f24530a;

    /* renamed from: b */
    public long f24531b;

    /* renamed from: c */
    public final zzaz f24532c;

    /* renamed from: d */
    public final int f24533d;

    public zzav(zzaz zzazVar) {
        this(zzazVar, 5242880);
    }

    public zzav(zzaz zzazVar, int i) {
        this.f24530a = new LinkedHashMap(16, 0.75f, true);
        this.f24531b = 0L;
        this.f24532c = zzazVar;
        this.f24533d = 5242880;
    }

    public zzav(File file, int i) {
        this.f24530a = new LinkedHashMap(16, 0.75f, true);
        this.f24531b = 0L;
        this.f24532c = new C4202x4(this, file);
        this.f24533d = 20971520;
    }

    /* renamed from: a */
    public static int m16313a(InputStream inputStream) throws IOException {
        int read = inputStream.read();
        if (read != -1) {
            return read;
        }
        throw new EOFException();
    }

    /* renamed from: a */
    public static InputStream m16314a(File file) throws FileNotFoundException {
        return new FileInputStream(file);
    }

    /* renamed from: a */
    public static String m16316a(C4203x5 x5Var) throws IOException {
        return new String(m16315a(x5Var, m16305c(x5Var)), Request.DEFAULT_PARAMS_ENCODING);
    }

    /* renamed from: a */
    public static void m16312a(OutputStream outputStream, int i) throws IOException {
        outputStream.write(i & 255);
        outputStream.write((i >> 8) & 255);
        outputStream.write((i >> 16) & 255);
        outputStream.write(i >>> 24);
    }

    /* renamed from: a */
    public static void m16311a(OutputStream outputStream, long j) throws IOException {
        outputStream.write((byte) j);
        outputStream.write((byte) (j >>> 8));
        outputStream.write((byte) (j >>> 16));
        outputStream.write((byte) (j >>> 24));
        outputStream.write((byte) (j >>> 32));
        outputStream.write((byte) (j >>> 40));
        outputStream.write((byte) (j >>> 48));
        outputStream.write((byte) (j >>> 56));
    }

    /* renamed from: a */
    public static void m16310a(OutputStream outputStream, String str) throws IOException {
        byte[] bytes = str.getBytes(Request.DEFAULT_PARAMS_ENCODING);
        m16311a(outputStream, bytes.length);
        outputStream.write(bytes, 0, bytes.length);
    }

    /* renamed from: a */
    public static byte[] m16315a(C4203x5 x5Var, long j) throws IOException {
        long a = x5Var.m26170a();
        if (j >= 0 && j <= a) {
            int i = (int) j;
            if (i == j) {
                byte[] bArr = new byte[i];
                new DataInputStream(x5Var).readFully(bArr);
                return bArr;
            }
        }
        StringBuilder sb = new StringBuilder(73);
        sb.append("streamToBytes length=");
        sb.append(j);
        sb.append(", maxLength=");
        sb.append(a);
        throw new IOException(sb.toString());
    }

    /* renamed from: b */
    public static int m16307b(InputStream inputStream) throws IOException {
        return (m16313a(inputStream) << 24) | m16313a(inputStream) | 0 | (m16313a(inputStream) << 8) | (m16313a(inputStream) << 16);
    }

    /* renamed from: b */
    public static List<zzu> m16308b(C4203x5 x5Var) throws IOException {
        int b = m16307b((InputStream) x5Var);
        if (b >= 0) {
            List<zzu> emptyList = b == 0 ? Collections.emptyList() : new ArrayList<>();
            for (int i = 0; i < b; i++) {
                emptyList.add(new zzu(m16316a(x5Var).intern(), m16316a(x5Var).intern()));
            }
            return emptyList;
        }
        StringBuilder sb = new StringBuilder(31);
        sb.append("readHeaderList size=");
        sb.append(b);
        throw new IOException(sb.toString());
    }

    /* renamed from: c */
    public static long m16305c(InputStream inputStream) throws IOException {
        return (m16313a(inputStream) & 255) | 0 | ((m16313a(inputStream) & 255) << 8) | ((m16313a(inputStream) & 255) << 16) | ((m16313a(inputStream) & 255) << 24) | ((m16313a(inputStream) & 255) << 32) | ((m16313a(inputStream) & 255) << 40) | ((m16313a(inputStream) & 255) << 48) | ((255 & m16313a(inputStream)) << 56);
    }

    /* renamed from: e */
    public static String m16302e(String str) {
        int length = str.length() / 2;
        String valueOf = String.valueOf(String.valueOf(str.substring(0, length).hashCode()));
        String valueOf2 = String.valueOf(String.valueOf(str.substring(length).hashCode()));
        return valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
    }

    @Override // com.google.android.gms.internal.ads.zzk
    /* renamed from: a */
    public final zzn mo11878a(String str) {
        synchronized (this) {
            C3866o4 o4Var = this.f24530a.get(str);
            if (o4Var == null) {
                return null;
            }
            File d = m16303d(str);
            try {
                C4203x5 x5Var = new C4203x5(new BufferedInputStream(m16314a(d)), d.length());
                try {
                    C3866o4 a = C3866o4.m26606a(x5Var);
                    if (!TextUtils.equals(str, a.f14287b)) {
                        zzaq.m16461a("%s: key=%s, found=%s", d.getAbsolutePath(), str, a.f14287b);
                        m16304c(str);
                        return null;
                    }
                    byte[] a2 = m16315a(x5Var, x5Var.m26170a());
                    zzn zznVar = new zzn();
                    zznVar.f28648a = a2;
                    zznVar.f28649b = o4Var.f14288c;
                    zznVar.f28650c = o4Var.f14289d;
                    zznVar.f28651d = o4Var.f14290e;
                    zznVar.f28652e = o4Var.f14291f;
                    zznVar.f28653f = o4Var.f14292g;
                    List<zzu> list = o4Var.f14293h;
                    TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
                    for (zzu zzuVar : list) {
                        treeMap.put(zzuVar.m11417a(), zzuVar.m11416b());
                    }
                    zznVar.f28654g = treeMap;
                    zznVar.f28655h = Collections.unmodifiableList(o4Var.f14293h);
                    return zznVar;
                } finally {
                    x5Var.close();
                }
            } catch (IOException e) {
                zzaq.m16461a("%s: %s", d.getAbsolutePath(), e.toString());
                m16306b(str);
                return null;
            }
        }
    }

    /* renamed from: a */
    public final void m16309a(String str, C3866o4 o4Var) {
        if (!this.f24530a.containsKey(str)) {
            this.f24531b += o4Var.f14286a;
        } else {
            this.f24531b += o4Var.f14286a - this.f24530a.get(str).f14286a;
        }
        this.f24530a.put(str, o4Var);
    }

    @Override // com.google.android.gms.internal.ads.zzk
    /* renamed from: a */
    public final void mo11877a(String str, zzn zznVar) {
        synchronized (this) {
            if (this.f24531b + zznVar.f28648a.length <= this.f24533d || zznVar.f28648a.length <= this.f24533d * 0.9f) {
                File d = m16303d(str);
                try {
                    BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(d));
                    C3866o4 o4Var = new C3866o4(str, zznVar);
                    if (o4Var.m26605a(bufferedOutputStream)) {
                        bufferedOutputStream.write(zznVar.f28648a);
                        bufferedOutputStream.close();
                        o4Var.f14286a = d.length();
                        m16309a(str, o4Var);
                        if (this.f24531b >= this.f24533d) {
                            if (zzaq.f24250b) {
                                zzaq.m16458c("Pruning old cache entries.", new Object[0]);
                            }
                            long j = this.f24531b;
                            long elapsedRealtime = SystemClock.elapsedRealtime();
                            Iterator<Map.Entry<String, C3866o4>> it = this.f24530a.entrySet().iterator();
                            int i = 0;
                            while (it.hasNext()) {
                                C3866o4 value = it.next().getValue();
                                if (m16303d(value.f14287b).delete()) {
                                    this.f24531b -= value.f14286a;
                                } else {
                                    zzaq.m16461a("Could not delete cache entry for key=%s, filename=%s", value.f14287b, m16302e(value.f14287b));
                                }
                                it.remove();
                                i++;
                                if (((float) this.f24531b) < this.f24533d * 0.9f) {
                                    break;
                                }
                            }
                            if (zzaq.f24250b) {
                                zzaq.m16458c("pruned %d files, %d bytes, %d ms", Integer.valueOf(i), Long.valueOf(this.f24531b - j), Long.valueOf(SystemClock.elapsedRealtime() - elapsedRealtime));
                            }
                        }
                        return;
                    }
                    bufferedOutputStream.close();
                    zzaq.m16461a("Failed to write header for %s", d.getAbsolutePath());
                    throw new IOException();
                } catch (IOException e) {
                    if (!d.delete()) {
                        zzaq.m16461a("Could not clean up file %s", d.getAbsolutePath());
                    }
                    if (!this.f24532c.mo16048w().exists()) {
                        zzaq.m16461a("Re-initializing cache after external clearing.", new Object[0]);
                        this.f24530a.clear();
                        this.f24531b = 0L;
                        initialize();
                    }
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzk
    /* renamed from: a */
    public final void mo11876a(String str, boolean z) {
        synchronized (this) {
            zzn a = mo11878a(str);
            if (a != null) {
                a.f28653f = 0L;
                a.f28652e = 0L;
                mo11877a(str, a);
            }
        }
    }

    /* renamed from: b */
    public final void m16306b(String str) {
        synchronized (this) {
            boolean delete = m16303d(str).delete();
            m16304c(str);
            if (!delete) {
                zzaq.m16461a("Could not delete cache entry for key=%s, filename=%s", str, m16302e(str));
            }
        }
    }

    /* renamed from: c */
    public final void m16304c(String str) {
        C3866o4 remove = this.f24530a.remove(str);
        if (remove != null) {
            this.f24531b -= remove.f14286a;
        }
    }

    /* renamed from: d */
    public final File m16303d(String str) {
        return new File(this.f24532c.mo16048w(), m16302e(str));
    }

    @Override // com.google.android.gms.internal.ads.zzk
    public final void initialize() {
        synchronized (this) {
            File w = this.f24532c.mo16048w();
            if (!w.exists()) {
                if (!w.mkdirs()) {
                    zzaq.m16459b("Unable to create cache dir %s", w.getAbsolutePath());
                }
                return;
            }
            File[] listFiles = w.listFiles();
            if (listFiles != null) {
                for (File file : listFiles) {
                    try {
                        long length = file.length();
                        C4203x5 x5Var = new C4203x5(new BufferedInputStream(m16314a(file)), length);
                        try {
                            C3866o4 a = C3866o4.m26606a(x5Var);
                            a.f14286a = length;
                            m16309a(a.f14287b, a);
                            x5Var.close();
                        } catch (Throwable th) {
                            x5Var.close();
                            throw th;
                            break;
                        }
                    } catch (IOException e) {
                        file.delete();
                    }
                }
            }
        }
    }
}
