package p193e.p194a.p852i.p907v;

import java.util.concurrent.Callable;
import p1727n3.p1781e0.p1782a.AbstractC26154f;
/* renamed from: e.a.i.v.g$a */
/* loaded from: classes3-dex2jar.jar:e/a/i/v/g$a.class */
public class g$a implements Callable<Integer> {

    /* renamed from: a */
    public final /* synthetic */ g f43361a;

    public g$a(g gVar) {
        this.f43361a = gVar;
    }

    /* JADX WARN: Finally extract failed */
    @Override // java.util.concurrent.Callable
    public Integer call() throws Exception {
        AbstractC26154f acquire = this.f43361a.d.acquire();
        this.f43361a.a.beginTransaction();
        try {
            int m2673A = acquire.m2673A();
            this.f43361a.a.setTransactionSuccessful();
            this.f43361a.a.endTransaction();
            this.f43361a.d.release(acquire);
            return Integer.valueOf(m2673A);
        } catch (Throwable th) {
            this.f43361a.a.endTransaction();
            this.f43361a.d.release(acquire);
            throw th;
        }
    }
}
