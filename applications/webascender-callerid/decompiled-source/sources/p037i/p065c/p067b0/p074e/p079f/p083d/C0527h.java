package p037i.p065c.p067b0.p074e.p079f.p083d;

import i.c.b0.e.a.d;
import i.c.b0.e.f.c.q;
import i.c.b0.e.f.f.v;
import io.reactivex.rxjava3.exceptions.a;
import java.util.Objects;
import p037i.p065c.p067b0.p071b.AbstractC0473c0;
import p037i.p065c.p067b0.p071b.AbstractC0478g;
import p037i.p065c.p067b0.p071b.AbstractC0482i;
import p037i.p065c.p067b0.p071b.AbstractC0483i0;
import p037i.p065c.p067b0.p071b.AbstractC0491t;
import p037i.p065c.p067b0.p073d.AbstractC0513o;
import p037i.p065c.p067b0.p073d.AbstractC0515q;
/* renamed from: i.c.b0.e.f.d.h */
/* loaded from: classes2-dex2jar.jar:i/c/b0/e/f/d/h.class */
final class C0527h {
    /* renamed from: a */
    static <T> boolean m6a(Object obj, AbstractC0513o<? super T, ? extends AbstractC0482i> oVar, AbstractC0478g gVar) {
        if (!(obj instanceof AbstractC0515q)) {
            return false;
        }
        AbstractC0515q qVar = (AbstractC0515q) obj;
        AbstractC0482i iVar = null;
        try {
            Object obj2 = (Object) qVar.get();
            if (obj2 != 0) {
                Object apply = oVar.apply(obj2);
                Objects.requireNonNull(apply, "The mapper returned a null CompletableSource");
                iVar = (AbstractC0482i) apply;
            }
            if (iVar == null) {
                d.complete(gVar);
                return true;
            }
            iVar.m86a(gVar);
            return true;
        } catch (Throwable th) {
            a.b(th);
            d.error(th, gVar);
            return true;
        }
    }

    /* renamed from: b */
    static <T, R> boolean m5b(Object obj, AbstractC0513o<? super T, ? extends AbstractC0491t<? extends R>> oVar, AbstractC0473c0<? super R> c0Var) {
        if (!(obj instanceof AbstractC0515q)) {
            return false;
        }
        AbstractC0515q qVar = (AbstractC0515q) obj;
        AbstractC0491t tVar = null;
        try {
            Object obj2 = (Object) qVar.get();
            if (obj2 != 0) {
                Object apply = oVar.apply(obj2);
                Objects.requireNonNull(apply, "The mapper returned a null MaybeSource");
                tVar = (AbstractC0491t) apply;
            }
            if (tVar == null) {
                d.complete(c0Var);
                return true;
            }
            tVar.m80a(q.a(c0Var));
            return true;
        } catch (Throwable th) {
            a.b(th);
            d.error(th, c0Var);
            return true;
        }
    }

    /* renamed from: c */
    static <T, R> boolean m4c(Object obj, AbstractC0513o<? super T, ? extends AbstractC0483i0<? extends R>> oVar, AbstractC0473c0<? super R> c0Var) {
        if (!(obj instanceof AbstractC0515q)) {
            return false;
        }
        AbstractC0515q qVar = (AbstractC0515q) obj;
        AbstractC0483i0 i0Var = null;
        try {
            Object obj2 = (Object) qVar.get();
            if (obj2 != 0) {
                Object apply = oVar.apply(obj2);
                Objects.requireNonNull(apply, "The mapper returned a null SingleSource");
                i0Var = (AbstractC0483i0) apply;
            }
            if (i0Var == null) {
                d.complete(c0Var);
                return true;
            }
            i0Var.m85a(v.a(c0Var));
            return true;
        } catch (Throwable th) {
            a.b(th);
            d.error(th, c0Var);
            return true;
        }
    }
}
