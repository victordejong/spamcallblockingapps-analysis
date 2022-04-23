package p037i.p065c.p067b0.p074e.p075b;

import p037i.p065c.p067b0.p073d.AbstractC0502d;
/* renamed from: i.c.b0.e.b.b */
/* loaded from: classes2-dex2jar.jar:i/c/b0/e/b/b.class */
public final class C0519b {

    /* renamed from: a */
    static final AbstractC0502d<Object, Object> f1200a = new a();

    /* renamed from: a */
    public static <T> AbstractC0502d<T, T> m22a() {
        return (AbstractC0502d<T, T>) f1200a;
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
