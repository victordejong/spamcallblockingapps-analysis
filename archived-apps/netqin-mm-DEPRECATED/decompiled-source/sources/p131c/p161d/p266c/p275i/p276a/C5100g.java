package p131c.p161d.p266c.p275i.p276a;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import p131c.p161d.p266c.p267a.AbstractC4920g;
import p131c.p161d.p266c.p267a.C4933n;
import p131c.p161d.p266c.p275i.p276a.AbstractC5105k;
/* renamed from: c.d.c.i.a.g */
/* loaded from: classes2-dex2jar.jar:c/d/c/i/a/g.class */
public final class C5100g extends AbstractC5104j {
    /* renamed from: a */
    public static <I, O> AbstractFutureC5108l<O> m24516a(AbstractFutureC5108l<I> lVar, AbstractC4920g<? super I, ? extends O> gVar, Executor executor) {
        return AbstractRunnableC5086a.m24526a(lVar, gVar, executor);
    }

    /* renamed from: a */
    public static <V> AbstractFutureC5108l<V> m24515a(V v) {
        return v == null ? AbstractC5105k.C5107b.f17695c : new AbstractC5105k.C5107b(v);
    }

    /* renamed from: a */
    public static <V> AbstractFutureC5108l<V> m24514a(Throwable th) {
        C4933n.m24795a(th);
        return new AbstractC5105k.C5106a(th);
    }

    /* renamed from: a */
    public static <V> V m24513a(Future<V> future) throws ExecutionException {
        C4933n.m24772b(future.isDone(), "Future was expected to be done: %s", future);
        return (V) C5119t.m24495a(future);
    }
}
