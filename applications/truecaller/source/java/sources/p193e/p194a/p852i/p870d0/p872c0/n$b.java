package p193e.p194a.p852i.p870d0.p872c0;

import java.util.concurrent.Callable;
import p1727n3.p1781e0.p1782a.AbstractC26154f;
/* renamed from: e.a.i.d0.c0.n$b */
/* loaded from: classes3-dex2jar.jar:e/a/i/d0/c0/n$b.class */
public class n$b implements Callable<Integer> {

    /* renamed from: a */
    public final /* synthetic */ String f43060a;

    /* renamed from: b */
    public final /* synthetic */ n f43061b;

    public n$b(n nVar, String str) {
        this.f43061b = nVar;
        this.f43060a = str;
    }

    /* JADX WARN: Finally extract failed */
    @Override // java.util.concurrent.Callable
    public Integer call() throws Exception {
        AbstractC26154f acquire = this.f43061b.e.acquire();
        String str = this.f43060a;
        if (str == null) {
            acquire.mo2648y0(1);
        } else {
            acquire.mo2651f0(1, str);
        }
        this.f43061b.a.beginTransaction();
        try {
            int m2673A = acquire.m2673A();
            this.f43061b.a.setTransactionSuccessful();
            this.f43061b.a.endTransaction();
            this.f43061b.e.release(acquire);
            return Integer.valueOf(m2673A);
        } catch (Throwable th) {
            this.f43061b.a.endTransaction();
            this.f43061b.e.release(acquire);
            throw th;
        }
    }
}
