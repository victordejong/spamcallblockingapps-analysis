package androidx.room;

import android.app.ActivityManager;
import android.content.Context;
import android.database.Cursor;
import android.os.Build;
import android.os.CancellationSignal;
import android.os.Looper;
import android.util.Log;
import androidx.room.p008r.AbstractC0428a;
import f.b.a.a.a;
import f.t.a.b;
import f.t.a.c;
import f.t.a.e;
import f.t.a.f;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.TreeMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
/* renamed from: androidx.room.j */
/* loaded from: classes-dex2jar.jar:androidx/room/j.class */
public abstract class AbstractC0419j {
    @Deprecated

    /* renamed from: a */
    protected volatile b f2213a;

    /* renamed from: b */
    private Executor f2214b;

    /* renamed from: c */
    private c f2215c;

    /* renamed from: e */
    private boolean f2217e;

    /* renamed from: f */
    boolean f2218f;
    @Deprecated

    /* renamed from: g */
    protected List<AbstractC0421b> f2219g;

    /* renamed from: h */
    private final ReentrantReadWriteLock f2220h = new ReentrantReadWriteLock();

    /* renamed from: i */
    private final ThreadLocal<Integer> f2221i = new ThreadLocal<>();

    /* renamed from: d */
    private final C0409g f2216d = m4809e();

    /* renamed from: androidx.room.j$a */
    /* loaded from: classes-dex2jar.jar:androidx/room/j$a.class */
    public static class C0420a<T extends AbstractC0419j> {

        /* renamed from: a */
        private final Class<T> f2222a;

        /* renamed from: b */
        private final String f2223b;

        /* renamed from: c */
        private final Context f2224c;

        /* renamed from: d */
        private ArrayList<AbstractC0421b> f2225d;

        /* renamed from: e */
        private Executor f2226e;

        /* renamed from: f */
        private Executor f2227f;

        /* renamed from: g */
        private c.c f2228g;

        /* renamed from: h */
        private boolean f2229h;

        /* renamed from: j */
        private boolean f2231j;

        /* renamed from: l */
        private boolean f2233l;

        /* renamed from: n */
        private Set<Integer> f2235n;

        /* renamed from: o */
        private Set<Integer> f2236o;

        /* renamed from: p */
        private String f2237p;

        /* renamed from: q */
        private File f2238q;

        /* renamed from: i */
        private EnumC0422c f2230i = EnumC0422c.AUTOMATIC;

        /* renamed from: k */
        private boolean f2232k = true;

        /* renamed from: m */
        private final C0423d f2234m = new C0423d();

        public C0420a(Context context, Class<T> cls, String str) {
            this.f2224c = context;
            this.f2222a = cls;
            this.f2223b = str;
        }

        /* renamed from: a */
        public C0420a<T> m4795a(AbstractC0421b abstractC0421b) {
            if (this.f2225d == null) {
                this.f2225d = new ArrayList<>();
            }
            this.f2225d.add(abstractC0421b);
            return this;
        }

        /* renamed from: b */
        public C0420a<T> m4794b(AbstractC0428a... abstractC0428aArr) {
            if (this.f2236o == null) {
                this.f2236o = new HashSet();
            }
            for (AbstractC0428a abstractC0428a : abstractC0428aArr) {
                this.f2236o.add(Integer.valueOf(abstractC0428a.f2251a));
                this.f2236o.add(Integer.valueOf(abstractC0428a.f2252b));
            }
            this.f2234m.m4784b(abstractC0428aArr);
            return this;
        }

        /* renamed from: c */
        public C0420a<T> m4793c() {
            this.f2229h = true;
            return this;
        }

        /* renamed from: d */
        public T m4792d() {
            Executor executor;
            if (this.f2224c != null) {
                if (this.f2222a == null) {
                    throw new IllegalArgumentException("Must provide an abstract class that extends RoomDatabase");
                }
                Executor executor2 = this.f2226e;
                if (executor2 == null && this.f2227f == null) {
                    Executor d = a.d();
                    this.f2227f = d;
                    this.f2226e = d;
                } else if (executor2 != null && this.f2227f == null) {
                    this.f2227f = executor2;
                } else if (executor2 == null && (executor = this.f2227f) != null) {
                    this.f2226e = executor;
                }
                Set<Integer> set = this.f2236o;
                if (set != null && this.f2235n != null) {
                    for (Integer num : set) {
                        if (this.f2235n.contains(num)) {
                            throw new IllegalArgumentException("Inconsistency detected. A Migration was supplied to addMigration(Migration... migrations) that has a start or end version equal to a start version supplied to fallbackToDestructiveMigrationFrom(int... startVersions). Start version: " + num);
                        }
                    }
                }
                if (this.f2228g == null) {
                    this.f2228g = new f.t.a.g.c();
                }
                String str = this.f2237p;
                if (str != null || this.f2238q != null) {
                    if (this.f2223b == null) {
                        throw new IllegalArgumentException("Cannot create from asset or file for an in-memory database.");
                    }
                    if (str != null && this.f2238q != null) {
                        throw new IllegalArgumentException("Both createFromAsset() and createFromFile() was called on this Builder but the database can only be created using one of the two configurations.");
                    }
                    this.f2228g = new o(str, this.f2238q, this.f2228g);
                }
                Context context = this.f2224c;
                C0405a c0405a = new C0405a(context, this.f2223b, this.f2228g, this.f2234m, this.f2225d, this.f2229h, this.f2230i.resolve(context), this.f2226e, this.f2227f, this.f2231j, this.f2232k, this.f2233l, this.f2235n, this.f2237p, this.f2238q);
                T t = (T) C0418i.m4815b(this.f2222a, "_Impl");
                t.m4802l(c0405a);
                return t;
            }
            throw new IllegalArgumentException("Cannot provide null context for the database.");
        }

        /* renamed from: e */
        public C0420a<T> m4791e() {
            this.f2232k = false;
            this.f2233l = true;
            return this;
        }

        /* renamed from: f */
        public C0420a<T> m4790f(c.c cVar) {
            this.f2228g = cVar;
            return this;
        }

        /* renamed from: g */
        public C0420a<T> m4789g(Executor executor) {
            this.f2226e = executor;
            return this;
        }
    }

    /* renamed from: androidx.room.j$b */
    /* loaded from: classes-dex2jar.jar:androidx/room/j$b.class */
    public static abstract class AbstractC0421b {
        /* renamed from: a */
        public void m4788a(b bVar) {
        }

        /* renamed from: b */
        public void m4787b(b bVar) {
        }

        /* renamed from: c */
        public void m4786c(b bVar) {
        }
    }

    /* renamed from: androidx.room.j$c */
    /* loaded from: classes-dex2jar.jar:androidx/room/j$c.class */
    public enum EnumC0422c {
        AUTOMATIC,
        TRUNCATE,
        WRITE_AHEAD_LOGGING;

        private static boolean isLowRamDevice(ActivityManager activityManager) {
            if (Build.VERSION.SDK_INT >= 19) {
                return activityManager.isLowRamDevice();
            }
            return false;
        }

        EnumC0422c resolve(Context context) {
            ActivityManager activityManager;
            return this != AUTOMATIC ? this : (Build.VERSION.SDK_INT < 16 || (activityManager = (ActivityManager) context.getSystemService("activity")) == null || isLowRamDevice(activityManager)) ? TRUNCATE : WRITE_AHEAD_LOGGING;
        }
    }

    /* renamed from: androidx.room.j$d */
    /* loaded from: classes-dex2jar.jar:androidx/room/j$d.class */
    public static class C0423d {

        /* renamed from: a */
        private HashMap<Integer, TreeMap<Integer, AbstractC0428a>> f2239a = new HashMap<>();

        /* renamed from: a */
        private void m4785a(AbstractC0428a abstractC0428a) {
            int i = abstractC0428a.f2251a;
            int i2 = abstractC0428a.f2252b;
            TreeMap<Integer, AbstractC0428a> treeMap = this.f2239a.get(Integer.valueOf(i));
            TreeMap<Integer, AbstractC0428a> treeMap2 = treeMap;
            if (treeMap == null) {
                treeMap2 = new TreeMap<>();
                this.f2239a.put(Integer.valueOf(i), treeMap2);
            }
            AbstractC0428a abstractC0428a2 = treeMap2.get(Integer.valueOf(i2));
            if (abstractC0428a2 != null) {
                Log.w("ROOM", "Overriding migration " + abstractC0428a2 + " with " + abstractC0428a);
            }
            treeMap2.put(Integer.valueOf(i2), abstractC0428a);
        }

        /* JADX WARN: Code restructure failed: missing block: B:23:0x0081, code lost:
            if (r0 > r7) goto L24;
         */
        /* JADX WARN: Code restructure failed: missing block: B:24:0x0084, code lost:
            r15 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:28:0x009c, code lost:
            if (r0 < r7) goto L24;
         */
        /* JADX WARN: Removed duplicated region for block: B:11:0x002a  */
        /* JADX WARN: Removed duplicated region for block: B:41:0x0028 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:42:0x00a7 A[SYNTHETIC] */
        /* renamed from: d */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private java.util.List<androidx.room.p008r.AbstractC0428a> m4782d(java.util.List<androidx.room.p008r.AbstractC0428a> r5, boolean r6, int r7, int r8) {
            /*
                r4 = this;
            L0:
                r0 = r6
                if (r0 == 0) goto Ld
                r0 = r7
                r1 = r8
                if (r0 >= r1) goto Lcc
                goto L13
            Ld:
                r0 = r7
                r1 = r8
                if (r0 <= r1) goto Lcc
            L13:
                r0 = r4
                java.util.HashMap<java.lang.Integer, java.util.TreeMap<java.lang.Integer, androidx.room.r.a>> r0 = r0.f2239a
                r1 = r7
                java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
                java.lang.Object r0 = r0.get(r1)
                java.util.TreeMap r0 = (java.util.TreeMap) r0
                r9 = r0
                r0 = r9
                if (r0 != 0) goto L2a
                r0 = 0
                return r0
            L2a:
                r0 = r6
                if (r0 == 0) goto L38
                r0 = r9
                java.util.NavigableSet r0 = r0.descendingKeySet()
                r10 = r0
                goto L3f
            L38:
                r0 = r9
                java.util.Set r0 = r0.keySet()
                r10 = r0
            L3f:
                r0 = r10
                java.util.Iterator r0 = r0.iterator()
                r10 = r0
            L48:
                r0 = r10
                boolean r0 = r0.hasNext()
                r11 = r0
                r0 = 1
                r12 = r0
                r0 = 0
                r13 = r0
                r0 = r11
                if (r0 == 0) goto Lc2
                r0 = r10
                java.lang.Object r0 = r0.next()
                java.lang.Integer r0 = (java.lang.Integer) r0
                int r0 = r0.intValue()
                r14 = r0
                r0 = r6
                if (r0 == 0) goto L8a
                r0 = r13
                r15 = r0
                r0 = r14
                r1 = r8
                if (r0 > r1) goto La2
                r0 = r13
                r15 = r0
                r0 = r14
                r1 = r7
                if (r0 <= r1) goto La2
            L84:
                r0 = 1
                r15 = r0
                goto La2
            L8a:
                r0 = r13
                r15 = r0
                r0 = r14
                r1 = r8
                if (r0 < r1) goto La2
                r0 = r13
                r15 = r0
                r0 = r14
                r1 = r7
                if (r0 >= r1) goto La2
                goto L84
            La2:
                r0 = r15
                if (r0 == 0) goto L48
                r0 = r5
                r1 = r9
                r2 = r14
                java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
                java.lang.Object r1 = r1.get(r2)
                boolean r0 = r0.add(r1)
                r0 = r14
                r7 = r0
                r0 = r12
                r15 = r0
                goto Lc5
            Lc2:
                r0 = 0
                r15 = r0
            Lc5:
                r0 = r15
                if (r0 != 0) goto L0
                r0 = 0
                return r0
            Lcc:
                r0 = r5
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.room.AbstractC0419j.C0423d.m4782d(java.util.List, boolean, int, int):java.util.List");
        }

        /* renamed from: b */
        public void m4784b(AbstractC0428a... abstractC0428aArr) {
            for (AbstractC0428a abstractC0428a : abstractC0428aArr) {
                m4785a(abstractC0428a);
            }
        }

        /* renamed from: c */
        public List<AbstractC0428a> m4783c(int i, int i2) {
            if (i == i2) {
                return Collections.emptyList();
            }
            return m4782d(new ArrayList(), i2 > i, i, i2);
        }
    }

    public AbstractC0419j() {
        new ConcurrentHashMap();
    }

    /* renamed from: n */
    private static boolean m4800n() {
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }

    /* renamed from: a */
    public void m4813a() {
        if (!this.f2217e && m4800n()) {
            throw new IllegalStateException("Cannot access database on the main thread since it may potentially lock the UI for a long period of time.");
        }
    }

    /* renamed from: b */
    public void m4812b() {
        if (m4803k() || this.f2221i.get() == null) {
            return;
        }
        throw new IllegalStateException("Cannot access database on a different coroutine context inherited from a suspending transaction.");
    }

    @Deprecated
    /* renamed from: c */
    public void m4811c() {
        m4813a();
        b o0 = this.f2215c.o0();
        this.f2216d.m4826m(o0);
        o0.beginTransaction();
    }

    /* renamed from: d */
    public f m4810d(String str) {
        m4813a();
        m4812b();
        return this.f2215c.o0().G(str);
    }

    /* renamed from: e */
    protected abstract C0409g m4809e();

    /* renamed from: f */
    protected abstract c m4808f(C0405a c0405a);

    @Deprecated
    /* renamed from: g */
    public void m4807g() {
        this.f2215c.o0().z0();
        if (!m4803k()) {
            this.f2216d.m4833f();
        }
    }

    /* renamed from: h */
    public Lock m4806h() {
        return this.f2220h.readLock();
    }

    /* renamed from: i */
    public c m4805i() {
        return this.f2215c;
    }

    /* renamed from: j */
    public Executor m4804j() {
        return this.f2214b;
    }

    /* renamed from: k */
    public boolean m4803k() {
        return this.f2215c.o0().R0();
    }

    /* renamed from: l */
    public void m4802l(C0405a c0405a) {
        n m4808f = m4808f(c0405a);
        this.f2215c = m4808f;
        if (m4808f instanceof n) {
            m4808f.b(c0405a);
        }
        boolean z = false;
        if (Build.VERSION.SDK_INT >= 16) {
            z = false;
            if (c0405a.f2167g == EnumC0422c.WRITE_AHEAD_LOGGING) {
                z = true;
            }
            this.f2215c.setWriteAheadLoggingEnabled(z);
        }
        this.f2219g = c0405a.f2165e;
        this.f2214b = c0405a.f2168h;
        new ExecutorC0426q(c0405a.f2169i);
        this.f2217e = c0405a.f2166f;
        this.f2218f = z;
        if (c0405a.f2170j) {
            this.f2216d.m4830i(c0405a.f2162b, c0405a.f2163c);
        }
    }

    /* renamed from: m */
    protected void m4801m(b bVar) {
        this.f2216d.m4835d(bVar);
    }

    /* renamed from: o */
    public boolean m4799o() {
        b bVar = this.f2213a;
        return bVar != null && bVar.isOpen();
    }

    /* renamed from: p */
    public Cursor m4798p(e eVar) {
        return m4797q(eVar, null);
    }

    /* renamed from: q */
    public Cursor m4797q(e eVar, CancellationSignal cancellationSignal) {
        m4813a();
        m4812b();
        return (cancellationSignal == null || Build.VERSION.SDK_INT < 16) ? this.f2215c.o0().L0(eVar) : this.f2215c.o0().W(eVar, cancellationSignal);
    }

    @Deprecated
    /* renamed from: r */
    public void m4796r() {
        this.f2215c.o0().h0();
    }
}
