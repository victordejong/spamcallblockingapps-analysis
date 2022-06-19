package p067i.p095c.p097b0.p104e.p105b;

import p067i.p095c.p097b0.p103d.AbstractC2170d;
/* renamed from: i.c.b0.e.b.b */
/* loaded from: classes2-dex2jar.jar:i/c/b0/e/b/b.class */
public final class C2187b {

    /* renamed from: a */
    static final AbstractC2170d<Object, Object> f5879a = new a();

    /* renamed from: a */
    public static <T> AbstractC2170d<T, T> m22a() {
        return (AbstractC2170d<T, T>) f5879a;
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
