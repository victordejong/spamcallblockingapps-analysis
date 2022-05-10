package p131c.p135b.p136a.p148e;

import android.content.Context;
import android.net.Uri;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.TimeUnit;
import p131c.p135b.p136a.p148e.C2251d;
import p131c.p135b.p136a.p148e.p151e.C2263d;
import p131c.p135b.p136a.p148e.p151e.C2267f;
import p131c.p135b.p136a.p148e.p153y.AbstractC2426r;
import p131c.p135b.p136a.p148e.p153y.C2422o;
/* renamed from: c.b.a.e.r */
/* loaded from: classes-dex2jar.jar:c/b/a/e/r.class */
public class C2370r {

    /* renamed from: a */
    public final C2341l f9221a;

    /* renamed from: b */
    public final C2374t f9222b;

    /* renamed from: c */
    public final Object f9223c = new Object();

    public C2370r(C2341l lVar) {
        this.f9221a = lVar;
        this.f9222b = lVar.m30262d0();
    }

    /* renamed from: a */
    public final long m30080a() {
        long longValue = ((Long) this.f9221a.m30291a(C2251d.C2256e.f8523D0)).longValue();
        if (longValue < 0 || !m30068b()) {
            return -1L;
        }
        return longValue;
    }

    /* renamed from: a */
    public final long m30079a(long j) {
        return j / 1048576;
    }

    /* renamed from: a */
    public ByteArrayOutputStream m30073a(File file) {
        FileNotFoundException e;
        FileInputStream fileInputStream;
        IOException e2;
        FileInputStream fileInputStream2;
        Throwable th;
        FileInputStream fileInputStream3;
        if (file == null) {
            return null;
        }
        C2374t tVar = this.f9222b;
        tVar.m30044b("FileManager", "Reading resource from filesystem: " + file.getName());
        synchronized (this.f9223c) {
            try {
                FileInputStream fileInputStream4 = new FileInputStream(file);
                try {
                    try {
                        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                        byte[] bArr = new byte[1024];
                        while (true) {
                            int read = fileInputStream4.read(bArr, 0, 1024);
                            if (read >= 0) {
                                try {
                                    try {
                                        byteArrayOutputStream.write(bArr, 0, read);
                                    } catch (Exception e3) {
                                        AbstractC2426r.m29810a((Closeable) byteArrayOutputStream, this.f9221a);
                                        AbstractC2426r.m29810a((Closeable) fileInputStream4, this.f9221a);
                                        return null;
                                    }
                                } catch (Throwable th2) {
                                    throw th2;
                                }
                            } else {
                                AbstractC2426r.m29810a((Closeable) fileInputStream4, this.f9221a);
                                return byteArrayOutputStream;
                            }
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        fileInputStream3 = fileInputStream4;
                        this.f9222b.m30043b("FileManager", "Unknown failure to read file.", th);
                        AbstractC2426r.m29810a((Closeable) fileInputStream3, this.f9221a);
                        return null;
                    }
                } catch (FileNotFoundException e4) {
                    e = e4;
                    fileInputStream = fileInputStream4;
                    C2374t tVar2 = this.f9222b;
                    StringBuilder sb = new StringBuilder();
                    sb.append("File not found. ");
                    sb.append(e);
                    tVar2.m30042c("FileManager", sb.toString());
                    AbstractC2426r.m29810a((Closeable) fileInputStream, this.f9221a);
                    return null;
                } catch (IOException e5) {
                    e2 = e5;
                    fileInputStream2 = fileInputStream4;
                    C2374t tVar3 = this.f9222b;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Failed to read file: ");
                    sb2.append(file.getName());
                    sb2.append(e2);
                    tVar3.m30044b("FileManager", sb2.toString());
                    AbstractC2426r.m29810a((Closeable) fileInputStream2, this.f9221a);
                    return null;
                }
            } catch (FileNotFoundException e6) {
                e = e6;
                fileInputStream = null;
            } catch (IOException e7) {
                e2 = e7;
                fileInputStream2 = null;
            } catch (Throwable th4) {
                th = th4;
                fileInputStream3 = null;
            }
        }
    }

    /* JADX WARN: Not initialized variable reg: 13, insn: 0x02ea: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r13 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:81:0x02e7 */
    /* renamed from: a */
    public ByteArrayOutputStream m30069a(String str, List<String> list, boolean z) {
        ByteArrayOutputStream byteArrayOutputStream;
        Throwable th;
        HttpURLConnection httpURLConnection;
        IOException e;
        HttpURLConnection httpURLConnection2;
        InputStream inputStream;
        ByteArrayOutputStream byteArrayOutputStream2;
        Closeable closeable = null;
        if (!z || AbstractC2426r.m29803a(str, list)) {
            String str2 = str;
            if (((Boolean) this.f9221a.m30291a(C2251d.C2256e.f8760v2)).booleanValue()) {
                str2 = str;
                if (!str.contains("https://")) {
                    this.f9222b.m30040d("FileManager", "Plaintext HTTP operation requested; upgrading to HTTPS due to universal SSL setting...");
                    str2 = str.replace("http://", "https://");
                }
            }
            this.f9222b.m30044b("FileManager", "Loading " + str2 + "...");
            try {
                try {
                    byteArrayOutputStream2 = new ByteArrayOutputStream();
                    try {
                        httpURLConnection2 = (HttpURLConnection) new URL(str2).openConnection();
                    } catch (IOException e2) {
                        e = e2;
                        httpURLConnection2 = null;
                        inputStream = null;
                        C2374t tVar = this.f9222b;
                        StringBuilder sb = new StringBuilder();
                        sb.append("Error loading ");
                        sb.append(str2);
                        tVar.m30043b("FileManager", sb.toString(), e);
                        AbstractC2426r.m29810a((Closeable) inputStream, this.f9221a);
                        AbstractC2426r.m29810a((Closeable) byteArrayOutputStream2, this.f9221a);
                        AbstractC2426r.m29797a(httpURLConnection2, this.f9221a);
                        return null;
                    } catch (Throwable th2) {
                        th = th2;
                        httpURLConnection = null;
                        byteArrayOutputStream = byteArrayOutputStream2;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    httpURLConnection = null;
                }
            } catch (IOException e3) {
                e = e3;
                byteArrayOutputStream2 = null;
            } catch (Throwable th4) {
                th = th4;
                byteArrayOutputStream = null;
                httpURLConnection = null;
            }
            try {
                httpURLConnection2.setConnectTimeout(((Integer) this.f9221a.m30291a(C2251d.C2256e.f8750t2)).intValue());
                httpURLConnection2.setReadTimeout(((Integer) this.f9221a.m30291a(C2251d.C2256e.f8755u2)).intValue());
                httpURLConnection2.setDefaultUseCaches(true);
                httpURLConnection2.setUseCaches(true);
                httpURLConnection2.setAllowUserInteraction(false);
                httpURLConnection2.setInstanceFollowRedirects(true);
                int responseCode = httpURLConnection2.getResponseCode();
                if (responseCode < 200 || responseCode >= 300) {
                    AbstractC2426r.m29810a((Closeable) null, this.f9221a);
                    AbstractC2426r.m29810a((Closeable) byteArrayOutputStream2, this.f9221a);
                    AbstractC2426r.m29797a(httpURLConnection2, this.f9221a);
                    return null;
                }
                inputStream = httpURLConnection2.getInputStream();
                try {
                    byte[] bArr = new byte[1024];
                    while (true) {
                        int read = inputStream.read(bArr, 0, 1024);
                        if (read >= 0) {
                            try {
                                byteArrayOutputStream2.write(bArr, 0, read);
                            } catch (Exception e4) {
                                AbstractC2426r.m29810a((Closeable) byteArrayOutputStream2, this.f9221a);
                                AbstractC2426r.m29810a((Closeable) inputStream, this.f9221a);
                                AbstractC2426r.m29810a((Closeable) byteArrayOutputStream2, this.f9221a);
                                AbstractC2426r.m29797a(httpURLConnection2, this.f9221a);
                                return null;
                            }
                        } else {
                            C2374t tVar2 = this.f9222b;
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append("Loaded resource at ");
                            sb2.append(str2);
                            tVar2.m30044b("FileManager", sb2.toString());
                            AbstractC2426r.m29810a((Closeable) inputStream, this.f9221a);
                            AbstractC2426r.m29810a((Closeable) byteArrayOutputStream2, this.f9221a);
                            AbstractC2426r.m29797a(httpURLConnection2, this.f9221a);
                            return byteArrayOutputStream2;
                        }
                    }
                } catch (IOException e5) {
                    e = e5;
                    C2374t tVar3 = this.f9222b;
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("Error loading ");
                    sb3.append(str2);
                    tVar3.m30043b("FileManager", sb3.toString(), e);
                    AbstractC2426r.m29810a((Closeable) inputStream, this.f9221a);
                    AbstractC2426r.m29810a((Closeable) byteArrayOutputStream2, this.f9221a);
                    AbstractC2426r.m29797a(httpURLConnection2, this.f9221a);
                    return null;
                }
            } catch (IOException e6) {
                e = e6;
                inputStream = null;
            } catch (Throwable th5) {
                th = th5;
                byteArrayOutputStream = byteArrayOutputStream2;
                httpURLConnection = httpURLConnection2;
                AbstractC2426r.m29810a(closeable, this.f9221a);
                AbstractC2426r.m29810a((Closeable) byteArrayOutputStream, this.f9221a);
                AbstractC2426r.m29797a(httpURLConnection, this.f9221a);
                throw th;
            }
        } else {
            this.f9222b.m30044b("FileManager", "Domain is not whitelisted, skipping precache for url: " + str);
            return null;
        }
    }

    /* renamed from: a */
    public File m30070a(String str, Context context) {
        File file;
        if (!C2422o.m29851b(str)) {
            this.f9222b.m30044b("FileManager", "Nothing to look up, skipping...");
            return null;
        }
        C2374t tVar = this.f9222b;
        tVar.m30044b("FileManager", "Looking up cached resource: " + str);
        String str2 = str;
        if (str.contains("icon")) {
            str2 = str.replace("/", "_").replace(".", "_");
        }
        synchronized (this.f9223c) {
            File e = m30061e(context);
            file = new File(e, str2);
            e.mkdirs();
        }
        return file;
    }

    /* renamed from: a */
    public String m30076a(Context context, String str, String str2, List<String> list, boolean z, C2263d dVar) {
        return m30075a(context, str, str2, list, z, false, dVar);
    }

    /* renamed from: a */
    public String m30075a(Context context, String str, String str2, List<String> list, boolean z, boolean z2, C2263d dVar) {
        if (!C2422o.m29851b(str)) {
            this.f9222b.m30044b("FileManager", "Nothing to cache, skipping...");
            return null;
        }
        String lastPathSegment = Uri.parse(str).getLastPathSegment();
        String str3 = lastPathSegment;
        if (C2422o.m29851b(lastPathSegment)) {
            str3 = lastPathSegment;
            if (C2422o.m29851b(str2)) {
                str3 = str2 + lastPathSegment;
            }
        }
        File a = m30070a(str3, context);
        if (!m30071a(a, str, list, z, dVar)) {
            return null;
        }
        this.f9222b.m30044b("FileManager", "Caching succeeded for file " + str3);
        if (z2) {
            str3 = Uri.fromFile(a).toString();
        }
        return str3;
    }

    /* renamed from: a */
    public final void m30078a(long j, Context context) {
        C2374t tVar;
        String str;
        if (m30068b()) {
            long intValue = ((Integer) this.f9221a.m30291a(C2251d.C2256e.f8528E0)).intValue();
            if (intValue == -1) {
                tVar = this.f9222b;
                str = "Cache has no maximum size set; skipping drop...";
            } else {
                long a = m30079a(j);
                tVar = this.f9222b;
                if (a > intValue) {
                    tVar.m30044b("FileManager", "Cache has exceeded maximum size; dropping...");
                    for (File file : m30062d(context)) {
                        m30065b(file);
                    }
                    this.f9221a.m30248k().m30522a(C2267f.f8885i);
                    return;
                }
                str = "Cache is present but under size limit; not dropping...";
            }
            tVar.m30044b("FileManager", str);
        }
    }

    /* renamed from: a */
    public void m30077a(Context context) {
        if (m30068b() && this.f9221a.m30311K()) {
            this.f9222b.m30044b("FileManager", "Compacting cache...");
            synchronized (this.f9223c) {
                m30078a(m30063c(context), context);
            }
        }
    }

    /* renamed from: a */
    public boolean m30074a(ByteArrayOutputStream byteArrayOutputStream, File file) {
        if (file == null) {
            return false;
        }
        C2374t tVar = this.f9222b;
        tVar.m30044b("FileManager", "Caching " + file.getAbsolutePath() + "...");
        if (byteArrayOutputStream == null || byteArrayOutputStream.size() <= 0) {
            C2374t tVar2 = this.f9222b;
            tVar2.m30040d("FileManager", "No data for " + file.getAbsolutePath());
            return false;
        } else if (!m30066b(byteArrayOutputStream, file)) {
            C2374t tVar3 = this.f9222b;
            tVar3.m30039e("FileManager", "Unable to cache " + file.getAbsolutePath());
            return false;
        } else {
            C2374t tVar4 = this.f9222b;
            tVar4.m30044b("FileManager", "Caching completed for " + file);
            return true;
        }
    }

    /* renamed from: a */
    public boolean m30072a(File file, String str, List<String> list, C2263d dVar) {
        return m30071a(file, str, list, true, dVar);
    }

    /* renamed from: a */
    public final boolean m30071a(File file, String str, List<String> list, boolean z, C2263d dVar) {
        if (file == null || !file.exists() || file.isDirectory()) {
            ByteArrayOutputStream a = m30069a(str, list, z);
            if (!(dVar == null || a == null)) {
                dVar.m30543a(a.size());
            }
            return m30074a(a, file);
        }
        C2374t tVar = this.f9222b;
        tVar.m30044b("FileManager", "File exists for " + str);
        if (dVar == null) {
            return true;
        }
        dVar.m30541b(file.length());
        return true;
    }

    /* renamed from: b */
    public void m30067b(Context context) {
        try {
            m30070a(".nomedia", context);
            File file = new File(m30061e(context), ".nomedia");
            if (!file.exists()) {
                C2374t tVar = this.f9222b;
                tVar.m30044b("FileManager", "Creating .nomedia file at " + file.getAbsolutePath());
                if (!file.createNewFile()) {
                    this.f9222b.m30039e("FileManager", "Failed to create .nomedia file");
                }
            }
        } catch (IOException e) {
            this.f9222b.m30043b("FileManager", "Failed to create .nomedia file", e);
        }
    }

    /* renamed from: b */
    public final boolean m30068b() {
        return ((Boolean) this.f9221a.m30291a(C2251d.C2256e.f8518C0)).booleanValue();
    }

    /* renamed from: b */
    public final boolean m30066b(ByteArrayOutputStream byteArrayOutputStream, File file) {
        boolean z;
        IOException e;
        C2341l lVar;
        Throwable th;
        C2374t tVar = this.f9222b;
        tVar.m30044b("FileManager", "Writing resource to filesystem: " + file.getName());
        synchronized (this.f9223c) {
            FileOutputStream fileOutputStream = null;
            fileOutputStream = null;
            try {
                try {
                    FileOutputStream fileOutputStream2 = new FileOutputStream(file);
                    try {
                        byteArrayOutputStream.writeTo(fileOutputStream2);
                        z = true;
                        AbstractC2426r.m29810a((Closeable) fileOutputStream2, this.f9221a);
                    } catch (IOException e2) {
                        e = e2;
                        fileOutputStream = fileOutputStream2;
                        this.f9222b.m30043b("FileManager", "Unable to write data to file.", e);
                        lVar = this.f9221a;
                        AbstractC2426r.m29810a((Closeable) fileOutputStream, lVar);
                        z = false;
                        return z;
                    } catch (Throwable th2) {
                        th = th2;
                        fileOutputStream = fileOutputStream2;
                        this.f9222b.m30043b("FileManager", "Unknown failure to write file.", th);
                        lVar = this.f9221a;
                        AbstractC2426r.m29810a((Closeable) fileOutputStream, lVar);
                        z = false;
                        return z;
                    }
                } catch (IOException e3) {
                    e = e3;
                } catch (Throwable th3) {
                    th = th3;
                }
            } catch (Throwable th4) {
                throw th4;
            }
        }
        return z;
    }

    /* renamed from: b */
    public final boolean m30065b(File file) {
        boolean delete;
        C2374t tVar = this.f9222b;
        tVar.m30044b("FileManager", "Removing file " + file.getName() + " from filesystem...");
        synchronized (this.f9223c) {
            try {
                delete = file.delete();
            } catch (Exception e) {
                C2374t tVar2 = this.f9222b;
                tVar2.m30043b("FileManager", "Failed to remove file " + file.getName() + " from filesystem!", e);
                return false;
            }
        }
        return delete;
    }

    /* renamed from: b */
    public boolean m30064b(String str, Context context) {
        boolean z;
        synchronized (this.f9223c) {
            File a = m30070a(str, context);
            z = a != null && a.exists() && !a.isDirectory();
        }
        return z;
    }

    /* renamed from: c */
    public final long m30063c(Context context) {
        long j;
        boolean z;
        long a = m30080a();
        boolean z2 = a != -1;
        long seconds = TimeUnit.MILLISECONDS.toSeconds(System.currentTimeMillis());
        synchronized (this.f9223c) {
            try {
                List<String> b = this.f9221a.m30275b(C2251d.C2256e.f8558K0);
                j = 0;
                for (File file : m30062d(context)) {
                    if (!z2 || b.contains(file.getName()) || seconds - TimeUnit.MILLISECONDS.toSeconds(file.lastModified()) <= a) {
                        z = false;
                    } else {
                        C2374t tVar = this.f9222b;
                        tVar.m30044b("FileManager", "File " + file.getName() + " has expired, removing...");
                        z = m30065b(file);
                    }
                    if (z) {
                        this.f9221a.m30248k().m30522a(C2267f.f8884h);
                    } else {
                        j += file.length();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return j;
    }

    /* renamed from: d */
    public final List<File> m30062d(Context context) {
        List<File> asList;
        File e = m30061e(context);
        if (!e.isDirectory()) {
            return Collections.emptyList();
        }
        synchronized (this.f9223c) {
            asList = Arrays.asList(e.listFiles());
        }
        return asList;
    }

    /* renamed from: e */
    public final File m30061e(Context context) {
        return new File(context.getFilesDir(), "al");
    }
}
