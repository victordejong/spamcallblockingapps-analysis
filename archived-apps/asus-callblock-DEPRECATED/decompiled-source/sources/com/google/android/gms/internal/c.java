package com.google.android.gms.internal;

import com.asus.updatesdk.BuildConfig;
import com.google.android.gms.internal.j;
import com.google.android.gms.internal.k;
import com.google.android.gms.tagmanager.an;
import com.google.android.gms.tagmanager.cn;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/c.class */
public final class c {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/c$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final Map<String, k.a> f4171a;

        /* renamed from: b  reason: collision with root package name */
        public final k.a f4172b;

        private a(Map<String, k.a> map, k.a aVar) {
            this.f4171a = map;
            this.f4172b = aVar;
        }

        /* synthetic */ a(Map map, k.a aVar, byte b2) {
            this(map, aVar);
        }

        public static b a() {
            return new b((byte) 0);
        }

        public final String toString() {
            String valueOf = String.valueOf(Collections.unmodifiableMap(this.f4171a));
            String valueOf2 = String.valueOf(this.f4172b);
            return new StringBuilder(String.valueOf(valueOf).length() + 32 + String.valueOf(valueOf2).length()).append("Properties: ").append(valueOf).append(" pushAfterEvaluate: ").append(valueOf2).toString();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/c$b.class */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        k.a f4173a;

        /* renamed from: b  reason: collision with root package name */
        private final Map<String, k.a> f4174b;

        private b() {
            this.f4174b = new HashMap();
        }

        /* synthetic */ b(byte b2) {
            this();
        }

        public final a a() {
            return new a(this.f4174b, this.f4173a, (byte) 0);
        }

        public final b a(String str, k.a aVar) {
            this.f4174b.put(str, aVar);
            return this;
        }
    }

    /* renamed from: com.google.android.gms.internal.c$c  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/c$c.class */
    public static final class C0126c {

        /* renamed from: a  reason: collision with root package name */
        public final List<e> f4175a;

        /* renamed from: b  reason: collision with root package name */
        public final Map<String, List<a>> f4176b;
        public final String c;
        private final int d;

        private C0126c(List<e> list, Map<String, List<a>> map, String str, int i) {
            this.f4175a = Collections.unmodifiableList(list);
            this.f4176b = Collections.unmodifiableMap(map);
            this.c = str;
            this.d = i;
        }

        /* synthetic */ C0126c(List list, Map map, String str, int i, byte b2) {
            this(list, map, str, i);
        }

        public static d a() {
            return new d((byte) 0);
        }

        public final String toString() {
            String valueOf = String.valueOf(this.f4175a);
            String valueOf2 = String.valueOf(this.f4176b);
            return new StringBuilder(String.valueOf(valueOf).length() + 17 + String.valueOf(valueOf2).length()).append("Rules: ").append(valueOf).append("  Macros: ").append(valueOf2).toString();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/c$d.class */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        final List<e> f4177a;

        /* renamed from: b  reason: collision with root package name */
        String f4178b;
        int c;
        private final Map<String, List<a>> d;

        private d() {
            this.f4177a = new ArrayList();
            this.d = new HashMap();
            this.f4178b = BuildConfig.FLAVOR;
            this.c = 0;
        }

        /* synthetic */ d(byte b2) {
            this();
        }

        public final C0126c a() {
            return new C0126c(this.f4177a, this.d, this.f4178b, this.c, (byte) 0);
        }

        public final d a(a aVar) {
            String a2 = cn.a((k.a) Collections.unmodifiableMap(aVar.f4171a).get(i.INSTANCE_NAME.toString()));
            List<a> list = this.d.get(a2);
            List<a> list2 = list;
            if (list == null) {
                list2 = new ArrayList<>();
                this.d.put(a2, list2);
            }
            list2.add(aVar);
            return this;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/c$e.class */
    public static final class e {

        /* renamed from: a  reason: collision with root package name */
        public final List<a> f4179a;

        /* renamed from: b  reason: collision with root package name */
        public final List<a> f4180b;
        public final List<a> c;
        public final List<a> d;
        public final List<a> e;
        public final List<a> f;
        private final List<String> g;
        private final List<String> h;
        private final List<String> i;
        private final List<String> j;

        private e(List<a> list, List<a> list2, List<a> list3, List<a> list4, List<a> list5, List<a> list6, List<String> list7, List<String> list8, List<String> list9, List<String> list10) {
            this.f4179a = Collections.unmodifiableList(list);
            this.f4180b = Collections.unmodifiableList(list2);
            this.c = Collections.unmodifiableList(list3);
            this.d = Collections.unmodifiableList(list4);
            this.e = Collections.unmodifiableList(list5);
            this.f = Collections.unmodifiableList(list6);
            this.g = Collections.unmodifiableList(list7);
            this.h = Collections.unmodifiableList(list8);
            this.i = Collections.unmodifiableList(list9);
            this.j = Collections.unmodifiableList(list10);
        }

        /* synthetic */ e(List list, List list2, List list3, List list4, List list5, List list6, List list7, List list8, List list9, List list10, byte b2) {
            this(list, list2, list3, list4, list5, list6, list7, list8, list9, list10);
        }

        public final String toString() {
            String valueOf = String.valueOf(this.f4179a);
            String valueOf2 = String.valueOf(this.f4180b);
            String valueOf3 = String.valueOf(this.c);
            String valueOf4 = String.valueOf(this.d);
            String valueOf5 = String.valueOf(this.e);
            String valueOf6 = String.valueOf(this.f);
            return new StringBuilder(String.valueOf(valueOf).length() + 102 + String.valueOf(valueOf2).length() + String.valueOf(valueOf3).length() + String.valueOf(valueOf4).length() + String.valueOf(valueOf5).length() + String.valueOf(valueOf6).length()).append("Positive predicates: ").append(valueOf).append("  Negative predicates: ").append(valueOf2).append("  Add tags: ").append(valueOf3).append("  Remove tags: ").append(valueOf4).append("  Add macros: ").append(valueOf5).append("  Remove macros: ").append(valueOf6).toString();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/c$f.class */
    public static final class f {

        /* renamed from: a  reason: collision with root package name */
        final List<a> f4181a;

        /* renamed from: b  reason: collision with root package name */
        final List<a> f4182b;
        final List<a> c;
        final List<a> d;
        final List<a> e;
        final List<a> f;
        final List<String> g;
        final List<String> h;
        final List<String> i;
        final List<String> j;

        private f() {
            this.f4181a = new ArrayList();
            this.f4182b = new ArrayList();
            this.c = new ArrayList();
            this.d = new ArrayList();
            this.e = new ArrayList();
            this.f = new ArrayList();
            this.g = new ArrayList();
            this.h = new ArrayList();
            this.i = new ArrayList();
            this.j = new ArrayList();
        }

        /* synthetic */ f(byte b2) {
            this();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/c$g.class */
    public static final class g extends Exception {
        public g(String str) {
            super(str);
        }
    }

    private static a a(j.b bVar, j.f fVar, k.a[] aVarArr) {
        b a2 = a.a();
        for (int i : bVar.f4192a) {
            j.e eVar = (j.e) a(fVar.d, Integer.valueOf(i).intValue(), "properties");
            String str = (String) a(fVar.f4201b, eVar.f4198a, "keys");
            k.a aVar = (k.a) a(aVarArr, eVar.f4199b, "values");
            if (i.PUSH_AFTER_EVALUATE.toString().equals(str)) {
                a2.f4173a = aVar;
            } else {
                a2.a(str, aVar);
            }
        }
        return a2.a();
    }

    public static C0126c a(j.f fVar) {
        k.a[] aVarArr = new k.a[fVar.c.length];
        for (int i = 0; i < fVar.c.length; i++) {
            a(i, fVar, aVarArr, new HashSet(0));
        }
        d a2 = C0126c.a();
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < fVar.f.length; i2++) {
            arrayList.add(a(fVar.f[i2], fVar, aVarArr));
        }
        ArrayList arrayList2 = new ArrayList();
        for (int i3 = 0; i3 < fVar.g.length; i3++) {
            arrayList2.add(a(fVar.g[i3], fVar, aVarArr));
        }
        ArrayList arrayList3 = new ArrayList();
        for (int i4 = 0; i4 < fVar.e.length; i4++) {
            a a3 = a(fVar.e[i4], fVar, aVarArr);
            a2.a(a3);
            arrayList3.add(a3);
        }
        for (j.g gVar : fVar.h) {
            a2.f4177a.add(a(gVar, arrayList, arrayList3, arrayList2, fVar));
        }
        a2.f4178b = fVar.l;
        a2.c = fVar.q;
        return a2.a();
    }

    private static e a(j.g gVar, List<a> list, List<a> list2, List<a> list3, j.f fVar) {
        f fVar2 = new f((byte) 0);
        for (int i : gVar.f4202a) {
            fVar2.f4181a.add(list3.get(Integer.valueOf(i).intValue()));
        }
        for (int i2 : gVar.f4203b) {
            fVar2.f4182b.add(list3.get(Integer.valueOf(i2).intValue()));
        }
        for (int i3 : gVar.c) {
            fVar2.c.add(list.get(Integer.valueOf(i3).intValue()));
        }
        for (int i4 : gVar.e) {
            fVar2.i.add(fVar.c[Integer.valueOf(i4).intValue()].f4211b);
        }
        for (int i5 : gVar.d) {
            fVar2.d.add(list.get(Integer.valueOf(i5).intValue()));
        }
        for (int i6 : gVar.f) {
            fVar2.j.add(fVar.c[Integer.valueOf(i6).intValue()].f4211b);
        }
        for (int i7 : gVar.g) {
            fVar2.e.add(list2.get(Integer.valueOf(i7).intValue()));
        }
        for (int i8 : gVar.i) {
            fVar2.g.add(fVar.c[Integer.valueOf(i8).intValue()].f4211b);
        }
        for (int i9 : gVar.h) {
            fVar2.f.add(list2.get(Integer.valueOf(i9).intValue()));
        }
        for (int i10 : gVar.j) {
            fVar2.h.add(fVar.c[Integer.valueOf(i10).intValue()].f4211b);
        }
        return new e(fVar2.f4181a, fVar2.f4182b, fVar2.c, fVar2.d, fVar2.e, fVar2.f, fVar2.g, fVar2.h, fVar2.i, fVar2.j, (byte) 0);
    }

    private static k.a a(int i, j.f fVar, k.a[] aVarArr, Set<Integer> set) {
        k.a aVar;
        if (set.contains(Integer.valueOf(i))) {
            String valueOf = String.valueOf(set);
            a(new StringBuilder(String.valueOf(valueOf).length() + 90).append("Value cycle detected.  Current value reference: ").append(i).append(".  Previous value references: ").append(valueOf).append(".").toString());
        }
        k.a aVar2 = (k.a) a(fVar.c, i, "values");
        if (aVarArr[i] != null) {
            aVar = aVarArr[i];
        } else {
            aVar = null;
            set.add(Integer.valueOf(i));
            switch (aVar2.f4210a) {
                case 1:
                case 5:
                case 6:
                case 8:
                    aVar = aVar2;
                    break;
                case 2:
                    j.h b2 = b(aVar2);
                    k.a a2 = a(aVar2);
                    a2.c = new k.a[b2.f4205b.length];
                    int[] iArr = b2.f4205b;
                    int length = iArr.length;
                    int i2 = 0;
                    int i3 = 0;
                    while (true) {
                        aVar = a2;
                        if (i2 >= length) {
                            break;
                        } else {
                            a2.c[i3] = a(iArr[i2], fVar, aVarArr, set);
                            i2++;
                            i3++;
                        }
                    }
                case 3:
                    k.a a3 = a(aVar2);
                    j.h b3 = b(aVar2);
                    if (b3.c.length != b3.d.length) {
                        int length2 = b3.c.length;
                        a(new StringBuilder(58).append("Uneven map keys (").append(length2).append(") and map values (").append(b3.d.length).append(")").toString());
                    }
                    a3.d = new k.a[b3.c.length];
                    a3.e = new k.a[b3.c.length];
                    int[] iArr2 = b3.c;
                    int length3 = iArr2.length;
                    int i4 = 0;
                    int i5 = 0;
                    while (i4 < length3) {
                        a3.d[i5] = a(iArr2[i4], fVar, aVarArr, set);
                        i4++;
                        i5++;
                    }
                    int[] iArr3 = b3.d;
                    int length4 = iArr3.length;
                    int i6 = 0;
                    int i7 = 0;
                    while (true) {
                        aVar = a3;
                        if (i6 >= length4) {
                            break;
                        } else {
                            a3.e[i7] = a(iArr3[i6], fVar, aVarArr, set);
                            i6++;
                            i7++;
                        }
                    }
                case 4:
                    aVar = a(aVar2);
                    aVar.f = cn.a(a(b(aVar2).g, fVar, aVarArr, set));
                    break;
                case 7:
                    k.a a4 = a(aVar2);
                    j.h b4 = b(aVar2);
                    a4.j = new k.a[b4.f.length];
                    int[] iArr4 = b4.f;
                    int length5 = iArr4.length;
                    int i8 = 0;
                    int i9 = 0;
                    while (true) {
                        aVar = a4;
                        if (i8 >= length5) {
                            break;
                        } else {
                            a4.j[i9] = a(iArr4[i8], fVar, aVarArr, set);
                            i8++;
                            i9++;
                        }
                    }
            }
            if (aVar == null) {
                String valueOf2 = String.valueOf(aVar2);
                a(new StringBuilder(String.valueOf(valueOf2).length() + 15).append("Invalid value: ").append(valueOf2).toString());
            }
            aVarArr[i] = aVar;
            set.remove(Integer.valueOf(i));
        }
        return aVar;
    }

    public static k.a a(k.a aVar) {
        k.a aVar2 = new k.a();
        aVar2.f4210a = aVar.f4210a;
        aVar2.k = (int[]) aVar.k.clone();
        if (aVar.l) {
            aVar2.l = aVar.l;
        }
        return aVar2;
    }

    private static <T> T a(T[] tArr, int i, String str) {
        if (i < 0 || i >= tArr.length) {
            a(new StringBuilder(String.valueOf(str).length() + 45).append("Index out of bounds detected: ").append(i).append(" in ").append(str).toString());
        }
        return tArr[i];
    }

    public static void a(InputStream inputStream, OutputStream outputStream) {
        byte[] bArr = new byte[1024];
        while (true) {
            int read = inputStream.read(bArr);
            if (read != -1) {
                outputStream.write(bArr, 0, read);
            } else {
                return;
            }
        }
    }

    private static void a(String str) {
        an.a(str);
        throw new g(str);
    }

    private static j.h b(k.a aVar) {
        if (((j.h) aVar.a(j.h.f4204a)) == null) {
            String valueOf = String.valueOf(aVar);
            a(new StringBuilder(String.valueOf(valueOf).length() + 54).append("Expected a ServingValue and didn't get one. Value is: ").append(valueOf).toString());
        }
        return (j.h) aVar.a(j.h.f4204a);
    }
}
