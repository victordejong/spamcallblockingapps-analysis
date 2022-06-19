package p193e.p194a.p852i.p879e.p889h.p890a;

import java.util.concurrent.Callable;
import p1727n3.p1781e0.p1782a.AbstractC26154f;
/* renamed from: e.a.i.e.h.a.c$a */
/* loaded from: classes3-dex2jar.jar:e/a/i/e/h/a/c$a.class */
public class c$a implements Callable<Integer> {

    /* renamed from: a */
    public final /* synthetic */ c f43119a;

    public c$a(c cVar) {
        this.f43119a = cVar;
    }

    /* JADX WARN: Finally extract failed */
    @Override // java.util.concurrent.Callable
    public Integer call() throws Exception {
        AbstractC26154f acquire = this.f43119a.d.acquire();
        this.f43119a.a.beginTransaction();
        try {
            int m2673A = acquire.m2673A();
            this.f43119a.a.setTransactionSuccessful();
            this.f43119a.a.endTransaction();
            this.f43119a.d.release(acquire);
            return Integer.valueOf(m2673A);
        } catch (Throwable th) {
            this.f43119a.a.endTransaction();
            this.f43119a.d.release(acquire);
            throw th;
        }
    }
}
