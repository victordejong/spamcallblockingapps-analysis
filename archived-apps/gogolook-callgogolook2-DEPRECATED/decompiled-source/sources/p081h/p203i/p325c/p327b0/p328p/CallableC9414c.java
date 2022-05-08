package p081h.p203i.p325c.p327b0.p328p;

import java.util.concurrent.Callable;
/* renamed from: h.i.c.b0.p.c */
/* loaded from: classes2-dex2jar.jar:h/i/c/b0/p/c.class */
public final /* synthetic */ class CallableC9414c implements Callable {

    /* renamed from: a */
    public final C9432o f21474a;

    public CallableC9414c(C9432o oVar) {
        this.f21474a = oVar;
    }

    /* renamed from: a */
    public static Callable m15271a(C9432o oVar) {
        return new CallableC9414c(oVar);
    }

    @Override // java.util.concurrent.Callable
    public Object call() {
        return this.f21474a.m15186c();
    }
}
