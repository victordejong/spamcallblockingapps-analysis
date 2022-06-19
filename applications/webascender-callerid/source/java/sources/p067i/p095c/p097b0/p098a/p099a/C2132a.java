package p067i.p095c.p097b0.p098a.p099a;

import io.reactivex.rxjava3.exceptions.a;
import java.util.Objects;
import java.util.concurrent.Callable;
import p067i.p095c.p097b0.p101b.AbstractC2143d0;
import p067i.p095c.p097b0.p103d.AbstractC2181o;
/* renamed from: i.c.b0.a.a.a */
/* loaded from: classes2-dex2jar.jar:i/c/b0/a/a/a.class */
public final class C2132a {

    /* renamed from: a */
    private static volatile AbstractC2181o<Callable<AbstractC2143d0>, AbstractC2143d0> f5852a;

    /* renamed from: b */
    private static volatile AbstractC2181o<AbstractC2143d0, AbstractC2143d0> f5853b;

    /* renamed from: a */
    static <T, R> R m102a(AbstractC2181o<T, R> abstractC2181o, T t) {
        try {
            return abstractC2181o.apply(t);
        } catch (Throwable th) {
            a.a(th);
            throw null;
        }
    }

    /* renamed from: b */
    static AbstractC2143d0 m101b(AbstractC2181o<Callable<AbstractC2143d0>, AbstractC2143d0> abstractC2181o, Callable<AbstractC2143d0> callable) {
        AbstractC2143d0 abstractC2143d0 = (AbstractC2143d0) m102a(abstractC2181o, callable);
        Objects.requireNonNull(abstractC2143d0, "Scheduler Callable returned null");
        return abstractC2143d0;
    }

    /* renamed from: c */
    static AbstractC2143d0 m100c(Callable<AbstractC2143d0> callable) {
        try {
            AbstractC2143d0 call = callable.call();
            if (call != null) {
                return call;
            }
            throw new NullPointerException("Scheduler Callable returned null");
        } catch (Throwable th) {
            a.a(th);
            throw null;
        }
    }

    /* renamed from: d */
    public static AbstractC2143d0 m99d(Callable<AbstractC2143d0> callable) {
        Objects.requireNonNull(callable, "scheduler == null");
        AbstractC2181o<Callable<AbstractC2143d0>, AbstractC2143d0> abstractC2181o = f5852a;
        return abstractC2181o == null ? m100c(callable) : m101b(abstractC2181o, callable);
    }

    /* renamed from: e */
    public static AbstractC2143d0 m98e(AbstractC2143d0 abstractC2143d0) {
        Objects.requireNonNull(abstractC2143d0, "scheduler == null");
        AbstractC2181o<AbstractC2143d0, AbstractC2143d0> abstractC2181o = f5853b;
        return abstractC2181o == null ? abstractC2143d0 : (AbstractC2143d0) m102a(abstractC2181o, abstractC2143d0);
    }
}
