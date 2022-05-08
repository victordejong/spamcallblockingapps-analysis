package p033i.p064c.p066b0.p073e.p078f.p080b;

import i.c.b0.b.l;
import i.c.b0.e.j.c;
import i.c.b0.e.j.d;
import java.util.Objects;
import o.a.a;
import o.a.b;
import p033i.p064c.p066b0.p072d.AbstractC0493o;
import p033i.p064c.p066b0.p072d.AbstractC0495q;
/* renamed from: i.c.b0.e.f.b.q */
/* loaded from: classes2-dex2jar.jar:i/c/b0/e/f/b/q.class */
public final class C0506q {
    /* renamed from: a */
    public static <T, U> l<U> m8a(T t, AbstractC0493o<? super T, ? extends a<? extends U>> oVar) {
        return i.c.b0.h.a.m(new a(t, oVar));
    }

    /* renamed from: b */
    public static <T, R> boolean m7b(a<T> aVar, b<? super R> bVar, AbstractC0493o<? super T, ? extends a<? extends R>> oVar) {
        if (!(aVar instanceof AbstractC0495q)) {
            return false;
        }
        Object obj = (Object) ((AbstractC0495q) aVar).get();
        if (obj == 0) {
            c.complete(bVar);
            return true;
        }
        Object apply = oVar.apply(obj);
        Objects.requireNonNull(apply, "The mapper returned a null Publisher");
        AbstractC0495q qVar = (a) apply;
        if (qVar instanceof AbstractC0495q) {
            Object obj2 = qVar.get();
            if (obj2 == null) {
                c.complete(bVar);
                return true;
            }
            bVar.onSubscribe(new d(bVar, obj2));
            return true;
        }
        qVar.a(bVar);
        return true;
    }
}
