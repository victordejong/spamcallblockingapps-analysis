package p573f.p590w.p592c;

import p573f.AbstractC9867a;
import p573f.p590w.p591b.AbstractC10020a;
import p573f.p590w.p591b.AbstractC10021b;
import p573f.p590w.p591b.AbstractC10022c;
import p573f.p590w.p591b.AbstractC10023d;
import p573f.p590w.p591b.AbstractC10024e;
import p573f.p590w.p591b.AbstractC10025f;
import p573f.p590w.p591b.AbstractC10026g;
import p573f.p590w.p591b.AbstractC10027h;
import p573f.p590w.p591b.AbstractC10028i;
import p573f.p590w.p591b.AbstractC10029j;
import p573f.p590w.p591b.AbstractC10030k;
import p573f.p590w.p591b.AbstractC10031l;
import p573f.p590w.p591b.AbstractC10032m;
import p573f.p590w.p591b.AbstractC10033n;
import p573f.p590w.p591b.AbstractC10034o;
import p573f.p590w.p591b.AbstractC10035p;
import p573f.p590w.p591b.AbstractC10036q;
import p573f.p590w.p591b.AbstractC10037r;
import p573f.p590w.p591b.AbstractC10038s;
import p573f.p590w.p591b.AbstractC10039t;
import p573f.p590w.p591b.AbstractC10040u;
import p573f.p590w.p591b.AbstractC10041v;
import p573f.p590w.p591b.AbstractC10042w;
/* renamed from: f.w.c.v */
/* loaded from: classes2-dex2jar.jar:f/w/c/v.class */
public class C10064v {
    /* renamed from: a */
    public static int m1607a(Object obj) {
        if (obj instanceof AbstractC10058p) {
            return ((AbstractC10058p) obj).getArity();
        }
        if (obj instanceof AbstractC10020a) {
            return 0;
        }
        if (obj instanceof AbstractC10031l) {
            return 1;
        }
        if (obj instanceof AbstractC10035p) {
            return 2;
        }
        if (obj instanceof AbstractC10036q) {
            return 3;
        }
        if (obj instanceof AbstractC10037r) {
            return 4;
        }
        if (obj instanceof AbstractC10038s) {
            return 5;
        }
        if (obj instanceof AbstractC10039t) {
            return 6;
        }
        if (obj instanceof AbstractC10040u) {
            return 7;
        }
        if (obj instanceof AbstractC10041v) {
            return 8;
        }
        if (obj instanceof AbstractC10042w) {
            return 9;
        }
        if (obj instanceof AbstractC10021b) {
            return 10;
        }
        if (obj instanceof AbstractC10022c) {
            return 11;
        }
        if (obj instanceof AbstractC10023d) {
            return 12;
        }
        if (obj instanceof AbstractC10024e) {
            return 13;
        }
        if (obj instanceof AbstractC10025f) {
            return 14;
        }
        if (obj instanceof AbstractC10026g) {
            return 15;
        }
        if (obj instanceof AbstractC10027h) {
            return 16;
        }
        if (obj instanceof AbstractC10028i) {
            return 17;
        }
        if (obj instanceof AbstractC10029j) {
            return 18;
        }
        if (obj instanceof AbstractC10030k) {
            return 19;
        }
        if (obj instanceof AbstractC10032m) {
            return 20;
        }
        if (obj instanceof AbstractC10033n) {
            return 21;
        }
        return obj instanceof AbstractC10034o ? 22 : -1;
    }

    /* renamed from: a */
    public static ClassCastException m1608a(ClassCastException classCastException) {
        m1603a(classCastException);
        throw classCastException;
    }

    /* renamed from: a */
    public static Object m1606a(Object obj, int i) {
        if (obj == null || m1602b(obj, i)) {
            return obj;
        }
        m1605a(obj, "kotlin.jvm.functions.Function" + i);
        throw null;
    }

    /* renamed from: a */
    public static <T extends Throwable> T m1603a(T t) {
        C10059q.m1639a((Throwable) t, C10064v.class.getName());
        return t;
    }

    /* renamed from: a */
    public static void m1605a(Object obj, String str) {
        String name = obj == null ? "null" : obj.getClass().getName();
        m1604a(name + " cannot be cast to " + str);
        throw null;
    }

    /* renamed from: a */
    public static void m1604a(String str) {
        m1608a(new ClassCastException(str));
        throw null;
    }

    /* renamed from: b */
    public static boolean m1602b(Object obj, int i) {
        return (obj instanceof AbstractC9867a) && m1607a(obj) == i;
    }
}
