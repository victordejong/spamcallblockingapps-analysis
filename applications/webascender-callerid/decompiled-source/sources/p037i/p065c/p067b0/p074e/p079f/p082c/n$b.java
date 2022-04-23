package p037i.p065c.p067b0.p074e.p079f.p082c;

import p037i.p065c.p067b0.p071b.AbstractC0489r;
import p037i.p065c.p067b0.p071b.AbstractC0491t;
/* renamed from: i.c.b0.e.f.c.n$b */
/* loaded from: classes2-dex2jar.jar:i/c/b0/e/f/c/n$b.class */
final class n$b<T> implements Runnable {

    /* renamed from: f */
    final AbstractC0489r<? super T> f1207f;

    /* renamed from: g */
    final AbstractC0491t<T> f1208g;

    n$b(AbstractC0489r<? super T> rVar, AbstractC0491t<T> tVar) {
        this.f1207f = rVar;
        this.f1208g = tVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f1208g.m80a(this.f1207f);
    }
}
