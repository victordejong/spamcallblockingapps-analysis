package p573f.p593x;

import p573f.p574a0.AbstractC9881j;
import p573f.p590w.p592c.C10059q;
/* renamed from: f.x.b */
/* loaded from: classes2-dex2jar.jar:f/x/b.class */
public abstract class AbstractC10067b<T> implements AbstractC10068c<Object, T> {

    /* renamed from: a */
    public T f37195a;

    public AbstractC10067b(T t) {
        this.f37195a = t;
    }

    @Override // p573f.p593x.AbstractC10068c
    /* renamed from: a */
    public T mo1597a(Object obj, AbstractC9881j<?> jVar) {
        C10059q.m1637b(jVar, "property");
        return this.f37195a;
    }

    /* renamed from: a */
    public abstract void mo1599a(AbstractC9881j<?> jVar, T t, T t2);

    @Override // p573f.p593x.AbstractC10068c
    /* renamed from: a */
    public void mo1596a(Object obj, AbstractC9881j<?> jVar, T t) {
        C10059q.m1637b(jVar, "property");
        T t2 = this.f37195a;
        if (m1598b(jVar, t2, t)) {
            this.f37195a = t;
            mo1599a(jVar, t2, t);
        }
    }

    /* renamed from: b */
    public boolean m1598b(AbstractC9881j<?> jVar, T t, T t2) {
        C10059q.m1637b(jVar, "property");
        return true;
    }
}
