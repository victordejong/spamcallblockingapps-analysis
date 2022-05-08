package p081h.p203i.p325c.p337n.p338d.p346l;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.app.NotificationCompat;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicInteger;
import p081h.p203i.p325c.p337n.p338d.C9513b;
import p081h.p203i.p325c.p337n.p338d.p341h.AbstractC9609q;
import p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v;
import p081h.p203i.p325c.p337n.p338d.p343j.C9755w;
import p081h.p203i.p325c.p337n.p338d.p343j.p344x.C9763h;
import p081h.p203i.p325c.p337n.p338d.p352p.AbstractC9809e;
/* renamed from: h.i.c.n.d.l.g */
/* loaded from: classes2-dex2jar.jar:h/i/c/n/d/l/g.class */
public class C9775g {

    /* renamed from: g */
    public static final Charset f22182g = Charset.forName("UTF-8");

    /* renamed from: h */
    public static final int f22183h = 15;

    /* renamed from: i */
    public static final C9763h f22184i = new C9763h();

    /* renamed from: j */
    public static final Comparator<? super File> f22185j = C9773e.m14333a();

    /* renamed from: k */
    public static final FilenameFilter f22186k = C9774f.m14332a();
    @NonNull

    /* renamed from: a */
    public final AtomicInteger f22187a = new AtomicInteger(0);
    @NonNull

    /* renamed from: b */
    public final File f22188b;
    @NonNull

    /* renamed from: c */
    public final File f22189c;
    @NonNull

    /* renamed from: d */
    public final File f22190d;
    @NonNull

    /* renamed from: e */
    public final File f22191e;
    @NonNull

    /* renamed from: f */
    public final AbstractC9809e f22192f;

    public C9775g(@NonNull File file, @NonNull AbstractC9809e eVar) {
        File file2 = new File(file, "report-persistence");
        this.f22188b = new File(file2, "sessions");
        this.f22189c = new File(file2, "priority-reports");
        this.f22190d = new File(file2, "reports");
        this.f22191e = new File(file2, "native-reports");
        this.f22192f = eVar;
    }

    /* renamed from: a */
    public static int m14326a(@NonNull File file, int i) {
        List<File> a = m14320a(file, C9771c.m14335a());
        Collections.sort(a, C9772d.m14334a());
        return m14312a(a, i);
    }

    /* renamed from: a */
    public static int m14312a(List<File> list, int i) {
        int size = list.size();
        for (File file : list) {
            if (size <= i) {
                return size;
            }
            m14295e(file);
            size--;
        }
        return size;
    }

    @NonNull
    /* renamed from: a */
    public static String m14330a(int i, boolean z) {
        String format = String.format(Locale.US, "%010d", Integer.valueOf(i));
        String str = z ? "_" : "";
        return NotificationCompat.CATEGORY_EVENT + format + str;
    }

    @NonNull
    /* renamed from: a */
    public static List<File> m14327a(@NonNull File file) {
        return m14321a(file, (FileFilter) null);
    }

    @NonNull
    /* renamed from: a */
    public static List<File> m14321a(@NonNull File file, @Nullable FileFilter fileFilter) {
        if (!file.isDirectory()) {
            return Collections.emptyList();
        }
        File[] listFiles = fileFilter == null ? file.listFiles() : file.listFiles(fileFilter);
        return listFiles != null ? Arrays.asList(listFiles) : Collections.emptyList();
    }

    @NonNull
    /* renamed from: a */
    public static List<File> m14320a(@NonNull File file, @Nullable FilenameFilter filenameFilter) {
        if (!file.isDirectory()) {
            return Collections.emptyList();
        }
        File[] listFiles = filenameFilter == null ? file.listFiles() : file.listFiles(filenameFilter);
        return listFiles != null ? Arrays.asList(listFiles) : Collections.emptyList();
    }

    @NonNull
    /* renamed from: a */
    public static List<File> m14311a(@NonNull List<File>... listArr) {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        for (List<File> list : listArr) {
            i += list.size();
        }
        arrayList.ensureCapacity(i);
        for (List<File> list2 : listArr) {
            arrayList.addAll(list2);
        }
        return arrayList;
    }

    /* renamed from: a */
    public static void m14323a(@NonNull File file, @NonNull File file2, @NonNull AbstractC9715v.AbstractC9719c cVar, @NonNull String str) {
        try {
            AbstractC9715v a = f22184i.m14376b(m14298d(file)).m14614a(cVar);
            m14303c(file2);
            m14297d(new File(file2, str), f22184i.m14379a(a));
        } catch (IOException e) {
            C9513b a2 = C9513b.m15015a();
            a2.m15012a("Could not synthesize final native report file for " + file, e);
        }
    }

    /* renamed from: a */
    public static void m14322a(@NonNull File file, @NonNull File file2, @NonNull List<AbstractC9715v.AbstractC9723d.AbstractC9730d> list, long j, boolean z, @Nullable String str) {
        try {
            AbstractC9715v a = f22184i.m14376b(m14298d(file)).m14615a(j, z, str).m14613a(C9755w.m14391a(list));
            AbstractC9715v.AbstractC9723d h = a.mo14606h();
            if (h != null) {
                m14303c(file2);
                m14297d(new File(file2, h.mo14566g()), f22184i.m14379a(a));
            }
        } catch (IOException e) {
            C9513b a2 = C9513b.m15015a();
            a2.m15012a("Could not synthesize final report file for " + file, e);
        }
    }

    /* renamed from: a */
    public static /* synthetic */ boolean m14315a(String str, File file) {
        return file.isDirectory() && !file.getName().equals(str);
    }

    @NonNull
    /* renamed from: b */
    public static List<File> m14305b(@NonNull List<File>... listArr) {
        for (List<File> list : listArr) {
            Collections.sort(list, f22185j);
        }
        return m14311a(listArr);
    }

    /* renamed from: b */
    public static boolean m14309b(@NonNull File file) {
        return file.exists() || file.mkdirs();
    }

    /* renamed from: b */
    public static boolean m14307b(@NonNull File file, @NonNull String str) {
        return str.startsWith(NotificationCompat.CATEGORY_EVENT) && !str.endsWith("_");
    }

    /* renamed from: c */
    public static int m14302c(@NonNull File file, @NonNull File file2) {
        return m14296d(file.getName()).compareTo(m14296d(file2.getName()));
    }

    @NonNull
    /* renamed from: c */
    public static File m14303c(@NonNull File file) throws IOException {
        if (m14309b(file)) {
            return file;
        }
        throw new IOException("Could not create directory " + file);
    }

    @NonNull
    /* renamed from: d */
    public static String m14298d(@NonNull File file) throws IOException {
        byte[] bArr = new byte[8192];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        FileInputStream fileInputStream = new FileInputStream(file);
        while (true) {
            try {
                int read = fileInputStream.read(bArr);
                if (read > 0) {
                    byteArrayOutputStream.write(bArr, 0, read);
                } else {
                    String str = new String(byteArrayOutputStream.toByteArray(), f22182g);
                    fileInputStream.close();
                    return str;
                }
            } catch (Throwable th) {
                try {
                    fileInputStream.close();
                } catch (Throwable th2) {
                }
                throw th;
            }
        }
    }

    @NonNull
    /* renamed from: d */
    public static String m14296d(@NonNull String str) {
        return str.substring(0, f22183h);
    }

    /* renamed from: d */
    public static void m14297d(File file, String str) throws IOException {
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(new FileOutputStream(file), f22182g);
        try {
            outputStreamWriter.write(str);
            outputStreamWriter.close();
        } catch (Throwable th) {
            try {
                outputStreamWriter.close();
            } catch (Throwable th2) {
            }
            throw th;
        }
    }

    /* renamed from: e */
    public static void m14295e(@Nullable File file) {
        if (file != null) {
            if (file.isDirectory()) {
                for (File file2 : file.listFiles()) {
                    m14295e(file2);
                }
            }
            file.delete();
        }
    }

    /* renamed from: e */
    public static boolean m14294e(@NonNull String str) {
        return str.startsWith(NotificationCompat.CATEGORY_EVENT) && str.endsWith("_");
    }

    @NonNull
    /* renamed from: a */
    public final List<File> m14318a(@Nullable String str) {
        List<File> a = m14321a(this.f22188b, C9770b.m14336a(str));
        Collections.sort(a, f22185j);
        if (a.size() <= 8) {
            return a;
        }
        for (File file : a.subList(8, a.size())) {
            m14295e(file);
        }
        return a.subList(0, 8);
    }

    /* renamed from: a */
    public final void m14331a() {
        int i = this.f22192f.mo14147a().mo14136b().f22278b;
        List<File> c = m14304c();
        int size = c.size();
        if (size > i) {
            for (File file : c.subList(i, size)) {
                file.delete();
            }
        }
    }

    /* renamed from: a */
    public void m14329a(@NonNull AbstractC9715v.AbstractC9723d.AbstractC9730d dVar, @NonNull String str, boolean z) {
        int i = this.f22192f.mo14147a().mo14136b().f22277a;
        File c = m14300c(str);
        try {
            m14297d(new File(c, m14330a(this.f22187a.getAndIncrement(), z)), f22184i.m14380a(dVar));
        } catch (IOException e) {
            C9513b a = C9513b.m15015a();
            a.m15012a("Could not persist event for session " + str, e);
        }
        m14326a(c, i);
    }

    /* renamed from: a */
    public void m14328a(@NonNull AbstractC9715v vVar) {
        AbstractC9715v.AbstractC9723d h = vVar.mo14606h();
        if (h == null) {
            C9513b.m15015a().m15013a("Could not get session for report");
            return;
        }
        String g = h.mo14566g();
        try {
            File c = m14300c(g);
            m14303c(c);
            m14297d(new File(c, "report"), f22184i.m14379a(vVar));
        } catch (IOException e) {
            C9513b a = C9513b.m15015a();
            a.m15012a("Could not persist report for session " + g, e);
        }
    }

    /* renamed from: a */
    public final void m14325a(@NonNull File file, long j) {
        boolean z;
        List<File> a = m14320a(file, f22186k);
        if (a.isEmpty()) {
            C9513b.m15015a().m15013a("Session " + file.getName() + " has no events.");
            return;
        }
        Collections.sort(a);
        ArrayList arrayList = new ArrayList();
        loop0: while (true) {
            z = false;
            for (File file2 : a) {
                try {
                    arrayList.add(f22184i.m14378a(m14298d(file2)));
                } catch (IOException e) {
                    C9513b.m15015a().m15012a("Could not add event to report for " + file2, e);
                }
                if (z || m14294e(file2.getName())) {
                    z = true;
                }
            }
        }
        if (arrayList.isEmpty()) {
            C9513b.m15015a().m15013a("Could not parse event files for session " + file.getName());
            return;
        }
        File file3 = new File(file, "user");
        String str = null;
        if (file3.isFile()) {
            try {
                str = m14298d(file3);
            } catch (IOException e2) {
                C9513b.m15015a().m15012a("Could not read user ID file in " + file.getName(), e2);
                str = null;
            }
        }
        m14322a(new File(file, "report"), z ? this.f22189c : this.f22190d, arrayList, j, z, str);
    }

    /* renamed from: a */
    public void m14317a(@Nullable String str, long j) {
        for (File file : m14318a(str)) {
            C9513b a = C9513b.m15015a();
            a.m15013a("Finalizing report for session " + file.getName());
            m14325a(file, j);
            m14295e(file);
        }
        m14331a();
    }

    /* renamed from: a */
    public void m14316a(@NonNull String str, @NonNull AbstractC9715v.AbstractC9719c cVar) {
        m14323a(new File(m14300c(str), "report"), this.f22191e, cVar, str);
    }

    /* renamed from: a */
    public void m14313a(@NonNull String str, @NonNull String str2) {
        try {
            m14297d(new File(m14300c(str2), "user"), str);
        } catch (IOException e) {
            C9513b a = C9513b.m15015a();
            a.m15012a("Could not persist user ID for session " + str2, e);
        }
    }

    /* renamed from: b */
    public void m14310b() {
        for (File file : m14304c()) {
            file.delete();
        }
    }

    /* renamed from: b */
    public void m14306b(String str) {
        FilenameFilter a = C9769a.m14337a(str);
        for (File file : m14311a(m14320a(this.f22189c, a), m14320a(this.f22191e, a), m14320a(this.f22190d, a))) {
            file.delete();
        }
    }

    @NonNull
    /* renamed from: c */
    public final File m14300c(@NonNull String str) {
        return new File(this.f22188b, str);
    }

    @NonNull
    /* renamed from: c */
    public final List<File> m14304c() {
        return m14305b(m14311a(m14327a(this.f22189c), m14327a(this.f22191e)), m14327a(this.f22190d));
    }

    @NonNull
    /* renamed from: d */
    public List<AbstractC9609q> m14299d() {
        List<File> c = m14304c();
        ArrayList arrayList = new ArrayList();
        arrayList.ensureCapacity(c.size());
        for (File file : m14304c()) {
            try {
                arrayList.add(AbstractC9609q.m14715a(f22184i.m14376b(m14298d(file)), file.getName()));
            } catch (IOException e) {
                C9513b a = C9513b.m15015a();
                a.m15012a("Could not load report file " + file + "; deleting", e);
                file.delete();
            }
        }
        return arrayList;
    }
}
