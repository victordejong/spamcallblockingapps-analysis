package p037i.p065c.p067b0.p074e.p079f.p084e;

import i.c.b0.b.v;
import i.c.b0.e.a.d;
import i.c.b0.h.a;
import java.util.Objects;
import p037i.p065c.p067b0.p071b.AbstractC0469a0;
import p037i.p065c.p067b0.p071b.AbstractC0473c0;
import p037i.p065c.p067b0.p073d.AbstractC0513o;
import p037i.p065c.p067b0.p073d.AbstractC0515q;
/* renamed from: i.c.b0.e.f.e.b3 */
/* loaded from: classes2-dex2jar.jar:i/c/b0/e/f/e/b3.class */
public final class C0529b3 {
    /* renamed from: a */
    public static <T, U> v<U> m3a(T t, AbstractC0513o<? super T, ? extends AbstractC0469a0<? extends U>> oVar) {
        return a.o(new b(t, oVar));
    }

    /* renamed from: b */
    public static <T, R> boolean m2b(AbstractC0469a0<T> a0Var, AbstractC0473c0<? super R> c0Var, AbstractC0513o<? super T, ? extends AbstractC0469a0<? extends R>> oVar) {
        if (!(a0Var instanceof AbstractC0515q)) {
            return false;
        }
        try {
            Object obj = (Object) ((AbstractC0515q) a0Var).get();
            if (obj == 0) {
                d.complete(c0Var);
                return true;
            }
            try {
                Object apply = oVar.apply(obj);
                Objects.requireNonNull(apply, "The mapper returned a null ObservableSource");
                AbstractC0469a0 a0Var2 = (AbstractC0469a0) apply;
                if (a0Var2 instanceof AbstractC0515q) {
                    try {
                        Object obj2 = ((AbstractC0515q) a0Var2).get();
                        if (obj2 == null) {
                            d.complete(c0Var);
                            return true;
                        }
                        a aVar = new a(c0Var, obj2);
                        c0Var.onSubscribe(aVar);
                        aVar.run();
                        return true;
                    } catch (Throwable th) {
                        io.reactivex.rxjava3.exceptions.a.b(th);
                        d.error(th, c0Var);
                        return true;
                    }
                } else {
                    a0Var2.subscribe(c0Var);
                    return true;
                }
            } catch (Throwable th2) {
                io.reactivex.rxjava3.exceptions.a.b(th2);
                d.error(th2, c0Var);
                return true;
            }
        } catch (Throwable th3) {
            io.reactivex.rxjava3.exceptions.a.b(th3);
            d.error(th3, c0Var);
            return true;
        }
    }
}
