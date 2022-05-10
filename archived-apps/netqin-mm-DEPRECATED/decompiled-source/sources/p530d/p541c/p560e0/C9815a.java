package p530d.p541c.p560e0;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.exceptions.OnErrorNotImplementedException;
import io.reactivex.exceptions.UndeliverableException;
import io.reactivex.internal.util.ExceptionHelper;
import java.util.concurrent.Callable;
import p530d.p541c.AbstractC9637a;
import p530d.p541c.AbstractC9647b;
import p530d.p541c.AbstractC9814e;
import p530d.p541c.AbstractC9833i;
import p530d.p541c.AbstractC9836k;
import p530d.p541c.AbstractC9840o;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.AbstractC9845s;
import p530d.p541c.AbstractC9850t;
import p530d.p541c.AbstractC9851u;
import p530d.p541c.p542a0.AbstractC9640c;
import p530d.p541c.p542a0.AbstractC9642e;
import p530d.p541c.p542a0.AbstractC9644g;
import p530d.p541c.p542a0.AbstractC9645h;
import p530d.p541c.p543b0.p545b.C9650a;
import p530d.p541c.p570z.AbstractC9864a;
import p611j.p612a.AbstractC10433c;
/* renamed from: d.c.e0.a */
/* loaded from: classes2-dex2jar.jar:d/c/e0/a.class */
public final class C9815a {

    /* renamed from: a */
    public static volatile AbstractC9644g<? super Throwable> f37015a;

    /* renamed from: b */
    public static volatile AbstractC9645h<? super Runnable, ? extends Runnable> f37016b;

    /* renamed from: c */
    public static volatile AbstractC9645h<? super Callable<AbstractC9845s>, ? extends AbstractC9845s> f37017c;

    /* renamed from: d */
    public static volatile AbstractC9645h<? super Callable<AbstractC9845s>, ? extends AbstractC9845s> f37018d;

    /* renamed from: e */
    public static volatile AbstractC9645h<? super Callable<AbstractC9845s>, ? extends AbstractC9845s> f37019e;

    /* renamed from: f */
    public static volatile AbstractC9645h<? super Callable<AbstractC9845s>, ? extends AbstractC9845s> f37020f;

    /* renamed from: g */
    public static volatile AbstractC9645h<? super AbstractC9845s, ? extends AbstractC9845s> f37021g;

    /* renamed from: h */
    public static volatile AbstractC9645h<? super AbstractC9845s, ? extends AbstractC9845s> f37022h;

    /* renamed from: i */
    public static volatile AbstractC9645h<? super AbstractC9814e, ? extends AbstractC9814e> f37023i;

    /* renamed from: j */
    public static volatile AbstractC9645h<? super AbstractC9864a, ? extends AbstractC9864a> f37024j;

    /* renamed from: k */
    public static volatile AbstractC9645h<? super AbstractC9840o, ? extends AbstractC9840o> f37025k;

    /* renamed from: l */
    public static volatile AbstractC9645h<? super AbstractC9833i, ? extends AbstractC9833i> f37026l;

    /* renamed from: m */
    public static volatile AbstractC9645h<? super AbstractC9850t, ? extends AbstractC9850t> f37027m;

    /* renamed from: n */
    public static volatile AbstractC9645h<? super AbstractC9637a, ? extends AbstractC9637a> f37028n;

    /* renamed from: o */
    public static volatile AbstractC9640c<? super AbstractC9814e, ? super AbstractC10433c, ? extends AbstractC10433c> f37029o;

    /* renamed from: p */
    public static volatile AbstractC9640c<? super AbstractC9833i, ? super AbstractC9836k, ? extends AbstractC9836k> f37030p;

    /* renamed from: q */
    public static volatile AbstractC9640c<? super AbstractC9840o, ? super AbstractC9844r, ? extends AbstractC9844r> f37031q;

    /* renamed from: r */
    public static volatile AbstractC9640c<? super AbstractC9850t, ? super AbstractC9851u, ? extends AbstractC9851u> f37032r;

    /* renamed from: s */
    public static volatile AbstractC9640c<? super AbstractC9637a, ? super AbstractC9647b, ? extends AbstractC9647b> f37033s;

    /* renamed from: t */
    public static volatile AbstractC9642e f37034t;

    /* renamed from: u */
    public static volatile boolean f37035u;

    /* renamed from: a */
    public static AbstractC9637a m1940a(AbstractC9637a aVar) {
        AbstractC9645h<? super AbstractC9637a, ? extends AbstractC9637a> hVar = f37028n;
        AbstractC9637a aVar2 = aVar;
        if (hVar != null) {
            aVar2 = (AbstractC9637a) m1942a((AbstractC9645h<AbstractC9637a, Object>) hVar, aVar);
        }
        return aVar2;
    }

    /* renamed from: a */
    public static AbstractC9647b m1939a(AbstractC9637a aVar, AbstractC9647b bVar) {
        AbstractC9640c<? super AbstractC9637a, ? super AbstractC9647b, ? extends AbstractC9647b> cVar = f37033s;
        return cVar != null ? (AbstractC9647b) m1943a(cVar, aVar, bVar) : bVar;
    }

    /* renamed from: a */
    public static <T> AbstractC9814e<T> m1938a(AbstractC9814e<T> eVar) {
        AbstractC9645h<? super AbstractC9814e, ? extends AbstractC9814e> hVar = f37023i;
        AbstractC9814e<T> eVar2 = eVar;
        if (hVar != null) {
            eVar2 = (AbstractC9814e) m1942a((AbstractC9645h<AbstractC9814e<T>, Object>) hVar, eVar);
        }
        return eVar2;
    }

    /* renamed from: a */
    public static <T> AbstractC9833i<T> m1936a(AbstractC9833i<T> iVar) {
        AbstractC9645h<? super AbstractC9833i, ? extends AbstractC9833i> hVar = f37026l;
        AbstractC9833i<T> iVar2 = iVar;
        if (hVar != null) {
            iVar2 = (AbstractC9833i) m1942a((AbstractC9645h<AbstractC9833i<T>, Object>) hVar, iVar);
        }
        return iVar2;
    }

    /* renamed from: a */
    public static <T> AbstractC9836k<? super T> m1935a(AbstractC9833i<T> iVar, AbstractC9836k<? super T> kVar) {
        AbstractC9640c<? super AbstractC9833i, ? super AbstractC9836k, ? extends AbstractC9836k> cVar = f37030p;
        return cVar != null ? (AbstractC9836k) m1943a(cVar, iVar, kVar) : kVar;
    }

    /* renamed from: a */
    public static <T> AbstractC9840o<T> m1934a(AbstractC9840o<T> oVar) {
        AbstractC9645h<? super AbstractC9840o, ? extends AbstractC9840o> hVar = f37025k;
        AbstractC9840o<T> oVar2 = oVar;
        if (hVar != null) {
            oVar2 = (AbstractC9840o) m1942a((AbstractC9645h<AbstractC9840o<T>, Object>) hVar, oVar);
        }
        return oVar2;
    }

    /* renamed from: a */
    public static <T> AbstractC9844r<? super T> m1933a(AbstractC9840o<T> oVar, AbstractC9844r<? super T> rVar) {
        AbstractC9640c<? super AbstractC9840o, ? super AbstractC9844r, ? extends AbstractC9844r> cVar = f37031q;
        return cVar != null ? (AbstractC9844r) m1943a(cVar, oVar, rVar) : rVar;
    }

    /* renamed from: a */
    public static AbstractC9845s m1941a(AbstractC9645h<? super Callable<AbstractC9845s>, ? extends AbstractC9845s> hVar, Callable<AbstractC9845s> callable) {
        Object a = m1942a((AbstractC9645h<Callable<AbstractC9845s>, Object>) hVar, callable);
        C9650a.m2095a(a, "Scheduler Callable result can't be null");
        return (AbstractC9845s) a;
    }

    /* renamed from: a */
    public static AbstractC9845s m1932a(AbstractC9845s sVar) {
        AbstractC9645h<? super AbstractC9845s, ? extends AbstractC9845s> hVar = f37021g;
        return hVar == null ? sVar : (AbstractC9845s) m1942a((AbstractC9645h<AbstractC9845s, Object>) hVar, sVar);
    }

    /* renamed from: a */
    public static AbstractC9845s m1926a(Callable<AbstractC9845s> callable) {
        try {
            AbstractC9845s call = callable.call();
            C9650a.m2095a(call, "Scheduler Callable result can't be null");
            return call;
        } catch (Throwable th) {
            throw ExceptionHelper.m222b(th);
        }
    }

    /* renamed from: a */
    public static <T> AbstractC9850t<T> m1931a(AbstractC9850t<T> tVar) {
        AbstractC9645h<? super AbstractC9850t, ? extends AbstractC9850t> hVar = f37027m;
        AbstractC9850t<T> tVar2 = tVar;
        if (hVar != null) {
            tVar2 = (AbstractC9850t) m1942a((AbstractC9645h<AbstractC9850t<T>, Object>) hVar, tVar);
        }
        return tVar2;
    }

    /* renamed from: a */
    public static <T> AbstractC9851u<? super T> m1930a(AbstractC9850t<T> tVar, AbstractC9851u<? super T> uVar) {
        AbstractC9640c<? super AbstractC9850t, ? super AbstractC9851u, ? extends AbstractC9851u> cVar = f37032r;
        return cVar != null ? (AbstractC9851u) m1943a(cVar, tVar, uVar) : uVar;
    }

    /* renamed from: a */
    public static <T> AbstractC9864a<T> m1929a(AbstractC9864a<T> aVar) {
        AbstractC9645h<? super AbstractC9864a, ? extends AbstractC9864a> hVar = f37024j;
        AbstractC9864a<T> aVar2 = aVar;
        if (hVar != null) {
            aVar2 = (AbstractC9864a) m1942a((AbstractC9645h<AbstractC9864a<T>, Object>) hVar, aVar);
        }
        return aVar2;
    }

    /* renamed from: a */
    public static <T> AbstractC10433c<? super T> m1937a(AbstractC9814e<T> eVar, AbstractC10433c<? super T> cVar) {
        AbstractC9640c<? super AbstractC9814e, ? super AbstractC10433c, ? extends AbstractC10433c> cVar2 = f37029o;
        return cVar2 != null ? (AbstractC10433c) m1943a(cVar2, eVar, cVar) : cVar;
    }

    /* renamed from: a */
    public static <T, U, R> R m1943a(AbstractC9640c<T, U, R> cVar, T t, U u) {
        try {
            return cVar.apply(t, u);
        } catch (Throwable th) {
            throw ExceptionHelper.m222b(th);
        }
    }

    /* renamed from: a */
    public static <T, R> R m1942a(AbstractC9645h<T, R> hVar, T t) {
        try {
            return hVar.apply(t);
        } catch (Throwable th) {
            throw ExceptionHelper.m222b(th);
        }
    }

    /* renamed from: a */
    public static Runnable m1928a(Runnable runnable) {
        C9650a.m2095a(runnable, "run is null");
        AbstractC9645h<? super Runnable, ? extends Runnable> hVar = f37016b;
        return hVar == null ? runnable : (Runnable) m1942a((AbstractC9645h<Runnable, Object>) hVar, runnable);
    }

    /* renamed from: a */
    public static boolean m1944a() {
        return f37035u;
    }

    /* renamed from: a */
    public static boolean m1927a(Throwable th) {
        return (th instanceof OnErrorNotImplementedException) || (th instanceof MissingBackpressureException) || (th instanceof IllegalStateException) || (th instanceof NullPointerException) || (th instanceof IllegalArgumentException) || (th instanceof CompositeException);
    }

    /* renamed from: b */
    public static AbstractC9845s m1924b(AbstractC9845s sVar) {
        AbstractC9645h<? super AbstractC9845s, ? extends AbstractC9845s> hVar = f37022h;
        return hVar == null ? sVar : (AbstractC9845s) m1942a((AbstractC9645h<AbstractC9845s, Object>) hVar, sVar);
    }

    /* renamed from: b */
    public static AbstractC9845s m1922b(Callable<AbstractC9845s> callable) {
        C9650a.m2095a(callable, "Scheduler Callable can't be null");
        AbstractC9645h<? super Callable<AbstractC9845s>, ? extends AbstractC9845s> hVar = f37017c;
        return hVar == null ? m1926a(callable) : m1941a(hVar, callable);
    }

    /* renamed from: b */
    public static void m1923b(Throwable th) {
        Throwable th2;
        AbstractC9644g<? super Throwable> gVar = f37015a;
        if (th == null) {
            th2 = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        } else {
            th2 = th;
            if (!m1927a(th)) {
                th2 = new UndeliverableException(th);
            }
        }
        if (gVar != null) {
            try {
                gVar.accept(th2);
                return;
            } catch (Throwable th3) {
                th3.printStackTrace();
                m1921c(th3);
            }
        }
        th2.printStackTrace();
        m1921c(th2);
    }

    /* renamed from: b */
    public static boolean m1925b() {
        AbstractC9642e eVar = f37034t;
        if (eVar == null) {
            return false;
        }
        try {
            return eVar.getAsBoolean();
        } catch (Throwable th) {
            throw ExceptionHelper.m222b(th);
        }
    }

    /* renamed from: c */
    public static AbstractC9845s m1920c(Callable<AbstractC9845s> callable) {
        C9650a.m2095a(callable, "Scheduler Callable can't be null");
        AbstractC9645h<? super Callable<AbstractC9845s>, ? extends AbstractC9845s> hVar = f37019e;
        return hVar == null ? m1926a(callable) : m1941a(hVar, callable);
    }

    /* renamed from: c */
    public static void m1921c(Throwable th) {
        Thread currentThread = Thread.currentThread();
        currentThread.getUncaughtExceptionHandler().uncaughtException(currentThread, th);
    }

    /* renamed from: d */
    public static AbstractC9845s m1919d(Callable<AbstractC9845s> callable) {
        C9650a.m2095a(callable, "Scheduler Callable can't be null");
        AbstractC9645h<? super Callable<AbstractC9845s>, ? extends AbstractC9845s> hVar = f37020f;
        return hVar == null ? m1926a(callable) : m1941a(hVar, callable);
    }

    /* renamed from: e */
    public static AbstractC9845s m1918e(Callable<AbstractC9845s> callable) {
        C9650a.m2095a(callable, "Scheduler Callable can't be null");
        AbstractC9645h<? super Callable<AbstractC9845s>, ? extends AbstractC9845s> hVar = f37018d;
        return hVar == null ? m1926a(callable) : m1941a(hVar, callable);
    }
}
