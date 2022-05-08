package p033i.p064c.p066b0.p067a.p068a;

import java.util.Objects;
import java.util.concurrent.Callable;
import p033i.p064c.p066b0.p070b.AbstractC0455d0;
import p033i.p064c.p066b0.p072d.AbstractC0493o;
/* renamed from: i.c.b0.a.a.a */
/* loaded from: classes2-dex2jar.jar:i/c/b0/a/a/a.class */
public final class C0444a {

    /* renamed from: a */
    private static volatile AbstractC0493o<Callable<AbstractC0455d0>, AbstractC0455d0> f1048a;

    /* renamed from: b */
    private static volatile AbstractC0493o<AbstractC0455d0, AbstractC0455d0> f1049b;

    /* renamed from: a */
    static <T, R> R m102a(AbstractC0493o<T, R> oVar, T t) {
        return oVar.apply(t);
    }

    /* renamed from: b */
    static AbstractC0455d0 m101b(AbstractC0493o<Callable<AbstractC0455d0>, AbstractC0455d0> oVar, Callable<AbstractC0455d0> callable) {
        AbstractC0455d0 d0Var = (AbstractC0455d0) m102a(oVar, callable);
        Objects.requireNonNull(d0Var, "Scheduler Callable returned null");
        return d0Var;
    }

    /* renamed from: c */
    static AbstractC0455d0 m100c(Callable<AbstractC0455d0> callable) {
        AbstractC0455d0 call = callable.call();
        if (call != null) {
            return call;
        }
        throw new NullPointerException("Scheduler Callable returned null");
    }

    /* renamed from: d */
    public static AbstractC0455d0 m99d(Callable<AbstractC0455d0> callable) {
        Objects.requireNonNull(callable, "scheduler == null");
        AbstractC0493o<Callable<AbstractC0455d0>, AbstractC0455d0> oVar = f1048a;
        return oVar == null ? m100c(callable) : m101b(oVar, callable);
    }

    /* renamed from: e */
    public static AbstractC0455d0 m98e(AbstractC0455d0 d0Var) {
        Objects.requireNonNull(d0Var, "scheduler == null");
        AbstractC0493o<AbstractC0455d0, AbstractC0455d0> oVar = f1049b;
        return oVar == null ? d0Var : (AbstractC0455d0) m102a(oVar, d0Var);
    }
}
