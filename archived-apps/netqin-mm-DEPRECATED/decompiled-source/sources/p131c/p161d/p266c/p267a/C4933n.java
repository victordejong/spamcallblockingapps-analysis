package p131c.p161d.p266c.p267a;
/* renamed from: c.d.c.a.n */
/* loaded from: classes2-dex2jar.jar:c/d/c/a/n.class */
public final class C4933n {
    /* renamed from: a */
    public static int m24798a(int i, int i2) {
        m24771c(i, i2, "index");
        return i;
    }

    /* renamed from: a */
    public static <T> T m24795a(T t) {
        if (t != null) {
            return t;
        }
        throw null;
    }

    /* renamed from: a */
    public static <T> T m24794a(T t, Object obj) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(String.valueOf(obj));
    }

    /* renamed from: a */
    public static <T> T m24793a(T t, String str, Object obj) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(C4940r.m24754a(str, obj));
    }

    /* renamed from: a */
    public static <T> T m24792a(T t, String str, Object obj, Object obj2) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(C4940r.m24754a(str, obj, obj2));
    }

    /* renamed from: a */
    public static String m24797a(int i, int i2, int i3) {
        return (i < 0 || i > i3) ? m24777b(i, i3, "start index") : (i2 < 0 || i2 > i3) ? m24777b(i2, i3, "end index") : C4940r.m24754a("end index (%s) must not be less than start index (%s)", Integer.valueOf(i2), Integer.valueOf(i));
    }

    /* renamed from: a */
    public static String m24796a(int i, int i2, String str) {
        if (i < 0) {
            return C4940r.m24754a("%s (%s) must not be negative", str, Integer.valueOf(i));
        }
        if (i2 >= 0) {
            return C4940r.m24754a("%s (%s) must be less than size (%s)", str, Integer.valueOf(i), Integer.valueOf(i2));
        }
        throw new IllegalArgumentException("negative size: " + i2);
    }

    /* renamed from: a */
    public static void m24791a(boolean z) {
        if (!z) {
            throw new IllegalArgumentException();
        }
    }

    /* renamed from: a */
    public static void m24790a(boolean z, Object obj) {
        if (!z) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
    }

    /* renamed from: a */
    public static void m24789a(boolean z, String str, char c) {
        if (!z) {
            throw new IllegalArgumentException(C4940r.m24754a(str, Character.valueOf(c)));
        }
    }

    /* renamed from: a */
    public static void m24788a(boolean z, String str, char c, Object obj) {
        if (!z) {
            throw new IllegalArgumentException(C4940r.m24754a(str, Character.valueOf(c), obj));
        }
    }

    /* renamed from: a */
    public static void m24787a(boolean z, String str, int i) {
        if (!z) {
            throw new IllegalArgumentException(C4940r.m24754a(str, Integer.valueOf(i)));
        }
    }

    /* renamed from: a */
    public static void m24786a(boolean z, String str, int i, int i2) {
        if (!z) {
            throw new IllegalArgumentException(C4940r.m24754a(str, Integer.valueOf(i), Integer.valueOf(i2)));
        }
    }

    /* renamed from: a */
    public static void m24785a(boolean z, String str, long j) {
        if (!z) {
            throw new IllegalArgumentException(C4940r.m24754a(str, Long.valueOf(j)));
        }
    }

    /* renamed from: a */
    public static void m24784a(boolean z, String str, long j, long j2) {
        if (!z) {
            throw new IllegalArgumentException(C4940r.m24754a(str, Long.valueOf(j), Long.valueOf(j2)));
        }
    }

    /* renamed from: a */
    public static void m24783a(boolean z, String str, long j, Object obj) {
        if (!z) {
            throw new IllegalArgumentException(C4940r.m24754a(str, Long.valueOf(j), obj));
        }
    }

    /* renamed from: a */
    public static void m24782a(boolean z, String str, Object obj) {
        if (!z) {
            throw new IllegalArgumentException(C4940r.m24754a(str, obj));
        }
    }

    /* renamed from: a */
    public static void m24781a(boolean z, String str, Object obj, Object obj2) {
        if (!z) {
            throw new IllegalArgumentException(C4940r.m24754a(str, obj, obj2));
        }
    }

    /* renamed from: a */
    public static void m24780a(boolean z, String str, Object obj, Object obj2, Object obj3, Object obj4) {
        if (!z) {
            throw new IllegalArgumentException(C4940r.m24754a(str, obj, obj2, obj3, obj4));
        }
    }

    /* renamed from: b */
    public static int m24779b(int i, int i2) {
        m24770d(i, i2, "index");
        return i;
    }

    /* renamed from: b */
    public static String m24777b(int i, int i2, String str) {
        if (i < 0) {
            return C4940r.m24754a("%s (%s) must not be negative", str, Integer.valueOf(i));
        }
        if (i2 >= 0) {
            return C4940r.m24754a("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i), Integer.valueOf(i2));
        }
        throw new IllegalArgumentException("negative size: " + i2);
    }

    /* renamed from: b */
    public static void m24778b(int i, int i2, int i3) {
        if (i < 0 || i2 < i || i2 > i3) {
            throw new IndexOutOfBoundsException(m24797a(i, i2, i3));
        }
    }

    /* renamed from: b */
    public static void m24776b(boolean z) {
        if (!z) {
            throw new IllegalStateException();
        }
    }

    /* renamed from: b */
    public static void m24775b(boolean z, Object obj) {
        if (!z) {
            throw new IllegalStateException(String.valueOf(obj));
        }
    }

    /* renamed from: b */
    public static void m24774b(boolean z, String str, int i) {
        if (!z) {
            throw new IllegalStateException(C4940r.m24754a(str, Integer.valueOf(i)));
        }
    }

    /* renamed from: b */
    public static void m24773b(boolean z, String str, long j) {
        if (!z) {
            throw new IllegalStateException(C4940r.m24754a(str, Long.valueOf(j)));
        }
    }

    /* renamed from: b */
    public static void m24772b(boolean z, String str, Object obj) {
        if (!z) {
            throw new IllegalStateException(C4940r.m24754a(str, obj));
        }
    }

    /* renamed from: c */
    public static int m24771c(int i, int i2, String str) {
        if (i >= 0 && i < i2) {
            return i;
        }
        throw new IndexOutOfBoundsException(m24796a(i, i2, str));
    }

    /* renamed from: d */
    public static int m24770d(int i, int i2, String str) {
        if (i >= 0 && i <= i2) {
            return i;
        }
        throw new IndexOutOfBoundsException(m24777b(i, i2, str));
    }
}
