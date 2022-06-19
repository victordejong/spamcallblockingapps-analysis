package p193e.p194a.p852i.p907v;

import java.util.concurrent.Callable;
import p1727n3.p1781e0.p1782a.AbstractC26154f;
/* renamed from: e.a.i.v.g$b */
/* loaded from: classes3-dex2jar.jar:e/a/i/v/g$b.class */
public class g$b implements Callable<Integer> {

    /* renamed from: a */
    public final /* synthetic */ String f43362a;

    /* renamed from: b */
    public final /* synthetic */ g f43363b;

    public g$b(g gVar, String str) {
        this.f43363b = gVar;
        this.f43362a = str;
    }

    /* JADX WARN: Finally extract failed */
    @Override // java.util.concurrent.Callable
    public Integer call() throws Exception {
        AbstractC26154f acquire = this.f43363b.e.acquire();
        String str = this.f43362a;
        if (str == null) {
            acquire.mo2648y0(1);
        } else {
            acquire.mo2651f0(1, str);
        }
        this.f43363b.a.beginTransaction();
        try {
            int m2673A = acquire.m2673A();
            this.f43363b.a.setTransactionSuccessful();
            this.f43363b.a.endTransaction();
            this.f43363b.e.release(acquire);
            return Integer.valueOf(m2673A);
        } catch (Throwable th) {
            this.f43363b.a.endTransaction();
            this.f43363b.e.release(acquire);
            throw th;
        }
    }
}
