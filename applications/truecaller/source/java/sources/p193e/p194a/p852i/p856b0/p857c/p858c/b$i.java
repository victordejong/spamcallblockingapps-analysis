package p193e.p194a.p852i.p856b0.p857c.p858c;

import java.util.concurrent.Callable;
import p1727n3.p1781e0.p1782a.AbstractC26154f;
/* renamed from: e.a.i.b0.c.c.b$i */
/* loaded from: classes3-dex2jar.jar:e/a/i/b0/c/c/b$i.class */
public class b$i implements Callable<Integer> {

    /* renamed from: a */
    public final /* synthetic */ long f42784a;

    /* renamed from: b */
    public final /* synthetic */ b f42785b;

    public b$i(b bVar, long j) {
        this.f42785b = bVar;
        this.f42784a = j;
    }

    /* JADX WARN: Finally extract failed */
    @Override // java.util.concurrent.Callable
    public Integer call() throws Exception {
        AbstractC26154f acquire = this.f42785b.c.acquire();
        acquire.mo2650l0(1, this.f42784a);
        this.f42785b.a.beginTransaction();
        try {
            int m2673A = acquire.m2673A();
            this.f42785b.a.setTransactionSuccessful();
            this.f42785b.a.endTransaction();
            this.f42785b.c.release(acquire);
            return Integer.valueOf(m2673A);
        } catch (Throwable th) {
            this.f42785b.a.endTransaction();
            this.f42785b.c.release(acquire);
            throw th;
        }
    }
}
