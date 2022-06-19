package androidx.room;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.util.Log;
import f.b.a.b.b;
import f.t.a.a;
import f.t.a.f;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.Lock;
/* renamed from: androidx.room.g */
/* loaded from: classes-dex2jar.jar:androidx/room/g.class */
public class C0409g {

    /* renamed from: k */
    private static final String[] f2174k = {"UPDATE", "DELETE", "INSERT"};

    /* renamed from: b */
    final String[] f2176b;

    /* renamed from: c */
    private Map<String, Set<String>> f2177c;

    /* renamed from: d */
    final AbstractC0419j f2178d;

    /* renamed from: g */
    volatile f f2181g;

    /* renamed from: h */
    private C0411b f2182h;

    /* renamed from: e */
    AtomicBoolean f2179e = new AtomicBoolean(false);

    /* renamed from: f */
    private volatile boolean f2180f = false;

    /* renamed from: i */
    final b<AbstractC0412c, C0413d> f2183i = new b<>();

    /* renamed from: j */
    Runnable f2184j = new RunnableC0410a();

    /* renamed from: a */
    final HashMap<String, Integer> f2175a = new HashMap<>();

    /* renamed from: androidx.room.g$a */
    /* loaded from: classes-dex2jar.jar:androidx/room/g$a.class */
    class RunnableC0410a implements Runnable {
        RunnableC0410a() {
            C0409g.this = r4;
        }

        /* JADX WARN: Finally extract failed */
        /* renamed from: a */
        private Set<Integer> m4825a() {
            HashSet hashSet = new HashSet();
            Cursor m4798p = C0409g.this.f2178d.m4798p(new a("SELECT * FROM room_table_modification_log WHERE invalidated = 1;"));
            while (m4798p.moveToNext()) {
                try {
                    hashSet.add(Integer.valueOf(m4798p.getInt(0)));
                } catch (Throwable th) {
                    m4798p.close();
                    throw th;
                }
            }
            m4798p.close();
            if (!hashSet.isEmpty()) {
                C0409g.this.f2181g.F();
            }
            return hashSet;
        }

        /* JADX WARN: Removed duplicated region for block: B:54:0x012b  */
        /* JADX WARN: Removed duplicated region for block: B:71:0x017f A[ADDED_TO_REGION, ORIG_RETURN, RETURN] */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                Method dump skipped, instructions count: 393
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.room.C0409g.RunnableC0410a.run():void");
        }
    }

    /* renamed from: androidx.room.g$b */
    /* loaded from: classes-dex2jar.jar:androidx/room/g$b.class */
    public static class C0411b {

        /* renamed from: a */
        final long[] f2186a;

        /* renamed from: b */
        final boolean[] f2187b;

        /* renamed from: c */
        final int[] f2188c;

        /* renamed from: d */
        boolean f2189d;

        /* renamed from: e */
        boolean f2190e;

        C0411b(int i) {
            long[] jArr = new long[i];
            this.f2186a = jArr;
            boolean[] zArr = new boolean[i];
            this.f2187b = zArr;
            this.f2188c = new int[i];
            Arrays.fill(jArr, 0L);
            Arrays.fill(zArr, false);
        }

        /* renamed from: a */
        int[] m4824a() {
            synchronized (this) {
                if (this.f2189d && !this.f2190e) {
                    int length = this.f2186a.length;
                    int i = 0;
                    while (true) {
                        int i2 = 1;
                        if (i >= length) {
                            this.f2190e = true;
                            this.f2189d = false;
                            return this.f2188c;
                        }
                        boolean z = this.f2186a[i] > 0;
                        boolean[] zArr = this.f2187b;
                        if (z != zArr[i]) {
                            int[] iArr = this.f2188c;
                            if (!z) {
                                i2 = 2;
                            }
                            iArr[i] = i2;
                        } else {
                            this.f2188c[i] = 0;
                        }
                        zArr[i] = z;
                        i++;
                    }
                }
                return null;
            }
        }

        /* renamed from: b */
        boolean m4823b(int... iArr) {
            boolean z;
            synchronized (this) {
                z = false;
                for (int i : iArr) {
                    long[] jArr = this.f2186a;
                    long j = jArr[i];
                    jArr[i] = 1 + j;
                    if (j == 0) {
                        this.f2189d = true;
                        z = true;
                    }
                }
            }
            return z;
        }

        /* renamed from: c */
        boolean m4822c(int... iArr) {
            boolean z;
            synchronized (this) {
                z = false;
                for (int i : iArr) {
                    long[] jArr = this.f2186a;
                    long j = jArr[i];
                    jArr[i] = j - 1;
                    if (j == 1) {
                        this.f2189d = true;
                        z = true;
                    }
                }
            }
            return z;
        }

        /* renamed from: d */
        void m4821d() {
            synchronized (this) {
                this.f2190e = false;
            }
        }
    }

    /* renamed from: androidx.room.g$c */
    /* loaded from: classes-dex2jar.jar:androidx/room/g$c.class */
    public static abstract class AbstractC0412c {

        /* renamed from: a */
        final String[] f2191a;

        public AbstractC0412c(String[] strArr) {
            this.f2191a = (String[]) Arrays.copyOf(strArr, strArr.length);
        }

        /* renamed from: a */
        boolean m4820a() {
            return false;
        }

        /* renamed from: b */
        public abstract void m4819b(Set<String> set);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.room.g$d */
    /* loaded from: classes-dex2jar.jar:androidx/room/g$d.class */
    public static class C0413d {

        /* renamed from: a */
        final int[] f2192a;

        /* renamed from: b */
        private final String[] f2193b;

        /* renamed from: c */
        final AbstractC0412c f2194c;

        /* renamed from: d */
        private final Set<String> f2195d;

        C0413d(AbstractC0412c abstractC0412c, int[] iArr, String[] strArr) {
            this.f2194c = abstractC0412c;
            this.f2192a = iArr;
            this.f2193b = strArr;
            if (iArr.length != 1) {
                this.f2195d = null;
                return;
            }
            HashSet hashSet = new HashSet();
            hashSet.add(strArr[0]);
            this.f2195d = Collections.unmodifiableSet(hashSet);
        }

        /* renamed from: a */
        void m4818a(Set<Integer> set) {
            int length = this.f2192a.length;
            HashSet hashSet = null;
            int i = 0;
            while (i < length) {
                HashSet hashSet2 = hashSet;
                if (set.contains(Integer.valueOf(this.f2192a[i]))) {
                    if (length == 1) {
                        hashSet2 = this.f2195d;
                    } else {
                        hashSet2 = hashSet;
                        if (hashSet == null) {
                            hashSet2 = new HashSet(length);
                        }
                        hashSet2.add(this.f2193b[i]);
                    }
                }
                i++;
                hashSet = hashSet2;
            }
            if (hashSet != null) {
                this.f2194c.m4819b(hashSet);
            }
        }

        /* renamed from: b */
        void m4817b(String[] strArr) {
            HashSet hashSet;
            if (this.f2193b.length == 1) {
                int length = strArr.length;
                int i = 0;
                while (true) {
                    hashSet = null;
                    if (i >= length) {
                        break;
                    } else if (strArr[i].equalsIgnoreCase(this.f2193b[0])) {
                        hashSet = this.f2195d;
                        break;
                    } else {
                        i++;
                    }
                }
            } else {
                HashSet hashSet2 = new HashSet();
                for (String str : strArr) {
                    String[] strArr2 = this.f2193b;
                    int length2 = strArr2.length;
                    int i2 = 0;
                    while (true) {
                        if (i2 < length2) {
                            String str2 = strArr2[i2];
                            if (str2.equalsIgnoreCase(str)) {
                                hashSet2.add(str2);
                                break;
                            }
                            i2++;
                        }
                    }
                }
                hashSet = null;
                if (hashSet2.size() > 0) {
                    hashSet = hashSet2;
                }
            }
            if (hashSet != null) {
                this.f2194c.m4819b(hashSet);
            }
        }
    }

    public C0409g(AbstractC0419j abstractC0419j, Map<String, String> map, Map<String, Set<String>> map2, String... strArr) {
        this.f2178d = abstractC0419j;
        this.f2182h = new C0411b(strArr.length);
        this.f2177c = map2;
        new C0408f(abstractC0419j);
        int length = strArr.length;
        this.f2176b = new String[length];
        for (int i = 0; i < length; i++) {
            String str = strArr[i];
            Locale locale = Locale.US;
            String lowerCase = str.toLowerCase(locale);
            this.f2175a.put(lowerCase, Integer.valueOf(i));
            String str2 = map.get(strArr[i]);
            if (str2 != null) {
                this.f2176b[i] = str2.toLowerCase(locale);
            } else {
                this.f2176b[i] = lowerCase;
            }
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String value = entry.getValue();
            Locale locale2 = Locale.US;
            String lowerCase2 = value.toLowerCase(locale2);
            if (this.f2175a.containsKey(lowerCase2)) {
                String lowerCase3 = entry.getKey().toLowerCase(locale2);
                HashMap<String, Integer> hashMap = this.f2175a;
                hashMap.put(lowerCase3, hashMap.get(lowerCase2));
            }
        }
    }

    /* renamed from: b */
    private static void m4837b(StringBuilder sb, String str, String str2) {
        sb.append("`");
        sb.append("room_table_modification_trigger_");
        sb.append(str);
        sb.append("_");
        sb.append(str2);
        sb.append("`");
    }

    /* renamed from: h */
    private String[] m4831h(String[] strArr) {
        HashSet hashSet = new HashSet();
        for (String str : strArr) {
            String lowerCase = str.toLowerCase(Locale.US);
            if (this.f2177c.containsKey(lowerCase)) {
                hashSet.addAll(this.f2177c.get(lowerCase));
            } else {
                hashSet.add(str);
            }
        }
        return (String[]) hashSet.toArray(new String[hashSet.size()]);
    }

    /* renamed from: j */
    private void m4829j(f.t.a.b bVar, int i) {
        String[] strArr;
        bVar.w("INSERT OR IGNORE INTO room_table_modification_log VALUES(" + i + ", 0)");
        String str = this.f2176b[i];
        StringBuilder sb = new StringBuilder();
        for (String str2 : f2174k) {
            sb.setLength(0);
            sb.append("CREATE TEMP TRIGGER IF NOT EXISTS ");
            m4837b(sb, str, str2);
            sb.append(" AFTER ");
            sb.append(str2);
            sb.append(" ON `");
            sb.append(str);
            sb.append("` BEGIN UPDATE ");
            sb.append("room_table_modification_log");
            sb.append(" SET ");
            sb.append("invalidated");
            sb.append(" = 1");
            sb.append(" WHERE ");
            sb.append("table_id");
            sb.append(" = ");
            sb.append(i);
            sb.append(" AND ");
            sb.append("invalidated");
            sb.append(" = 0");
            sb.append("; END");
            bVar.w(sb.toString());
        }
    }

    /* renamed from: k */
    private void m4828k(f.t.a.b bVar, int i) {
        String[] strArr;
        String str = this.f2176b[i];
        StringBuilder sb = new StringBuilder();
        for (String str2 : f2174k) {
            sb.setLength(0);
            sb.append("DROP TRIGGER IF EXISTS ");
            m4837b(sb, str, str2);
            bVar.w(sb.toString());
        }
    }

    /* renamed from: a */
    public void m4838a(AbstractC0412c abstractC0412c) {
        C0413d c0413d;
        String[] m4831h = m4831h(abstractC0412c.f2191a);
        int[] iArr = new int[m4831h.length];
        int length = m4831h.length;
        for (int i = 0; i < length; i++) {
            Integer num = this.f2175a.get(m4831h[i].toLowerCase(Locale.US));
            if (num == null) {
                throw new IllegalArgumentException("There is no table with name " + m4831h[i]);
            }
            iArr[i] = num.intValue();
        }
        C0413d c0413d2 = new C0413d(abstractC0412c, iArr, m4831h);
        synchronized (this.f2183i) {
            c0413d = (C0413d) this.f2183i.j(abstractC0412c, c0413d2);
        }
        if (c0413d != null || !this.f2182h.m4823b(iArr)) {
            return;
        }
        m4827l();
    }

    /* renamed from: c */
    boolean m4836c() {
        if (!this.f2178d.m4799o()) {
            return false;
        }
        if (!this.f2180f) {
            this.f2178d.m4805i().o0();
        }
        if (this.f2180f) {
            return true;
        }
        Log.e("ROOM", "database is not initialized even though it is open");
        return false;
    }

    /* renamed from: d */
    public void m4835d(f.t.a.b bVar) {
        synchronized (this) {
            if (this.f2180f) {
                Log.e("ROOM", "Invalidation tracker is initialized twice :/.");
                return;
            }
            bVar.w("PRAGMA temp_store = MEMORY;");
            bVar.w("PRAGMA recursive_triggers='ON';");
            bVar.w("CREATE TEMP TABLE room_table_modification_log(table_id INTEGER PRIMARY KEY, invalidated INTEGER NOT NULL DEFAULT 0)");
            m4826m(bVar);
            this.f2181g = bVar.G("UPDATE room_table_modification_log SET invalidated = 0 WHERE invalidated = 1 ");
            this.f2180f = true;
        }
    }

    /* renamed from: e */
    public void m4834e(String... strArr) {
        synchronized (this.f2183i) {
            Iterator it = this.f2183i.iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                if (!((AbstractC0412c) entry.getKey()).m4820a()) {
                    ((C0413d) entry.getValue()).m4817b(strArr);
                }
            }
        }
    }

    /* renamed from: f */
    public void m4833f() {
        if (this.f2179e.compareAndSet(false, true)) {
            this.f2178d.m4804j().execute(this.f2184j);
        }
    }

    /* renamed from: g */
    public void m4832g(AbstractC0412c abstractC0412c) {
        C0413d c0413d;
        synchronized (this.f2183i) {
            c0413d = (C0413d) this.f2183i.k(abstractC0412c);
        }
        if (c0413d == null || !this.f2182h.m4822c(c0413d.f2192a)) {
            return;
        }
        m4827l();
    }

    /* renamed from: i */
    public void m4830i(Context context, String str) {
        new C0414h(context, str, this, this.f2178d.m4804j());
    }

    /* renamed from: l */
    void m4827l() {
        if (!this.f2178d.m4799o()) {
            return;
        }
        m4826m(this.f2178d.m4805i().o0());
    }

    /* renamed from: m */
    public void m4826m(f.t.a.b bVar) {
        if (bVar.R0()) {
            return;
        }
        while (true) {
            try {
                Lock m4806h = this.f2178d.m4806h();
                m4806h.lock();
                int[] m4824a = this.f2182h.m4824a();
                if (m4824a == null) {
                    m4806h.unlock();
                    return;
                }
                int length = m4824a.length;
                bVar.beginTransaction();
                for (int i = 0; i < length; i++) {
                    int i2 = m4824a[i];
                    if (i2 == 1) {
                        m4829j(bVar, i);
                    } else if (i2 == 2) {
                        m4828k(bVar, i);
                    }
                }
                bVar.h0();
                bVar.z0();
                this.f2182h.m4821d();
                m4806h.unlock();
            } catch (SQLiteException | IllegalStateException e) {
                Log.e("ROOM", "Cannot run invalidation tracker. Is the db closed?", e);
                return;
            }
        }
    }
}
