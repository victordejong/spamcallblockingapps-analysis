package p033i.p064c.p065a0;

import i.c.b;
import i.c.f;
import i.c.j;
import i.c.l;
import i.c.o;
import i.c.q;
import i.c.r;
import i.c.s;
import i.c.t;
import i.c.x.a;
import i.c.y.c;
import i.c.y.d;
import io.reactivex.exceptions.CompositeException;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.exceptions.OnErrorNotImplementedException;
import io.reactivex.exceptions.UndeliverableException;
import java.util.concurrent.Callable;
/* renamed from: i.c.a0.a */
/* loaded from: classes2-dex2jar.jar:i/c/a0/a.class */
public final class C0443a {

    /* renamed from: a */
    static volatile c<? super Throwable> f1029a;

    /* renamed from: b */
    static volatile d<? super Runnable, ? extends Runnable> f1030b;

    /* renamed from: c */
    static volatile d<? super Callable<r>, ? extends r> f1031c;

    /* renamed from: d */
    static volatile d<? super Callable<r>, ? extends r> f1032d;

    /* renamed from: e */
    static volatile d<? super Callable<r>, ? extends r> f1033e;

    /* renamed from: f */
    static volatile d<? super Callable<r>, ? extends r> f1034f;

    /* renamed from: g */
    static volatile d<? super r, ? extends r> f1035g;

    /* renamed from: h */
    static volatile d<? super r, ? extends r> f1036h;

    /* renamed from: i */
    static volatile d<? super f, ? extends f> f1037i;

    /* renamed from: j */
    static volatile d<? super a, ? extends a> f1038j;

    /* renamed from: k */
    static volatile d<? super o, ? extends o> f1039k;

    /* renamed from: l */
    static volatile d<? super j, ? extends j> f1040l;

    /* renamed from: m */
    static volatile d<? super s, ? extends s> f1041m;

    /* renamed from: n */
    static volatile d<? super b, ? extends b> f1042n;

    /* renamed from: o */
    static volatile i.c.y.b<? super f, ? super o.a.b, ? extends o.a.b> f1043o;

    /* renamed from: p */
    static volatile i.c.y.b<? super j, ? super l, ? extends l> f1044p;

    /* renamed from: q */
    static volatile i.c.y.b<? super o, ? super q, ? extends q> f1045q;

    /* renamed from: r */
    static volatile i.c.y.b<? super s, ? super t, ? extends t> f1046r;

    /* renamed from: s */
    static volatile i.c.y.b<? super b, ? super i.c.c, ? extends i.c.c> f1047s;

    /* renamed from: a */
    static <T, U, R> R m127a(i.c.y.b<T, U, R> bVar, T t, U u) {
        return (R) bVar.apply(t, u);
    }

    /* renamed from: b */
    static <T, R> R m126b(d<T, R> dVar, T t) {
        return (R) dVar.apply(t);
    }

    /* renamed from: c */
    static r m125c(d<? super Callable<r>, ? extends r> dVar, Callable<r> callable) {
        Object b = m126b(dVar, callable);
        i.c.z.b.b.d(b, "Scheduler Callable result can't be null");
        return (r) b;
    }

    /* renamed from: d */
    static r m124d(Callable<r> callable) {
        r call = callable.call();
        i.c.z.b.b.d(call, "Scheduler Callable result can't be null");
        return call;
    }

    /* renamed from: e */
    public static r m123e(Callable<r> callable) {
        i.c.z.b.b.d(callable, "Scheduler Callable can't be null");
        d<? super Callable<r>, ? extends r> dVar = f1031c;
        return dVar == null ? m124d(callable) : m125c(dVar, callable);
    }

    /* renamed from: f */
    public static r m122f(Callable<r> callable) {
        i.c.z.b.b.d(callable, "Scheduler Callable can't be null");
        d<? super Callable<r>, ? extends r> dVar = f1033e;
        return dVar == null ? m124d(callable) : m125c(dVar, callable);
    }

    /* renamed from: g */
    public static r m121g(Callable<r> callable) {
        i.c.z.b.b.d(callable, "Scheduler Callable can't be null");
        d<? super Callable<r>, ? extends r> dVar = f1034f;
        return dVar == null ? m124d(callable) : m125c(dVar, callable);
    }

    /* renamed from: h */
    public static r m120h(Callable<r> callable) {
        i.c.z.b.b.d(callable, "Scheduler Callable can't be null");
        d<? super Callable<r>, ? extends r> dVar = f1032d;
        return dVar == null ? m124d(callable) : m125c(dVar, callable);
    }

    /* renamed from: i */
    static boolean m119i(Throwable th) {
        return (th instanceof OnErrorNotImplementedException) || (th instanceof MissingBackpressureException) || (th instanceof IllegalStateException) || (th instanceof NullPointerException) || (th instanceof IllegalArgumentException) || (th instanceof CompositeException);
    }

    /* renamed from: j */
    public static b m118j(b bVar) {
        d<? super b, ? extends b> dVar = f1042n;
        b bVar2 = bVar;
        if (dVar != null) {
            bVar2 = (b) m126b(dVar, bVar);
        }
        return bVar2;
    }

    /* renamed from: k */
    public static <T> f<T> m117k(f<T> fVar) {
        d<? super f, ? extends f> dVar = f1037i;
        f<T> fVar2 = fVar;
        if (dVar != null) {
            fVar2 = (f) m126b(dVar, fVar);
        }
        return fVar2;
    }

    /* renamed from: l */
    public static <T> j<T> m116l(j<T> jVar) {
        d<? super j, ? extends j> dVar = f1040l;
        j<T> jVar2 = jVar;
        if (dVar != null) {
            jVar2 = (j) m126b(dVar, jVar);
        }
        return jVar2;
    }

    /* renamed from: m */
    public static <T> o<T> m115m(o<T> oVar) {
        d<? super o, ? extends o> dVar = f1039k;
        o<T> oVar2 = oVar;
        if (dVar != null) {
            oVar2 = (o) m126b(dVar, oVar);
        }
        return oVar2;
    }

    /* renamed from: n */
    public static <T> s<T> m114n(s<T> sVar) {
        d<? super s, ? extends s> dVar = f1041m;
        s<T> sVar2 = sVar;
        if (dVar != null) {
            sVar2 = (s) m126b(dVar, sVar);
        }
        return sVar2;
    }

    /* renamed from: o */
    public static <T> a<T> m113o(a<T> aVar) {
        d<? super a, ? extends a> dVar = f1038j;
        a<T> aVar2 = aVar;
        if (dVar != null) {
            aVar2 = (a) m126b(dVar, aVar);
        }
        return aVar2;
    }

    /* renamed from: p */
    public static r m112p(r rVar) {
        d<? super r, ? extends r> dVar = f1035g;
        return dVar == null ? rVar : (r) m126b(dVar, rVar);
    }

    /* renamed from: q */
    public static void m111q(Throwable th) {
        Throwable th2;
        c<? super Throwable> cVar = f1029a;
        if (th == null) {
            th2 = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        } else {
            th2 = th;
            if (!m119i(th)) {
                th2 = new UndeliverableException(th);
            }
        }
        if (cVar != null) {
            cVar.accept(th2);
            return;
        }
        th2.printStackTrace();
        m103y(th2);
    }

    /* renamed from: r */
    public static r m110r(r rVar) {
        d<? super r, ? extends r> dVar = f1036h;
        return dVar == null ? rVar : (r) m126b(dVar, rVar);
    }

    /* renamed from: s */
    public static Runnable m109s(Runnable runnable) {
        i.c.z.b.b.d(runnable, "run is null");
        d<? super Runnable, ? extends Runnable> dVar = f1030b;
        return dVar == null ? runnable : (Runnable) m126b(dVar, runnable);
    }

    /* renamed from: t */
    public static i.c.c m108t(b bVar, i.c.c cVar) {
        i.c.y.b<? super b, ? super i.c.c, ? extends i.c.c> bVar2 = f1047s;
        return bVar2 != null ? (i.c.c) m127a(bVar2, bVar, cVar) : cVar;
    }

    /* renamed from: u */
    public static <T> l<? super T> m107u(j<T> jVar, l<? super T> lVar) {
        i.c.y.b<? super j, ? super l, ? extends l> bVar = f1044p;
        return bVar != null ? (l) m127a(bVar, jVar, lVar) : lVar;
    }

    /* renamed from: v */
    public static <T> q<? super T> m106v(o<T> oVar, q<? super T> qVar) {
        i.c.y.b<? super o, ? super q, ? extends q> bVar = f1045q;
        return bVar != null ? (q) m127a(bVar, oVar, qVar) : qVar;
    }

    /* renamed from: w */
    public static <T> t<? super T> m105w(s<T> sVar, t<? super T> tVar) {
        i.c.y.b<? super s, ? super t, ? extends t> bVar = f1046r;
        return bVar != null ? (t) m127a(bVar, sVar, tVar) : tVar;
    }

    /* renamed from: x */
    public static <T> o.a.b<? super T> m104x(f<T> fVar, o.a.b<? super T> bVar) {
        i.c.y.b<? super f, ? super o.a.b, ? extends o.a.b> bVar2 = f1043o;
        return bVar2 != null ? (o.a.b) m127a(bVar2, fVar, bVar) : bVar;
    }

    /* renamed from: y */
    static void m103y(Throwable th) {
        Thread currentThread = Thread.currentThread();
        currentThread.getUncaughtExceptionHandler().uncaughtException(currentThread, th);
    }
}
