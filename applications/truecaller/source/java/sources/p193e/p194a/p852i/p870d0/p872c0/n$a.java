package p193e.p194a.p852i.p870d0.p872c0;

import java.util.concurrent.Callable;
import p1727n3.p1781e0.p1782a.AbstractC26154f;
/* renamed from: e.a.i.d0.c0.n$a */
/* loaded from: classes3-dex2jar.jar:e/a/i/d0/c0/n$a.class */
public class n$a implements Callable<Integer> {

    /* renamed from: a */
    public final /* synthetic */ n f43059a;

    public n$a(n nVar) {
        this.f43059a = nVar;
    }

    /* JADX WARN: Finally extract failed */
    @Override // java.util.concurrent.Callable
    public Integer call() throws Exception {
        AbstractC26154f acquire = this.f43059a.d.acquire();
        this.f43059a.a.beginTransaction();
        try {
            int m2673A = acquire.m2673A();
            this.f43059a.a.setTransactionSuccessful();
            this.f43059a.a.endTransaction();
            this.f43059a.d.release(acquire);
            return Integer.valueOf(m2673A);
        } catch (Throwable th) {
            this.f43059a.a.endTransaction();
            this.f43059a.d.release(acquire);
            throw th;
        }
    }
}
