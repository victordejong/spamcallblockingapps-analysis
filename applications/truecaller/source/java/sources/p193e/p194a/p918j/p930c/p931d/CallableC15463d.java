package p193e.p194a.p918j.p930c.p931d;

import java.util.concurrent.Callable;
import p1727n3.p1781e0.p1782a.AbstractC26154f;
import s1.s;
/* renamed from: e.a.j.c.d.d */
/* loaded from: classes14-dex2jar.jar:e/a/j/c/d/d.class */
public class CallableC15463d implements Callable<s> {

    /* renamed from: a */
    public final /* synthetic */ C15454c f43837a;

    public CallableC15463d(C15454c c15454c) {
        this.f43837a = c15454c;
    }

    @Override // java.util.concurrent.Callable
    public s call() throws Exception {
        AbstractC26154f acquire = this.f43837a.f43826d.acquire();
        this.f43837a.f43823a.beginTransaction();
        try {
            acquire.m2673A();
            this.f43837a.f43823a.setTransactionSuccessful();
            return s.a;
        } finally {
            this.f43837a.f43823a.endTransaction();
            this.f43837a.f43826d.release(acquire);
        }
    }
}
