package p193e.p194a.p852i.p879e.p889h.p890a;

import java.util.concurrent.Callable;
import p1727n3.p1781e0.p1782a.AbstractC26154f;
/* renamed from: e.a.i.e.h.a.j$b */
/* loaded from: classes3-dex2jar.jar:e/a/i/e/h/a/j$b.class */
public class j$b implements Callable<Integer> {

    /* renamed from: a */
    public final /* synthetic */ j f43133a;

    public j$b(j jVar) {
        this.f43133a = jVar;
    }

    /* JADX WARN: Finally extract failed */
    @Override // java.util.concurrent.Callable
    public Integer call() throws Exception {
        AbstractC26154f acquire = this.f43133a.c.acquire();
        this.f43133a.a.beginTransaction();
        try {
            int m2673A = acquire.m2673A();
            this.f43133a.a.setTransactionSuccessful();
            this.f43133a.a.endTransaction();
            this.f43133a.c.release(acquire);
            return Integer.valueOf(m2673A);
        } catch (Throwable th) {
            this.f43133a.a.endTransaction();
            this.f43133a.c.release(acquire);
            throw th;
        }
    }
}
