package p193e.p194a.p852i.p856b0.p857c.p858c;

import java.util.concurrent.Callable;
import p1727n3.p1781e0.p1782a.AbstractC26154f;
/* renamed from: e.a.i.b0.c.c.b$a */
/* loaded from: classes3-dex2jar.jar:e/a/i/b0/c/c/b$a.class */
public class b$a implements Callable<Integer> {

    /* renamed from: a */
    public final /* synthetic */ b f42776a;

    public b$a(b bVar) {
        this.f42776a = bVar;
    }

    /* JADX WARN: Finally extract failed */
    @Override // java.util.concurrent.Callable
    public Integer call() throws Exception {
        AbstractC26154f acquire = this.f42776a.d.acquire();
        this.f42776a.a.beginTransaction();
        try {
            int m2673A = acquire.m2673A();
            this.f42776a.a.setTransactionSuccessful();
            this.f42776a.a.endTransaction();
            this.f42776a.d.release(acquire);
            return Integer.valueOf(m2673A);
        } catch (Throwable th) {
            this.f42776a.a.endTransaction();
            this.f42776a.d.release(acquire);
            throw th;
        }
    }
}
