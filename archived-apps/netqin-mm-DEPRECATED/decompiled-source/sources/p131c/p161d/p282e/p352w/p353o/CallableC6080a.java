package p131c.p161d.p282e.p352w.p353o;

import java.util.concurrent.Callable;
/* renamed from: c.d.e.w.o.a */
/* loaded from: classes2-dex2jar.jar:c/d/e/w/o/a.class */
public final /* synthetic */ class CallableC6080a implements Callable {

    /* renamed from: a */
    public final C6084e f19539a;

    /* renamed from: b */
    public final C6087f f19540b;

    public CallableC6080a(C6084e eVar, C6087f fVar) {
        this.f19539a = eVar;
        this.f19540b = fVar;
    }

    /* renamed from: a */
    public static Callable m22109a(C6084e eVar, C6087f fVar) {
        return new CallableC6080a(eVar, fVar);
    }

    @Override // java.util.concurrent.Callable
    public Object call() {
        Void a;
        a = this.f19539a.f19549b.m22021a(this.f19540b);
        return a;
    }
}
