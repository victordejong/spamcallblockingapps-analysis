package p530d.p541c.p543b0.p548e.p553e;

import p530d.p541c.AbstractC9850t;
import p530d.p541c.AbstractC9851u;
import p530d.p541c.p568x.C9862c;
/* renamed from: d.c.b0.e.e.d */
/* loaded from: classes2-dex2jar.jar:d/c/b0/e/e/d.class */
public final class C9771d<T> extends AbstractC9850t<T> {

    /* renamed from: a */
    public final T f36913a;

    public C9771d(T t) {
        this.f36913a = t;
    }

    @Override // p530d.p541c.AbstractC9850t
    /* renamed from: b */
    public void mo196b(AbstractC9851u<? super T> uVar) {
        uVar.onSubscribe(C9862c.m1826a());
        uVar.onSuccess((T) this.f36913a);
    }
}
