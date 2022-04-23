package p037i.p065c.p067b0.p068a.p069a;

import io.reactivex.rxjava3.exceptions.a;
import java.util.Objects;
import java.util.concurrent.Callable;
import p037i.p065c.p067b0.p071b.AbstractC0475d0;
import p037i.p065c.p067b0.p073d.AbstractC0513o;
/* renamed from: i.c.b0.a.a.a */
/* loaded from: classes2-dex2jar.jar:i/c/b0/a/a/a.class */
public final class C0464a {

    /* renamed from: a */
    private static volatile AbstractC0513o<Callable<AbstractC0475d0>, AbstractC0475d0> f1173a;

    /* renamed from: b */
    private static volatile AbstractC0513o<AbstractC0475d0, AbstractC0475d0> f1174b;

    /* renamed from: a */
    static <T, R> R m102a(AbstractC0513o<T, R> oVar, T t) {
        try {
            return oVar.apply(t);
        } catch (Throwable th) {
            a.a(th);
            throw null;
        }
    }

    /* renamed from: b */
    static AbstractC0475d0 m101b(AbstractC0513o<Callable<AbstractC0475d0>, AbstractC0475d0> oVar, Callable<AbstractC0475d0> callable) {
        AbstractC0475d0 d0Var = (AbstractC0475d0) m102a(oVar, callable);
        Objects.requireNonNull(d0Var, "Scheduler Callable returned null");
        return d0Var;
    }

    /* renamed from: c */
    static AbstractC0475d0 m100c(Callable<AbstractC0475d0> callable) {
        try {
            AbstractC0475d0 call = callable.call();
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
    public static AbstractC0475d0 m99d(Callable<AbstractC0475d0> callable) {
        Objects.requireNonNull(callable, "scheduler == null");
        AbstractC0513o<Callable<AbstractC0475d0>, AbstractC0475d0> oVar = f1173a;
        return oVar == null ? m100c(callable) : m101b(oVar, callable);
    }

    /* renamed from: e */
    public static AbstractC0475d0 m98e(AbstractC0475d0 d0Var) {
        Objects.requireNonNull(d0Var, "scheduler == null");
        AbstractC0513o<AbstractC0475d0, AbstractC0475d0> oVar = f1174b;
        return oVar == null ? d0Var : (AbstractC0475d0) m102a(oVar, d0Var);
    }
}
