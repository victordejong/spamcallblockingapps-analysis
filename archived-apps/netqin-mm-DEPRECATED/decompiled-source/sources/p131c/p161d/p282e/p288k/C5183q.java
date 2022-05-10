package p131c.p161d.p282e.p288k;

import p131c.p161d.p282e.p334r.AbstractC5887a;
/* renamed from: c.d.e.k.q */
/* loaded from: classes2-dex2jar.jar:c/d/e/k/q.class */
public class C5183q<T> implements AbstractC5887a<T> {

    /* renamed from: c */
    public static final Object f17837c = new Object();

    /* renamed from: a */
    public volatile Object f17838a = f17837c;

    /* renamed from: b */
    public volatile AbstractC5887a<T> f17839b;

    public C5183q(AbstractC5887a<T> aVar) {
        this.f17839b = aVar;
    }

    @Override // p131c.p161d.p282e.p334r.AbstractC5887a
    public T get() {
        Object obj = this.f17838a;
        T t = (T) obj;
        if (obj == f17837c) {
            synchronized (this) {
                Object obj2 = this.f17838a;
                t = obj2;
                if (obj2 == f17837c) {
                    t = this.f17839b.get();
                    this.f17838a = t;
                    this.f17839b = null;
                }
            }
        }
        return t;
    }
}
