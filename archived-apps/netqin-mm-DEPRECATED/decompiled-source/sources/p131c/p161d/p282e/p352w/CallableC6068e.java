package p131c.p161d.p282e.p352w;

import java.util.concurrent.Callable;
/* renamed from: c.d.e.w.e */
/* loaded from: classes2-dex2jar.jar:c/d/e/w/e.class */
public final /* synthetic */ class CallableC6068e implements Callable {

    /* renamed from: a */
    public final C6070g f19509a;

    /* renamed from: b */
    public final C6072i f19510b;

    public CallableC6068e(C6070g gVar, C6072i iVar) {
        this.f19509a = gVar;
        this.f19510b = iVar;
    }

    /* renamed from: a */
    public static Callable m22156a(C6070g gVar, C6072i iVar) {
        return new CallableC6068e(gVar, iVar);
    }

    @Override // java.util.concurrent.Callable
    public Object call() {
        return this.f19509a.f19520i.m22036a(this.f19510b);
    }
}
