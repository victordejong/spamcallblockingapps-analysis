package p081h.p451q.p454c;

import p655o.AbstractC15235b;
import p655o.AbstractC15238d;
import p655o.C15299r;
/* renamed from: h.q.c.d */
/* loaded from: classes2-dex2jar.jar:h/q/c/d.class */
public class C10854d<E, F> implements AbstractC15238d<E> {

    /* renamed from: c */
    public static final AbstractC10856b f24817c = new C10855a();

    /* renamed from: a */
    public final AbstractC10857e<F> f24818a;

    /* renamed from: b */
    public final AbstractC10856b<E, F> f24819b;

    /* renamed from: h.q.c.d$a */
    /* loaded from: classes2-dex2jar.jar:h/q/c/d$a.class */
    public static final class C10855a<E> implements AbstractC10856b<E, E> {
        @Override // p081h.p451q.p454c.C10854d.AbstractC10856b
        public E extract(E e) {
            return e;
        }
    }

    /* renamed from: h.q.c.d$b */
    /* loaded from: classes2-dex2jar.jar:h/q/c/d$b.class */
    public interface AbstractC10856b<E, F> {
        F extract(E e);
    }

    public C10854d(AbstractC10857e<F> eVar) {
        this(eVar, f24817c);
    }

    public C10854d(AbstractC10857e<F> eVar, AbstractC10856b<E, F> bVar) {
        this.f24818a = eVar;
        this.f24819b = bVar;
    }

    @Override // p655o.AbstractC15238d
    public void onFailure(AbstractC15235b<E> bVar, Throwable th) {
        AbstractC10857e<F> eVar = this.f24818a;
        if (eVar != null) {
            eVar.onError(C10853c.m10409a(th));
        }
    }

    @Override // p655o.AbstractC15238d
    public void onResponse(AbstractC15235b<E> bVar, C15299r<E> rVar) {
        if (this.f24818a == null) {
            return;
        }
        if (rVar.m90d()) {
            this.f24818a.onSuccess(this.f24819b.extract(rVar.m95a()));
        } else {
            this.f24818a.onError(C10853c.m10408a(rVar));
        }
    }
}
