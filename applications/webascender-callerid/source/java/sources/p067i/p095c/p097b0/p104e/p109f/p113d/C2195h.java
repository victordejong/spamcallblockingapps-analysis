package p067i.p095c.p097b0.p104e.p109f.p113d;

import i.c.b0.e.a.d;
import i.c.b0.e.f.c.q;
import i.c.b0.e.f.f.v;
import io.reactivex.rxjava3.exceptions.a;
import java.util.Objects;
import p067i.p095c.p097b0.p101b.AbstractC2141c0;
import p067i.p095c.p097b0.p101b.AbstractC2146g;
import p067i.p095c.p097b0.p101b.AbstractC2150i;
import p067i.p095c.p097b0.p101b.AbstractC2151i0;
import p067i.p095c.p097b0.p101b.AbstractC2159t;
import p067i.p095c.p097b0.p103d.AbstractC2181o;
import p067i.p095c.p097b0.p103d.AbstractC2183q;
/* renamed from: i.c.b0.e.f.d.h */
/* loaded from: classes2-dex2jar.jar:i/c/b0/e/f/d/h.class */
final class C2195h {
    /* renamed from: a */
    static <T> boolean m6a(Object obj, AbstractC2181o<? super T, ? extends AbstractC2150i> abstractC2181o, AbstractC2146g abstractC2146g) {
        if (obj instanceof AbstractC2183q) {
            AbstractC2183q abstractC2183q = (AbstractC2183q) obj;
            AbstractC2150i abstractC2150i = null;
            try {
                Object obj2 = (Object) abstractC2183q.get();
                if (obj2 != 0) {
                    AbstractC2150i apply = abstractC2181o.apply(obj2);
                    Objects.requireNonNull(apply, "The mapper returned a null CompletableSource");
                    abstractC2150i = apply;
                }
                if (abstractC2150i == null) {
                    d.complete(abstractC2146g);
                    return true;
                }
                abstractC2150i.m86a(abstractC2146g);
                return true;
            } catch (Throwable th) {
                a.b(th);
                d.error(th, abstractC2146g);
                return true;
            }
        }
        return false;
    }

    /* renamed from: b */
    static <T, R> boolean m5b(Object obj, AbstractC2181o<? super T, ? extends AbstractC2159t<? extends R>> abstractC2181o, AbstractC2141c0<? super R> abstractC2141c0) {
        if (obj instanceof AbstractC2183q) {
            AbstractC2183q abstractC2183q = (AbstractC2183q) obj;
            AbstractC2159t<? extends R> abstractC2159t = null;
            try {
                Object obj2 = (Object) abstractC2183q.get();
                if (obj2 != 0) {
                    AbstractC2159t<? extends R> apply = abstractC2181o.apply(obj2);
                    Objects.requireNonNull(apply, "The mapper returned a null MaybeSource");
                    abstractC2159t = apply;
                }
                if (abstractC2159t == null) {
                    d.complete(abstractC2141c0);
                    return true;
                }
                abstractC2159t.m80a(q.a(abstractC2141c0));
                return true;
            } catch (Throwable th) {
                a.b(th);
                d.error(th, abstractC2141c0);
                return true;
            }
        }
        return false;
    }

    /* renamed from: c */
    static <T, R> boolean m4c(Object obj, AbstractC2181o<? super T, ? extends AbstractC2151i0<? extends R>> abstractC2181o, AbstractC2141c0<? super R> abstractC2141c0) {
        if (obj instanceof AbstractC2183q) {
            AbstractC2183q abstractC2183q = (AbstractC2183q) obj;
            AbstractC2151i0<? extends R> abstractC2151i0 = null;
            try {
                Object obj2 = (Object) abstractC2183q.get();
                if (obj2 != 0) {
                    AbstractC2151i0<? extends R> apply = abstractC2181o.apply(obj2);
                    Objects.requireNonNull(apply, "The mapper returned a null SingleSource");
                    abstractC2151i0 = apply;
                }
                if (abstractC2151i0 == null) {
                    d.complete(abstractC2141c0);
                    return true;
                }
                abstractC2151i0.m85a(v.a(abstractC2141c0));
                return true;
            } catch (Throwable th) {
                a.b(th);
                d.error(th, abstractC2141c0);
                return true;
            }
        }
        return false;
    }
}
