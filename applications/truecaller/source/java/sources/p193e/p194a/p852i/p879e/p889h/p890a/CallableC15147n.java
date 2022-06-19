package p193e.p194a.p852i.p879e.p889h.p890a;

import java.util.concurrent.Callable;
import p193e.p194a.p852i.p879e.p889h.p891b.C15151d;
/* renamed from: e.a.i.e.h.a.n */
/* loaded from: classes3-dex2jar.jar:e/a/i/e/h/a/n.class */
public class CallableC15147n implements Callable<Long> {

    /* renamed from: a */
    public final /* synthetic */ C15151d f43147a;

    /* renamed from: b */
    public final /* synthetic */ m f43148b;

    public CallableC15147n(m mVar, C15151d c15151d) {
        this.f43148b = mVar;
        this.f43147a = c15151d;
    }

    /* JADX WARN: Finally extract failed */
    @Override // java.util.concurrent.Callable
    public Long call() throws Exception {
        this.f43148b.a.beginTransaction();
        try {
            long insertAndReturnId = this.f43148b.b.insertAndReturnId(this.f43147a);
            this.f43148b.a.setTransactionSuccessful();
            this.f43148b.a.endTransaction();
            return Long.valueOf(insertAndReturnId);
        } catch (Throwable th) {
            this.f43148b.a.endTransaction();
            throw th;
        }
    }
}
