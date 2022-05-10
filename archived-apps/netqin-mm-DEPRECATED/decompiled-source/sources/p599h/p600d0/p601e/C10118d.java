package p599h.p600d0.p601e;

import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.Flushable;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
import p599h.p600d0.C10109c;
import p599h.p600d0.p606j.AbstractC10192a;
import p599h.p600d0.p607k.C10203f;
import p610i.AbstractC10263d;
import p610i.AbstractC10264e;
import p610i.AbstractC10280p;
import p610i.AbstractC10281q;
import p610i.C10270k;
/* renamed from: h.d0.e.d */
/* loaded from: classes2-dex2jar.jar:h/d0/e/d.class */
public final class C10118d implements Closeable, Flushable {

    /* renamed from: u */
    public static final Pattern f37352u = Pattern.compile("[a-z0-9_-]{1,120}");

    /* renamed from: a */
    public final AbstractC10192a f37353a;

    /* renamed from: b */
    public final File f37354b;

    /* renamed from: c */
    public final File f37355c;

    /* renamed from: d */
    public final File f37356d;

    /* renamed from: e */
    public final File f37357e;

    /* renamed from: f */
    public final int f37358f;

    /* renamed from: g */
    public long f37359g;

    /* renamed from: h */
    public final int f37360h;

    /* renamed from: j */
    public AbstractC10263d f37362j;

    /* renamed from: l */
    public int f37364l;

    /* renamed from: m */
    public boolean f37365m;

    /* renamed from: n */
    public boolean f37366n;

    /* renamed from: o */
    public boolean f37367o;

    /* renamed from: p */
    public boolean f37368p;

    /* renamed from: q */
    public boolean f37369q;

    /* renamed from: s */
    public final Executor f37371s;

    /* renamed from: i */
    public long f37361i = 0;

    /* renamed from: k */
    public final LinkedHashMap<String, C10123d> f37363k = new LinkedHashMap<>(0, 0.75f, true);

    /* renamed from: r */
    public long f37370r = 0;

    /* renamed from: t */
    public final Runnable f37372t = new RunnableC10119a();

    /* renamed from: h.d0.e.d$a */
    /* loaded from: classes2-dex2jar.jar:h/d0/e/d$a.class */
    public class RunnableC10119a implements Runnable {
        public RunnableC10119a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (C10118d.this) {
                if (!(!C10118d.this.f37366n) && !C10118d.this.f37367o) {
                    try {
                        C10118d.this.m1401i();
                    } catch (IOException e) {
                        C10118d.this.f37368p = true;
                    }
                    try {
                        if (C10118d.this.m1408d()) {
                            C10118d.this.m1402h();
                            C10118d.this.f37364l = 0;
                        }
                    } catch (IOException e2) {
                        C10118d.this.f37369q = true;
                        C10118d.this.f37362j = C10270k.m754a(C10270k.m755a());
                    }
                }
            }
        }
    }

    /* renamed from: h.d0.e.d$b */
    /* loaded from: classes2-dex2jar.jar:h/d0/e/d$b.class */
    public class C10120b extends C10125e {
        public C10120b(AbstractC10280p pVar) {
            super(pVar);
        }

        @Override // p599h.p600d0.p601e.C10125e
        /* renamed from: a */
        public void mo1390a(IOException iOException) {
            C10118d.this.f37365m = true;
        }
    }

    /* renamed from: h.d0.e.d$c */
    /* loaded from: classes2-dex2jar.jar:h/d0/e/d$c.class */
    public final class C10121c {

        /* renamed from: a */
        public final C10123d f37375a;

        /* renamed from: b */
        public final boolean[] f37376b;

        /* renamed from: c */
        public boolean f37377c;

        /* renamed from: h.d0.e.d$c$a */
        /* loaded from: classes2-dex2jar.jar:h/d0/e/d$c$a.class */
        public class C10122a extends C10125e {
            public C10122a(AbstractC10280p pVar) {
                super(pVar);
            }

            @Override // p599h.p600d0.p601e.C10125e
            /* renamed from: a */
            public void mo1390a(IOException iOException) {
                synchronized (C10118d.this) {
                    C10121c.this.m1397c();
                }
            }
        }

        public C10121c(C10123d dVar) {
            this.f37375a = dVar;
            this.f37376b = dVar.f37384e ? null : new boolean[C10118d.this.f37360h];
        }

        /* renamed from: a */
        public AbstractC10280p m1399a(int i) {
            synchronized (C10118d.this) {
                if (this.f37377c) {
                    throw new IllegalStateException();
                } else if (this.f37375a.f37385f != this) {
                    return C10270k.m755a();
                } else {
                    if (!this.f37375a.f37384e) {
                        this.f37376b[i] = true;
                    }
                    try {
                        return new C10122a(C10118d.this.f37353a.mo1111b(this.f37375a.f37383d[i]));
                    } catch (FileNotFoundException e) {
                        return C10270k.m755a();
                    }
                }
            }
        }

        /* renamed from: a */
        public void m1400a() throws IOException {
            synchronized (C10118d.this) {
                if (!this.f37377c) {
                    if (this.f37375a.f37385f == this) {
                        C10118d.this.m1417a(this, false);
                    }
                    this.f37377c = true;
                } else {
                    throw new IllegalStateException();
                }
            }
        }

        /* renamed from: b */
        public void m1398b() throws IOException {
            synchronized (C10118d.this) {
                if (!this.f37377c) {
                    if (this.f37375a.f37385f == this) {
                        C10118d.this.m1417a(this, true);
                    }
                    this.f37377c = true;
                } else {
                    throw new IllegalStateException();
                }
            }
        }

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x003b -> B:8:0x002c). Please submit an issue!!! */
        /* renamed from: c */
        public void m1397c() {
            if (this.f37375a.f37385f == this) {
                int i = 0;
                while (true) {
                    C10118d dVar = C10118d.this;
                    if (i < dVar.f37360h) {
                        try {
                            dVar.f37353a.mo1108e(this.f37375a.f37383d[i]);
                        } catch (IOException e) {
                        }
                        i++;
                    } else {
                        this.f37375a.f37385f = null;
                        return;
                    }
                }
            }
        }
    }

    /* renamed from: h.d0.e.d$d */
    /* loaded from: classes2-dex2jar.jar:h/d0/e/d$d.class */
    public final class C10123d {

        /* renamed from: a */
        public final String f37380a;

        /* renamed from: b */
        public final long[] f37381b;

        /* renamed from: c */
        public final File[] f37382c;

        /* renamed from: d */
        public final File[] f37383d;

        /* renamed from: e */
        public boolean f37384e;

        /* renamed from: f */
        public C10121c f37385f;

        /* renamed from: g */
        public long f37386g;

        public C10123d(String str) {
            this.f37380a = str;
            int i = C10118d.this.f37360h;
            this.f37381b = new long[i];
            this.f37382c = new File[i];
            this.f37383d = new File[i];
            StringBuilder sb = new StringBuilder(str);
            sb.append('.');
            int length = sb.length();
            for (int i2 = 0; i2 < C10118d.this.f37360h; i2++) {
                sb.append(i2);
                this.f37382c[i2] = new File(C10118d.this.f37354b, sb.toString());
                sb.append(".tmp");
                this.f37383d[i2] = new File(C10118d.this.f37354b, sb.toString());
                sb.setLength(length);
            }
        }

        /* renamed from: a */
        public C10124e m1396a() {
            if (Thread.holdsLock(C10118d.this)) {
                AbstractC10281q[] qVarArr = new AbstractC10281q[C10118d.this.f37360h];
                long[] jArr = (long[]) this.f37381b.clone();
                for (int i = 0; i < C10118d.this.f37360h; i++) {
                    try {
                        qVarArr[i] = C10118d.this.f37353a.mo1113a(this.f37382c[i]);
                    } catch (FileNotFoundException e) {
                        for (int i2 = 0; i2 < C10118d.this.f37360h && qVarArr[i2] != null; i2++) {
                            C10109c.m1463a(qVarArr[i2]);
                        }
                        try {
                            C10118d.this.m1416a(this);
                            return null;
                        } catch (IOException e2) {
                            return null;
                        }
                    }
                }
                return new C10124e(this.f37380a, this.f37386g, qVarArr, jArr);
            }
            throw new AssertionError();
        }

        /* renamed from: a */
        public final IOException m1394a(String[] strArr) throws IOException {
            throw new IOException("unexpected journal line: " + Arrays.toString(strArr));
        }

        /* renamed from: a */
        public void m1395a(AbstractC10263d dVar) throws IOException {
            for (long j : this.f37381b) {
                dVar.writeByte(32).mo735h(j);
            }
        }

        /* renamed from: b */
        public void m1393b(String[] strArr) throws IOException {
            if (strArr.length == C10118d.this.f37360h) {
                for (int i = 0; i < strArr.length; i++) {
                    try {
                        this.f37381b[i] = Long.parseLong(strArr[i]);
                    } catch (NumberFormatException e) {
                        m1394a(strArr);
                        throw null;
                    }
                }
                return;
            }
            m1394a(strArr);
            throw null;
        }
    }

    /* renamed from: h.d0.e.d$e */
    /* loaded from: classes2-dex2jar.jar:h/d0/e/d$e.class */
    public final class C10124e implements Closeable {

        /* renamed from: a */
        public final String f37388a;

        /* renamed from: b */
        public final long f37389b;

        /* renamed from: c */
        public final AbstractC10281q[] f37390c;

        public C10124e(String str, long j, AbstractC10281q[] qVarArr, long[] jArr) {
            this.f37388a = str;
            this.f37389b = j;
            this.f37390c = qVarArr;
        }

        /* renamed from: a */
        public C10121c m1392a() throws IOException {
            return C10118d.this.m1413a(this.f37388a, this.f37389b);
        }

        /* renamed from: a */
        public AbstractC10281q m1391a(int i) {
            return this.f37390c[i];
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            for (AbstractC10281q qVar : this.f37390c) {
                C10109c.m1463a(qVar);
            }
        }
    }

    public C10118d(AbstractC10192a aVar, File file, int i, int i2, long j, Executor executor) {
        this.f37353a = aVar;
        this.f37354b = file;
        this.f37358f = i;
        this.f37355c = new File(file, "journal");
        this.f37356d = new File(file, "journal.tmp");
        this.f37357e = new File(file, "journal.bkp");
        this.f37360h = i2;
        this.f37359g = j;
        this.f37371s = executor;
    }

    /* renamed from: a */
    public static C10118d m1415a(AbstractC10192a aVar, File file, int i, int i2, long j) {
        if (j <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        } else if (i2 > 0) {
            return new C10118d(aVar, file, i, i2, j, new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), C10109c.m1453a("OkHttp DiskLruCache", true)));
        } else {
            throw new IllegalArgumentException("valueCount <= 0");
        }
    }

    /* renamed from: a */
    public C10121c m1414a(String str) throws IOException {
        return m1413a(str, -1L);
    }

    /* renamed from: a */
    public C10121c m1413a(String str, long j) throws IOException {
        synchronized (this) {
            m1410c();
            m1418a();
            m1405e(str);
            C10123d dVar = this.f37363k.get(str);
            if (j != -1 && (dVar == null || dVar.f37386g != j)) {
                return null;
            }
            if (dVar != null && dVar.f37385f != null) {
                return null;
            }
            if (!this.f37368p && !this.f37369q) {
                this.f37362j.mo734k("DIRTY").writeByte(32).mo734k(str).writeByte(10);
                this.f37362j.flush();
                if (this.f37365m) {
                    return null;
                }
                C10123d dVar2 = dVar;
                if (dVar == null) {
                    dVar2 = new C10123d(str);
                    this.f37363k.put(str, dVar2);
                }
                C10121c cVar = new C10121c(dVar2);
                dVar2.f37385f = cVar;
                return cVar;
            }
            this.f37371s.execute(this.f37372t);
            return null;
        }
    }

    /* renamed from: a */
    public final void m1418a() {
        synchronized (this) {
            if (isClosed()) {
                throw new IllegalStateException("cache is closed");
            }
        }
    }

    /* renamed from: a */
    public void m1417a(C10121c cVar, boolean z) throws IOException {
        synchronized (this) {
            C10123d dVar = cVar.f37375a;
            if (dVar.f37385f == cVar) {
                int i = 0;
                if (z) {
                    i = 0;
                    if (!dVar.f37384e) {
                        int i2 = 0;
                        while (true) {
                            i = 0;
                            if (i2 >= this.f37360h) {
                                break;
                            } else if (!cVar.f37376b[i2]) {
                                cVar.m1400a();
                                throw new IllegalStateException("Newly created entry didn't create value for index " + i2);
                            } else if (!this.f37353a.mo1109d(dVar.f37383d[i2])) {
                                cVar.m1400a();
                                return;
                            } else {
                                i2++;
                            }
                        }
                    }
                }
                while (i < this.f37360h) {
                    File file = dVar.f37383d[i];
                    if (!z) {
                        this.f37353a.mo1108e(file);
                    } else if (this.f37353a.mo1109d(file)) {
                        File file2 = dVar.f37382c[i];
                        this.f37353a.mo1112a(file, file2);
                        long j = dVar.f37381b[i];
                        long g = this.f37353a.mo1106g(file2);
                        dVar.f37381b[i] = g;
                        this.f37361i = (this.f37361i - j) + g;
                    }
                    i++;
                }
                this.f37364l++;
                dVar.f37385f = null;
                if (dVar.f37384e || z) {
                    dVar.f37384e = true;
                    this.f37362j.mo734k("CLEAN").writeByte(32);
                    this.f37362j.mo734k(dVar.f37380a);
                    dVar.m1395a(this.f37362j);
                    this.f37362j.writeByte(10);
                    if (z) {
                        long j2 = this.f37370r;
                        this.f37370r = 1 + j2;
                        dVar.f37386g = j2;
                    }
                } else {
                    this.f37363k.remove(dVar.f37380a);
                    this.f37362j.mo734k("REMOVE").writeByte(32);
                    this.f37362j.mo734k(dVar.f37380a);
                    this.f37362j.writeByte(10);
                }
                this.f37362j.flush();
                if (this.f37361i > this.f37359g || m1408d()) {
                    this.f37371s.execute(this.f37372t);
                }
                return;
            }
            throw new IllegalStateException();
        }
    }

    /* renamed from: a */
    public boolean m1416a(C10123d dVar) throws IOException {
        C10121c cVar = dVar.f37385f;
        if (cVar != null) {
            cVar.m1397c();
        }
        for (int i = 0; i < this.f37360h; i++) {
            this.f37353a.mo1108e(dVar.f37382c[i]);
            long j = this.f37361i;
            long[] jArr = dVar.f37381b;
            this.f37361i = j - jArr[i];
            jArr[i] = 0;
        }
        this.f37364l++;
        this.f37362j.mo734k("REMOVE").writeByte(32).mo734k(dVar.f37380a).writeByte(10);
        this.f37363k.remove(dVar.f37380a);
        if (!m1408d()) {
            return true;
        }
        this.f37371s.execute(this.f37372t);
        return true;
    }

    /* renamed from: b */
    public C10124e m1411b(String str) throws IOException {
        synchronized (this) {
            m1410c();
            m1418a();
            m1405e(str);
            C10123d dVar = this.f37363k.get(str);
            if (dVar != null && dVar.f37384e) {
                C10124e a = dVar.m1396a();
                if (a == null) {
                    return null;
                }
                this.f37364l++;
                this.f37362j.mo734k("READ").writeByte(32).mo734k(str).writeByte(10);
                if (m1408d()) {
                    this.f37371s.execute(this.f37372t);
                }
                return a;
            }
            return null;
        }
    }

    /* renamed from: b */
    public void m1412b() throws IOException {
        close();
        this.f37353a.mo1110c(this.f37354b);
    }

    /* renamed from: c */
    public void m1410c() throws IOException {
        synchronized (this) {
            if (!this.f37366n) {
                if (this.f37353a.mo1109d(this.f37357e)) {
                    if (this.f37353a.mo1109d(this.f37355c)) {
                        this.f37353a.mo1108e(this.f37357e);
                    } else {
                        this.f37353a.mo1112a(this.f37357e, this.f37355c);
                    }
                }
                if (this.f37353a.mo1109d(this.f37355c)) {
                    try {
                        m1403g();
                        m1404f();
                        this.f37366n = true;
                        return;
                    } catch (IOException e) {
                        C10203f d = C10203f.m1071d();
                        d.mo1086a(5, "DiskLruCache " + this.f37354b + " is corrupt: " + e.getMessage() + ", removing", e);
                        m1412b();
                        this.f37367o = false;
                    }
                }
                m1402h();
                this.f37366n = true;
            }
        }
    }

    /* renamed from: c */
    public final void m1409c(String str) throws IOException {
        String str2;
        int indexOf = str.indexOf(32);
        if (indexOf != -1) {
            int i = indexOf + 1;
            int indexOf2 = str.indexOf(32, i);
            if (indexOf2 == -1) {
                String substring = str.substring(i);
                str2 = substring;
                if (indexOf == 6) {
                    str2 = substring;
                    if (str.startsWith("REMOVE")) {
                        this.f37363k.remove(substring);
                        return;
                    }
                }
            } else {
                str2 = str.substring(i, indexOf2);
            }
            C10123d dVar = this.f37363k.get(str2);
            C10123d dVar2 = dVar;
            if (dVar == null) {
                dVar2 = new C10123d(str2);
                this.f37363k.put(str2, dVar2);
            }
            if (indexOf2 != -1 && indexOf == 5 && str.startsWith("CLEAN")) {
                String[] split = str.substring(indexOf2 + 1).split(" ");
                dVar2.f37384e = true;
                dVar2.f37385f = null;
                dVar2.m1393b(split);
            } else if (indexOf2 == -1 && indexOf == 5 && str.startsWith("DIRTY")) {
                dVar2.f37385f = new C10121c(dVar2);
            } else if (indexOf2 != -1 || indexOf != 4 || !str.startsWith("READ")) {
                throw new IOException("unexpected journal line: " + str);
            }
        } else {
            throw new IOException("unexpected journal line: " + str);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        C10123d[] dVarArr;
        synchronized (this) {
            if (this.f37366n && !this.f37367o) {
                for (C10123d dVar : (C10123d[]) this.f37363k.values().toArray(new C10123d[this.f37363k.size()])) {
                    if (dVar.f37385f != null) {
                        dVar.f37385f.m1400a();
                    }
                }
                m1401i();
                this.f37362j.close();
                this.f37362j = null;
                this.f37367o = true;
                return;
            }
            this.f37367o = true;
        }
    }

    /* renamed from: d */
    public boolean m1408d() {
        int i = this.f37364l;
        return i >= 2000 && i >= this.f37363k.size();
    }

    /* renamed from: d */
    public boolean m1407d(String str) throws IOException {
        synchronized (this) {
            m1410c();
            m1418a();
            m1405e(str);
            C10123d dVar = this.f37363k.get(str);
            if (dVar == null) {
                return false;
            }
            boolean a = m1416a(dVar);
            if (a && this.f37361i <= this.f37359g) {
                this.f37368p = false;
            }
            return a;
        }
    }

    /* renamed from: e */
    public final AbstractC10263d m1406e() throws FileNotFoundException {
        return C10270k.m754a(new C10120b(this.f37353a.mo1107f(this.f37355c)));
    }

    /* renamed from: e */
    public final void m1405e(String str) {
        if (!f37352u.matcher(str).matches()) {
            throw new IllegalArgumentException("keys must match regex [a-z0-9_-]{1,120}: \"" + str + "\"");
        }
    }

    /* renamed from: f */
    public final void m1404f() throws IOException {
        this.f37353a.mo1108e(this.f37356d);
        Iterator<C10123d> it = this.f37363k.values().iterator();
        while (it.hasNext()) {
            C10123d next = it.next();
            if (next.f37385f == null) {
                for (int i = 0; i < this.f37360h; i++) {
                    this.f37361i += next.f37381b[i];
                }
            } else {
                next.f37385f = null;
                for (int i2 = 0; i2 < this.f37360h; i2++) {
                    this.f37353a.mo1108e(next.f37382c[i2]);
                    this.f37353a.mo1108e(next.f37383d[i2]);
                }
                it.remove();
            }
        }
    }

    @Override // java.io.Flushable
    public void flush() throws IOException {
        synchronized (this) {
            if (this.f37366n) {
                m1418a();
                m1401i();
                this.f37362j.flush();
            }
        }
    }

    /* renamed from: g */
    public final void m1403g() throws IOException {
        AbstractC10264e a = C10270k.m753a(this.f37353a.mo1113a(this.f37355c));
        try {
            String I1 = a.mo732I1();
            String I12 = a.mo732I1();
            String I13 = a.mo732I1();
            String I14 = a.mo732I1();
            String I15 = a.mo732I1();
            if (!"libcore.io.DiskLruCache".equals(I1) || !"1".equals(I12) || !Integer.toString(this.f37358f).equals(I13) || !Integer.toString(this.f37360h).equals(I14) || !"".equals(I15)) {
                throw new IOException("unexpected journal header: [" + I1 + ", " + I12 + ", " + I14 + ", " + I15 + "]");
            }
            int i = 0;
            while (true) {
                try {
                    m1409c(a.mo732I1());
                    i++;
                } catch (EOFException e) {
                    this.f37364l = i - this.f37363k.size();
                    if (!a.mo730M0()) {
                        m1402h();
                    } else {
                        this.f37362j = m1406e();
                    }
                    C10109c.m1463a(a);
                    return;
                }
            }
        } catch (Throwable th) {
            C10109c.m1463a(a);
            throw th;
        }
    }

    /* renamed from: h */
    public void m1402h() throws IOException {
        synchronized (this) {
            if (this.f37362j != null) {
                this.f37362j.close();
            }
            AbstractC10263d a = C10270k.m754a(this.f37353a.mo1111b(this.f37356d));
            a.mo734k("libcore.io.DiskLruCache").writeByte(10);
            a.mo734k("1").writeByte(10);
            a.mo735h(this.f37358f).writeByte(10);
            a.mo735h(this.f37360h).writeByte(10);
            a.writeByte(10);
            for (C10123d dVar : this.f37363k.values()) {
                if (dVar.f37385f != null) {
                    a.mo734k("DIRTY").writeByte(32);
                    a.mo734k(dVar.f37380a);
                    a.writeByte(10);
                } else {
                    a.mo734k("CLEAN").writeByte(32);
                    a.mo734k(dVar.f37380a);
                    dVar.m1395a(a);
                    a.writeByte(10);
                }
            }
            a.close();
            if (this.f37353a.mo1109d(this.f37355c)) {
                this.f37353a.mo1112a(this.f37355c, this.f37357e);
            }
            this.f37353a.mo1112a(this.f37356d, this.f37355c);
            this.f37353a.mo1108e(this.f37357e);
            this.f37362j = m1406e();
            this.f37365m = false;
            this.f37369q = false;
        }
    }

    /* renamed from: i */
    public void m1401i() throws IOException {
        while (this.f37361i > this.f37359g) {
            m1416a(this.f37363k.values().iterator().next());
        }
        this.f37368p = false;
    }

    public boolean isClosed() {
        boolean z;
        synchronized (this) {
            z = this.f37367o;
        }
        return z;
    }
}
