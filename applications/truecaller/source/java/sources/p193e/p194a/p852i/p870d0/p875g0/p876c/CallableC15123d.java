package p193e.p194a.p852i.p870d0.p875g0.p876c;

import java.util.concurrent.Callable;
import p1727n3.p1781e0.p1782a.AbstractC26154f;
/* renamed from: e.a.i.d0.g0.c.d */
/* loaded from: classes3-dex2jar.jar:e/a/i/d0/g0/c/d.class */
public class CallableC15123d implements Callable<Integer> {

    /* renamed from: a */
    public final /* synthetic */ c f43090a;

    public CallableC15123d(c cVar) {
        this.f43090a = cVar;
    }

    /* JADX WARN: Finally extract failed */
    @Override // java.util.concurrent.Callable
    public Integer call() throws Exception {
        AbstractC26154f acquire = this.f43090a.d.acquire();
        this.f43090a.a.beginTransaction();
        try {
            int m2673A = acquire.m2673A();
            this.f43090a.a.setTransactionSuccessful();
            this.f43090a.a.endTransaction();
            this.f43090a.d.release(acquire);
            return Integer.valueOf(m2673A);
        } catch (Throwable th) {
            this.f43090a.a.endTransaction();
            this.f43090a.d.release(acquire);
            throw th;
        }
    }
}
