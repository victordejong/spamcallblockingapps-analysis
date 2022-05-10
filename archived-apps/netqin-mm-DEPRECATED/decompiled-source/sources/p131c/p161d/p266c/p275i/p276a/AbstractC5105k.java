package p131c.p161d.p266c.p275i.p276a;

import com.google.common.util.concurrent.AbstractFuture;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;
import p131c.p161d.p266c.p267a.C4933n;
/* renamed from: c.d.c.i.a.k */
/* loaded from: classes2-dex2jar.jar:c/d/c/i/a/k.class */
public abstract class AbstractC5105k<V> implements AbstractFutureC5108l<V> {

    /* renamed from: a */
    public static final Logger f17694a = Logger.getLogger(AbstractC5105k.class.getName());

    /* renamed from: c.d.c.i.a.k$a */
    /* loaded from: classes2-dex2jar.jar:c/d/c/i/a/k$a.class */
    public static final class C5106a<V> extends AbstractFuture.AbstractC7754i<V> {
        public C5106a(Throwable th) {
            mo276a(th);
        }
    }

    /* renamed from: c.d.c.i.a.k$b */
    /* loaded from: classes2-dex2jar.jar:c/d/c/i/a/k$b.class */
    public static class C5107b<V> extends AbstractC5105k<V> {

        /* renamed from: c */
        public static final C5107b<Object> f17695c = new C5107b<>(null);

        /* renamed from: b */
        public final V f17696b;

        public C5107b(V v) {
            this.f17696b = v;
        }

        @Override // p131c.p161d.p266c.p275i.p276a.AbstractC5105k, java.util.concurrent.Future
        public V get() {
            return this.f17696b;
        }

        public String toString() {
            return super.toString() + "[status=SUCCESS, result=[" + this.f17696b + "]]";
        }
    }

    @Override // p131c.p161d.p266c.p275i.p276a.AbstractFutureC5108l
    /* renamed from: a */
    public void mo7696a(Runnable runnable, Executor executor) {
        C4933n.m24794a(runnable, "Runnable was null.");
        C4933n.m24794a(executor, "Executor was null.");
        try {
            executor.execute(runnable);
        } catch (RuntimeException e) {
            Logger logger = f17694a;
            Level level = Level.SEVERE;
            logger.log(level, "RuntimeException while executing runnable " + runnable + " with executor " + executor, (Throwable) e);
        }
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        return false;
    }

    @Override // java.util.concurrent.Future
    public abstract V get() throws ExecutionException;

    @Override // java.util.concurrent.Future
    public V get(long j, TimeUnit timeUnit) throws ExecutionException {
        C4933n.m24795a(timeUnit);
        return get();
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return false;
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return true;
    }
}
