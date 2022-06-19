package p193e.p194a.p852i.p879e.p889h.p890a;

import java.util.concurrent.Callable;
import p1727n3.p1781e0.p1782a.AbstractC26154f;
/* renamed from: e.a.i.e.h.a.f$b */
/* loaded from: classes3-dex2jar.jar:e/a/i/e/h/a/f$b.class */
public class f$b implements Callable<Integer> {

    /* renamed from: a */
    public final /* synthetic */ f f43124a;

    public f$b(f fVar) {
        this.f43124a = fVar;
    }

    /* JADX WARN: Finally extract failed */
    @Override // java.util.concurrent.Callable
    public Integer call() throws Exception {
        AbstractC26154f acquire = this.f43124a.d.acquire();
        this.f43124a.a.beginTransaction();
        try {
            int m2673A = acquire.m2673A();
            this.f43124a.a.setTransactionSuccessful();
            this.f43124a.a.endTransaction();
            this.f43124a.d.release(acquire);
            return Integer.valueOf(m2673A);
        } catch (Throwable th) {
            this.f43124a.a.endTransaction();
            this.f43124a.d.release(acquire);
            throw th;
        }
    }
}
