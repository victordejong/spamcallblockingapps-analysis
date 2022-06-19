package androidx.room.p009s;

import android.database.Cursor;
import android.os.Build;
import com.appsflyer.internal.referrer.Payload;
import com.appsflyer.share.Constants;
import f.t.a.b;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
/* renamed from: androidx.room.s.f */
/* loaded from: classes-dex2jar.jar:androidx/room/s/f.class */
public class C0434f {

    /* renamed from: a */
    public final String f2258a;

    /* renamed from: b */
    public final Map<String, C0435a> f2259b;

    /* renamed from: c */
    public final Set<C0436b> f2260c;

    /* renamed from: d */
    public final Set<C0438d> f2261d;

    /* renamed from: androidx.room.s.f$a */
    /* loaded from: classes-dex2jar.jar:androidx/room/s/f$a.class */
    public static class C0435a {

        /* renamed from: a */
        public final String f2262a;

        /* renamed from: b */
        public final String f2263b;

        /* renamed from: c */
        public final int f2264c;

        /* renamed from: d */
        public final boolean f2265d;

        /* renamed from: e */
        public final int f2266e;

        /* renamed from: f */
        public final String f2267f;

        /* renamed from: g */
        private final int f2268g;

        public C0435a(String str, String str2, boolean z, int i, String str3, int i2) {
            this.f2262a = str;
            this.f2263b = str2;
            this.f2265d = z;
            this.f2266e = i;
            this.f2264c = m4748a(str2);
            this.f2267f = str3;
            this.f2268g = i2;
        }

        /* renamed from: a */
        private static int m4748a(String str) {
            if (str == null) {
                return 5;
            }
            String upperCase = str.toUpperCase(Locale.US);
            if (upperCase.contains("INT")) {
                return 3;
            }
            if (upperCase.contains("CHAR") || upperCase.contains("CLOB") || upperCase.contains("TEXT")) {
                return 2;
            }
            if (upperCase.contains("BLOB")) {
                return 5;
            }
            return (upperCase.contains("REAL") || upperCase.contains("FLOA") || upperCase.contains("DOUB")) ? 4 : 1;
        }

        /* renamed from: b */
        public boolean m4747b() {
            return this.f2266e > 0;
        }

        public boolean equals(Object obj) {
            String str;
            String str2;
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || C0435a.class != obj.getClass()) {
                return false;
            }
            C0435a c0435a = (C0435a) obj;
            if (Build.VERSION.SDK_INT >= 20) {
                if (this.f2266e != c0435a.f2266e) {
                    return false;
                }
            } else if (m4747b() != c0435a.m4747b()) {
                return false;
            }
            if (!this.f2262a.equals(c0435a.f2262a) || this.f2265d != c0435a.f2265d) {
                return false;
            }
            if (this.f2268g == 1 && c0435a.f2268g == 2 && (str2 = this.f2267f) != null && !str2.equals(c0435a.f2267f)) {
                return false;
            }
            if (this.f2268g == 2 && c0435a.f2268g == 1 && (str = c0435a.f2267f) != null && !str.equals(this.f2267f)) {
                return false;
            }
            int i = this.f2268g;
            if (i != 0 && i == c0435a.f2268g) {
                String str3 = this.f2267f;
                if (str3 != null) {
                    if (!str3.equals(c0435a.f2267f)) {
                        return false;
                    }
                } else if (c0435a.f2267f != null) {
                    return false;
                }
            }
            if (this.f2264c != c0435a.f2264c) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            int hashCode = this.f2262a.hashCode();
            return (((((hashCode * 31) + this.f2264c) * 31) + (this.f2265d ? 1231 : 1237)) * 31) + this.f2266e;
        }

        public String toString() {
            return "Column{name='" + this.f2262a + "', type='" + this.f2263b + "', affinity='" + this.f2264c + "', notNull=" + this.f2265d + ", primaryKeyPosition=" + this.f2266e + ", defaultValue='" + this.f2267f + "'}";
        }
    }

    /* renamed from: androidx.room.s.f$b */
    /* loaded from: classes-dex2jar.jar:androidx/room/s/f$b.class */
    public static class C0436b {

        /* renamed from: a */
        public final String f2269a;

        /* renamed from: b */
        public final String f2270b;

        /* renamed from: c */
        public final String f2271c;

        /* renamed from: d */
        public final List<String> f2272d;

        /* renamed from: e */
        public final List<String> f2273e;

        public C0436b(String str, String str2, String str3, List<String> list, List<String> list2) {
            this.f2269a = str;
            this.f2270b = str2;
            this.f2271c = str3;
            this.f2272d = Collections.unmodifiableList(list);
            this.f2273e = Collections.unmodifiableList(list2);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || C0436b.class != obj.getClass()) {
                return false;
            }
            C0436b c0436b = (C0436b) obj;
            if (!this.f2269a.equals(c0436b.f2269a) || !this.f2270b.equals(c0436b.f2270b) || !this.f2271c.equals(c0436b.f2271c) || !this.f2272d.equals(c0436b.f2272d)) {
                return false;
            }
            return this.f2273e.equals(c0436b.f2273e);
        }

        public int hashCode() {
            return (((((((this.f2269a.hashCode() * 31) + this.f2270b.hashCode()) * 31) + this.f2271c.hashCode()) * 31) + this.f2272d.hashCode()) * 31) + this.f2273e.hashCode();
        }

        public String toString() {
            return "ForeignKey{referenceTable='" + this.f2269a + "', onDelete='" + this.f2270b + "', onUpdate='" + this.f2271c + "', columnNames=" + this.f2272d + ", referenceColumnNames=" + this.f2273e + '}';
        }
    }

    /* renamed from: androidx.room.s.f$c */
    /* loaded from: classes-dex2jar.jar:androidx/room/s/f$c.class */
    public static class C0437c implements Comparable<C0437c> {

        /* renamed from: f */
        final int f2274f;

        /* renamed from: g */
        final int f2275g;

        /* renamed from: h */
        final String f2276h;

        /* renamed from: i */
        final String f2277i;

        C0437c(int i, int i2, String str, String str2) {
            this.f2274f = i;
            this.f2275g = i2;
            this.f2276h = str;
            this.f2277i = str2;
        }

        /* renamed from: c */
        public int compareTo(C0437c c0437c) {
            int i = this.f2274f - c0437c.f2274f;
            int i2 = i;
            if (i == 0) {
                i2 = this.f2275g - c0437c.f2275g;
            }
            return i2;
        }
    }

    /* renamed from: androidx.room.s.f$d */
    /* loaded from: classes-dex2jar.jar:androidx/room/s/f$d.class */
    public static class C0438d {

        /* renamed from: a */
        public final String f2278a;

        /* renamed from: b */
        public final boolean f2279b;

        /* renamed from: c */
        public final List<String> f2280c;

        public C0438d(String str, boolean z, List<String> list) {
            this.f2278a = str;
            this.f2279b = z;
            this.f2280c = list;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || C0438d.class != obj.getClass()) {
                return false;
            }
            C0438d c0438d = (C0438d) obj;
            if (this.f2279b != c0438d.f2279b || !this.f2280c.equals(c0438d.f2280c)) {
                return false;
            }
            return this.f2278a.startsWith("index_") ? c0438d.f2278a.startsWith("index_") : this.f2278a.equals(c0438d.f2278a);
        }

        public int hashCode() {
            return ((((this.f2278a.startsWith("index_") ? -1184239155 : this.f2278a.hashCode()) * 31) + (this.f2279b ? 1 : 0)) * 31) + this.f2280c.hashCode();
        }

        public String toString() {
            return "Index{name='" + this.f2278a + "', unique=" + this.f2279b + ", columns=" + this.f2280c + '}';
        }
    }

    public C0434f(String str, Map<String, C0435a> map, Set<C0436b> set, Set<C0438d> set2) {
        this.f2258a = str;
        this.f2259b = Collections.unmodifiableMap(map);
        this.f2260c = Collections.unmodifiableSet(set);
        this.f2261d = set2 == null ? null : Collections.unmodifiableSet(set2);
    }

    /* renamed from: a */
    public static C0434f m4754a(b bVar, String str) {
        return new C0434f(str, m4753b(bVar, str), m4751d(bVar, str), m4749f(bVar, str));
    }

    /* renamed from: b */
    private static Map<String, C0435a> m4753b(b bVar, String str) {
        Cursor r0 = bVar.r0("PRAGMA table_info(`" + str + "`)");
        HashMap hashMap = new HashMap();
        try {
            if (r0.getColumnCount() > 0) {
                int columnIndex = r0.getColumnIndex("name");
                int columnIndex2 = r0.getColumnIndex(Payload.TYPE);
                int columnIndex3 = r0.getColumnIndex("notnull");
                int columnIndex4 = r0.getColumnIndex("pk");
                int columnIndex5 = r0.getColumnIndex("dflt_value");
                while (r0.moveToNext()) {
                    String string = r0.getString(columnIndex);
                    hashMap.put(string, new C0435a(string, r0.getString(columnIndex2), r0.getInt(columnIndex3) != 0, r0.getInt(columnIndex4), r0.getString(columnIndex5), 2));
                }
            }
            return hashMap;
        } finally {
            r0.close();
        }
    }

    /* renamed from: c */
    private static List<C0437c> m4752c(Cursor cursor) {
        int columnIndex = cursor.getColumnIndex("id");
        int columnIndex2 = cursor.getColumnIndex("seq");
        int columnIndex3 = cursor.getColumnIndex("from");
        int columnIndex4 = cursor.getColumnIndex("to");
        int count = cursor.getCount();
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < count; i++) {
            cursor.moveToPosition(i);
            arrayList.add(new C0437c(cursor.getInt(columnIndex), cursor.getInt(columnIndex2), cursor.getString(columnIndex3), cursor.getString(columnIndex4)));
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    /* renamed from: d */
    private static Set<C0436b> m4751d(b bVar, String str) {
        HashSet hashSet = new HashSet();
        Cursor r0 = bVar.r0("PRAGMA foreign_key_list(`" + str + "`)");
        try {
            int columnIndex = r0.getColumnIndex("id");
            int columnIndex2 = r0.getColumnIndex("seq");
            int columnIndex3 = r0.getColumnIndex("table");
            int columnIndex4 = r0.getColumnIndex("on_delete");
            int columnIndex5 = r0.getColumnIndex("on_update");
            List<C0437c> m4752c = m4752c(r0);
            int count = r0.getCount();
            for (int i = 0; i < count; i++) {
                r0.moveToPosition(i);
                if (r0.getInt(columnIndex2) == 0) {
                    int i2 = r0.getInt(columnIndex);
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    for (C0437c c0437c : m4752c) {
                        if (c0437c.f2274f == i2) {
                            arrayList.add(c0437c.f2276h);
                            arrayList2.add(c0437c.f2277i);
                        }
                    }
                    hashSet.add(new C0436b(r0.getString(columnIndex3), r0.getString(columnIndex4), r0.getString(columnIndex5), arrayList, arrayList2));
                }
            }
            return hashSet;
        } finally {
            r0.close();
        }
    }

    /* renamed from: e */
    private static C0438d m4750e(b bVar, String str, boolean z) {
        Cursor r0 = bVar.r0("PRAGMA index_xinfo(`" + str + "`)");
        try {
            int columnIndex = r0.getColumnIndex("seqno");
            int columnIndex2 = r0.getColumnIndex("cid");
            int columnIndex3 = r0.getColumnIndex("name");
            if (columnIndex == -1 || columnIndex2 == -1 || columnIndex3 == -1) {
                r0.close();
                return null;
            }
            TreeMap treeMap = new TreeMap();
            while (r0.moveToNext()) {
                if (r0.getInt(columnIndex2) >= 0) {
                    treeMap.put(Integer.valueOf(r0.getInt(columnIndex)), r0.getString(columnIndex3));
                }
            }
            ArrayList arrayList = new ArrayList(treeMap.size());
            arrayList.addAll(treeMap.values());
            return new C0438d(str, z, arrayList);
        } finally {
            r0.close();
        }
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: f */
    private static Set<C0438d> m4749f(b bVar, String str) {
        Cursor r0 = bVar.r0("PRAGMA index_list(`" + str + "`)");
        try {
            int columnIndex = r0.getColumnIndex("name");
            int columnIndex2 = r0.getColumnIndex("origin");
            int columnIndex3 = r0.getColumnIndex("unique");
            if (columnIndex == -1 || columnIndex2 == -1 || columnIndex3 == -1) {
                r0.close();
                return null;
            }
            HashSet hashSet = new HashSet();
            while (r0.moveToNext()) {
                if (Constants.URL_CAMPAIGN.equals(r0.getString(columnIndex2))) {
                    String string = r0.getString(columnIndex);
                    boolean z = true;
                    if (r0.getInt(columnIndex3) != 1) {
                        z = false;
                    }
                    C0438d m4750e = m4750e(bVar, string, z);
                    if (m4750e == null) {
                        r0.close();
                        return null;
                    }
                    hashSet.add(m4750e);
                }
            }
            r0.close();
            return hashSet;
        } catch (Throwable th) {
            r0.close();
            throw th;
        }
    }

    public boolean equals(Object obj) {
        Set<C0438d> set;
        if (this == obj) {
            return true;
        }
        if (obj == null || C0434f.class != obj.getClass()) {
            return false;
        }
        C0434f c0434f = (C0434f) obj;
        String str = this.f2258a;
        if (str != null) {
            if (!str.equals(c0434f.f2258a)) {
                return false;
            }
        } else if (c0434f.f2258a != null) {
            return false;
        }
        Map<String, C0435a> map = this.f2259b;
        if (map != null) {
            if (!map.equals(c0434f.f2259b)) {
                return false;
            }
        } else if (c0434f.f2259b != null) {
            return false;
        }
        Set<C0436b> set2 = this.f2260c;
        if (set2 != null) {
            if (!set2.equals(c0434f.f2260c)) {
                return false;
            }
        } else if (c0434f.f2260c != null) {
            return false;
        }
        Set<C0438d> set3 = this.f2261d;
        if (set3 != null && (set = c0434f.f2261d) != null) {
            return set3.equals(set);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f2258a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        Map<String, C0435a> map = this.f2259b;
        int hashCode2 = map != null ? map.hashCode() : 0;
        Set<C0436b> set = this.f2260c;
        if (set != null) {
            i = set.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        return "TableInfo{name='" + this.f2258a + "', columns=" + this.f2259b + ", foreignKeys=" + this.f2260c + ", indices=" + this.f2261d + '}';
    }
}
