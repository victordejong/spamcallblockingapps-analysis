package p193e.p194a.p294b.p354l;

import p1727n3.p1868v.AbstractC27012l0;
import s1.s;
import s1.z.b.l;
/* renamed from: e.a.b.l.m */
/* loaded from: classes6-dex2jar.jar:e/a/b/l/m.class */
public final class C8037m<T> implements AbstractC27012l0<C8036l<? extends T>> {

    /* renamed from: a */
    public final l<T, s> f24765a;

    /* JADX WARN: Multi-variable type inference failed */
    public C8037m(l<? super T, s> lVar) {
        s1.z.c.l.e(lVar, "onEventUnhandledContent");
        this.f24765a = lVar;
    }

    @Override // p1727n3.p1868v.AbstractC27012l0
    public void onChanged(Object obj) {
        Object m28930a;
        C8036l c8036l = (C8036l) obj;
        if (c8036l == null || (m28930a = c8036l.m28930a()) == null) {
            return;
        }
        this.f24765a.d(m28930a);
    }
}
