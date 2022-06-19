package p067i.p095c.p097b0.p104e.p109f.p114e;

import i.c.b0.b.v;
import i.c.b0.e.a.d;
import i.c.b0.h.a;
import java.util.Objects;
import p067i.p095c.p097b0.p101b.AbstractC2137a0;
import p067i.p095c.p097b0.p101b.AbstractC2141c0;
import p067i.p095c.p097b0.p103d.AbstractC2181o;
import p067i.p095c.p097b0.p103d.AbstractC2183q;
/* renamed from: i.c.b0.e.f.e.b3 */
/* loaded from: classes2-dex2jar.jar:i/c/b0/e/f/e/b3.class */
public final class C2197b3 {
    /* renamed from: a */
    public static <T, U> v<U> m3a(T t, AbstractC2181o<? super T, ? extends AbstractC2137a0<? extends U>> abstractC2181o) {
        return a.o(new b(t, abstractC2181o));
    }

    /* renamed from: b */
    public static <T, R> boolean m2b(AbstractC2137a0<T> abstractC2137a0, AbstractC2141c0<? super R> abstractC2141c0, AbstractC2181o<? super T, ? extends AbstractC2137a0<? extends R>> abstractC2181o) {
        if (abstractC2137a0 instanceof AbstractC2183q) {
            try {
                Object obj = (Object) ((AbstractC2183q) abstractC2137a0).get();
                if (obj == 0) {
                    d.complete(abstractC2141c0);
                    return true;
                }
                try {
                    AbstractC2137a0<? extends R> apply = abstractC2181o.apply(obj);
                    Objects.requireNonNull(apply, "The mapper returned a null ObservableSource");
                    AbstractC2137a0<? extends R> abstractC2137a02 = apply;
                    if (!(abstractC2137a02 instanceof AbstractC2183q)) {
                        abstractC2137a02.subscribe(abstractC2141c0);
                        return true;
                    }
                    try {
                        Object obj2 = ((AbstractC2183q) abstractC2137a02).get();
                        if (obj2 == null) {
                            d.complete(abstractC2141c0);
                            return true;
                        }
                        a aVar = new a(abstractC2141c0, obj2);
                        abstractC2141c0.onSubscribe(aVar);
                        aVar.run();
                        return true;
                    } catch (Throwable th) {
                        io.reactivex.rxjava3.exceptions.a.b(th);
                        d.error(th, abstractC2141c0);
                        return true;
                    }
                } catch (Throwable th2) {
                    io.reactivex.rxjava3.exceptions.a.b(th2);
                    d.error(th2, abstractC2141c0);
                    return true;
                }
            } catch (Throwable th3) {
                io.reactivex.rxjava3.exceptions.a.b(th3);
                d.error(th3, abstractC2141c0);
                return true;
            }
        }
        return false;
    }
}
