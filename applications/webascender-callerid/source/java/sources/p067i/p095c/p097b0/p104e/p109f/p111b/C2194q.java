package p067i.p095c.p097b0.p104e.p109f.p111b;

import i.c.b0.b.l;
import i.c.b0.e.j.c;
import i.c.b0.e.j.d;
import java.util.Objects;
import o.a.a;
import o.a.b;
import p067i.p095c.p097b0.p103d.AbstractC2181o;
import p067i.p095c.p097b0.p103d.AbstractC2183q;
/* renamed from: i.c.b0.e.f.b.q */
/* loaded from: classes2-dex2jar.jar:i/c/b0/e/f/b/q.class */
public final class C2194q {
    /* renamed from: a */
    public static <T, U> l<U> m8a(T t, AbstractC2181o<? super T, ? extends a<? extends U>> abstractC2181o) {
        return i.c.b0.h.a.m(new a(t, abstractC2181o));
    }

    /* renamed from: b */
    public static <T, R> boolean m7b(a<T> aVar, b<? super R> bVar, AbstractC2181o<? super T, ? extends a<? extends R>> abstractC2181o) {
        if (aVar instanceof AbstractC2183q) {
            try {
                Object obj = (Object) ((AbstractC2183q) aVar).get();
                if (obj == 0) {
                    c.complete(bVar);
                    return true;
                }
                try {
                    AbstractC2183q apply = abstractC2181o.apply(obj);
                    Objects.requireNonNull(apply, "The mapper returned a null Publisher");
                    AbstractC2183q abstractC2183q = (a) apply;
                    if (!(abstractC2183q instanceof AbstractC2183q)) {
                        abstractC2183q.a(bVar);
                        return true;
                    }
                    try {
                        Object obj2 = abstractC2183q.get();
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
        return false;
    }
}
