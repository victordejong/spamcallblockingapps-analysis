package p037i.p065c.p067b0.p074e.p079f.p081b;

import i.c.b0.b.l;
import i.c.b0.e.j.c;
import i.c.b0.e.j.d;
import java.util.Objects;
import o.a.a;
import o.a.b;
import p037i.p065c.p067b0.p073d.AbstractC0513o;
import p037i.p065c.p067b0.p073d.AbstractC0515q;
/* renamed from: i.c.b0.e.f.b.q */
/* loaded from: classes2-dex2jar.jar:i/c/b0/e/f/b/q.class */
public final class C0526q {
    /* renamed from: a */
    public static <T, U> l<U> m8a(T t, AbstractC0513o<? super T, ? extends a<? extends U>> oVar) {
        return i.c.b0.h.a.m(new a(t, oVar));
    }

    /* renamed from: b */
    public static <T, R> boolean m7b(a<T> aVar, b<? super R> bVar, AbstractC0513o<? super T, ? extends a<? extends R>> oVar) {
        if (!(aVar instanceof AbstractC0515q)) {
            return false;
        }
        try {
            Object obj = (Object) ((AbstractC0515q) aVar).get();
            if (obj == 0) {
                c.complete(bVar);
                return true;
            }
            try {
                Object apply = oVar.apply(obj);
                Objects.requireNonNull(apply, "The mapper returned a null Publisher");
                AbstractC0515q qVar = (a) apply;
                if (qVar instanceof AbstractC0515q) {
                    try {
                        Object obj2 = qVar.get();
                        if (obj2 == null) {
                            c.complete(bVar);
                            return true;
                        }
                        bVar.onSubscribe(new d(bVar, obj2));
                        return true;
                    } catch (Throwable th) {
                        io.reactivex.rxjava3.exceptions.a.b(th);
                        c.error(th, bVar);
                        return true;
                    }
                } else {
                    qVar.a(bVar);
                    return true;
                }
            } catch (Throwable th2) {
                io.reactivex.rxjava3.exceptions.a.b(th2);
                c.error(th2, bVar);
                return true;
            }
        } catch (Throwable th3) {
            io.reactivex.rxjava3.exceptions.a.b(th3);
            c.error(th3, bVar);
            return true;
        }
    }
}
