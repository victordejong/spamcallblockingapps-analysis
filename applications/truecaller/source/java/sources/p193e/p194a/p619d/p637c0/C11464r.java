package p193e.p194a.p619d.p637c0;

import q3.a.b3.c;
import q3.a.b3.g;
import q3.a.x2.a1;
import q3.a.x2.i1;
import q3.a.x2.k1;
import s1.s;
import s1.w.d;
/* renamed from: e.a.d.c0.r */
/* loaded from: classes15-dex2jar.jar:e/a/d/c0/r.class */
public class C11464r<T> implements i1<T> {

    /* renamed from: a */
    public final C11464r<T>.C11465a f33654a = new C11465a();

    /* renamed from: b */
    public final c f33655b = g.a(false, 1);

    /* renamed from: c */
    public final a1<T> f33656c;

    /* renamed from: e.a.d.c0.r$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/r$a.class */
    public class C11465a implements AbstractC11392d0<T> {
        public C11465a() {
            C11464r.this = r4;
        }

        @Override // p193e.p194a.p619d.p637c0.AbstractC11392d0
        /* renamed from: a */
        public void mo24639a(T t) {
            C11464r.this.f33656c.setValue(t);
        }
    }

    public C11464r(T t) {
        this.f33656c = k1.a(t);
    }

    /* renamed from: c */
    public Object m24641c(q3.a.x2.g<? super T> gVar, d<? super s> dVar) {
        return this.f33656c.c(gVar, dVar);
    }

    public T getValue() {
        return (T) this.f33656c.getValue();
    }

    /* renamed from: h */
    public C11464r<T>.C11465a mo24640h() {
        return this.f33654a;
    }
}
