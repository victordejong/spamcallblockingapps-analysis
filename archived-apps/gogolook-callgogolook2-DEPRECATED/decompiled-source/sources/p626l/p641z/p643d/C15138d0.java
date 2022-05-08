package p626l.p641z.p643d;

import java.util.Collection;
import p459j.p460a.p582w0.p590x4.C14247d;
import p626l.AbstractC14882b;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p642c.AbstractC15108b;
import p626l.p641z.p642c.AbstractC15109c;
import p626l.p641z.p642c.AbstractC15110d;
import p626l.p641z.p642c.AbstractC15111e;
import p626l.p641z.p642c.AbstractC15112f;
import p626l.p641z.p642c.AbstractC15113g;
import p626l.p641z.p642c.AbstractC15114h;
import p626l.p641z.p642c.AbstractC15115i;
import p626l.p641z.p642c.AbstractC15116j;
import p626l.p641z.p642c.AbstractC15117k;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p642c.AbstractC15119m;
import p626l.p641z.p642c.AbstractC15120n;
import p626l.p641z.p642c.AbstractC15121o;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p642c.AbstractC15123q;
import p626l.p641z.p642c.AbstractC15124r;
import p626l.p641z.p642c.AbstractC15125s;
import p626l.p641z.p642c.AbstractC15126t;
import p626l.p641z.p642c.AbstractC15127u;
import p626l.p641z.p642c.AbstractC15128v;
import p626l.p641z.p642c.AbstractC15129w;
import p626l.p641z.p643d.p644e0.AbstractC15141a;
/* renamed from: l.z.d.d0 */
/* loaded from: classes3-dex2jar.jar:l/z/d/d0.class */
public class C15138d0 {
    /* renamed from: a */
    public static ClassCastException m401a(ClassCastException classCastException) {
        m396a(classCastException);
        throw classCastException;
    }

    /* renamed from: a */
    public static Object m399a(Object obj, int i) {
        if (obj == null || m394b(obj, i)) {
            return obj;
        }
        m398a(obj, "kotlin.jvm.functions.Function" + i);
        throw null;
    }

    /* renamed from: a */
    public static <T extends Throwable> T m396a(T t) {
        C15149k.m379a((Throwable) t, C15138d0.class.getName());
        return t;
    }

    /* renamed from: a */
    public static Collection m400a(Object obj) {
        if (!(obj instanceof AbstractC15141a)) {
            return m395b(obj);
        }
        m398a(obj, "kotlin.collections.MutableCollection");
        throw null;
    }

    /* renamed from: a */
    public static void m398a(Object obj, String str) {
        String name = obj == null ? C14247d.f31851f : obj.getClass().getName();
        m397a(name + " cannot be cast to " + str);
        throw null;
    }

    /* renamed from: a */
    public static void m397a(String str) {
        m401a(new ClassCastException(str));
        throw null;
    }

    /* renamed from: b */
    public static Collection m395b(Object obj) {
        try {
            return (Collection) obj;
        } catch (ClassCastException e) {
            m401a(e);
            throw null;
        }
    }

    /* renamed from: b */
    public static boolean m394b(Object obj, int i) {
        return (obj instanceof AbstractC14882b) && m393c(obj) == i;
    }

    /* renamed from: c */
    public static int m393c(Object obj) {
        if (obj instanceof AbstractC15146h) {
            return ((AbstractC15146h) obj).getArity();
        }
        if (obj instanceof AbstractC15107a) {
            return 0;
        }
        if (obj instanceof AbstractC15118l) {
            return 1;
        }
        if (obj instanceof AbstractC15122p) {
            return 2;
        }
        if (obj instanceof AbstractC15123q) {
            return 3;
        }
        if (obj instanceof AbstractC15124r) {
            return 4;
        }
        if (obj instanceof AbstractC15125s) {
            return 5;
        }
        if (obj instanceof AbstractC15126t) {
            return 6;
        }
        if (obj instanceof AbstractC15127u) {
            return 7;
        }
        if (obj instanceof AbstractC15128v) {
            return 8;
        }
        if (obj instanceof AbstractC15129w) {
            return 9;
        }
        if (obj instanceof AbstractC15108b) {
            return 10;
        }
        if (obj instanceof AbstractC15109c) {
            return 11;
        }
        if (obj instanceof AbstractC15110d) {
            return 12;
        }
        if (obj instanceof AbstractC15111e) {
            return 13;
        }
        if (obj instanceof AbstractC15112f) {
            return 14;
        }
        if (obj instanceof AbstractC15113g) {
            return 15;
        }
        if (obj instanceof AbstractC15114h) {
            return 16;
        }
        if (obj instanceof AbstractC15115i) {
            return 17;
        }
        if (obj instanceof AbstractC15116j) {
            return 18;
        }
        if (obj instanceof AbstractC15117k) {
            return 19;
        }
        if (obj instanceof AbstractC15119m) {
            return 20;
        }
        if (obj instanceof AbstractC15120n) {
            return 21;
        }
        return obj instanceof AbstractC15121o ? 22 : -1;
    }
}
