package p033i.p064c.p066b0.p073e.p074b;

import p033i.p064c.p066b0.p072d.AbstractC0482d;
/* renamed from: i.c.b0.e.b.b */
/* loaded from: classes2-dex2jar.jar:i/c/b0/e/b/b.class */
public final class C0499b {

    /* renamed from: a */
    static final AbstractC0482d<Object, Object> f1075a = new a();

    /* renamed from: a */
    public static <T> AbstractC0482d<T, T> m22a() {
        return (AbstractC0482d<T, T>) f1075a;
    }

    /* renamed from: b */
    public static int m21b(int i, String str) {
        if (i > 0) {
            return i;
        }
        throw new IllegalArgumentException(str + " > 0 required but it was " + i);
    }

    /* renamed from: c */
    public static long m20c(long j, String str) {
        if (j > 0) {
            return j;
        }
        throw new IllegalArgumentException(str + " > 0 required but it was " + j);
    }
}
