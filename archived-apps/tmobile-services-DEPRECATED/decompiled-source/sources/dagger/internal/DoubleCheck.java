package dagger.internal;

import dagger.Lazy;
import javax.inject.Provider;
/* loaded from: classes-dex2jar.jar:dagger/internal/DoubleCheck.class */
public final class DoubleCheck<T> implements Provider<T>, Lazy<T> {

    /* renamed from: c */
    private static final Object f14942c = new Object();

    /* renamed from: a */
    private volatile Provider<T> f14943a;

    /* renamed from: b */
    private volatile Object f14944b = f14942c;

    private DoubleCheck(Provider<T> provider) {
        this.f14943a = provider;
    }

    /* renamed from: a */
    public static <P extends Provider<T>, T> Lazy<T> m4640a(P p) {
        if (p instanceof Lazy) {
            return (Lazy) p;
        }
        Preconditions.m4633b(p);
        return new DoubleCheck(p);
    }

    /* renamed from: b */
    public static <P extends Provider<T>, T> Provider<T> m4639b(P p) {
        Preconditions.m4633b(p);
        return p instanceof DoubleCheck ? p : new DoubleCheck(p);
    }

    /* renamed from: c */
    public static Object m4638c(Object obj, Object obj2) {
        if (!(obj != f14942c && !(obj instanceof MemoizedSentinel)) || obj == obj2) {
            return obj2;
        }
        throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj + " & " + obj2 + ". This is likely due to a circular dependency.");
    }

    @Override // javax.inject.Provider
    public T get() {
        Object obj = this.f14944b;
        T t = (T) obj;
        if (obj == f14942c) {
            synchronized (this) {
                Object obj2 = this.f14944b;
                t = obj2;
                if (obj2 == f14942c) {
                    t = this.f14943a.get();
                    m4638c(this.f14944b, t);
                    this.f14944b = t;
                    this.f14943a = null;
                }
            }
        }
        return t;
    }
}
