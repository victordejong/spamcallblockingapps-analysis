package p193e.p194a.p852i.p879e.p889h.p890a;

import java.util.concurrent.Callable;
import p193e.p194a.p852i.p879e.p889h.p891b.C15148a;
/* renamed from: e.a.i.e.h.a.d */
/* loaded from: classes3-dex2jar.jar:e/a/i/e/h/a/d.class */
public class CallableC15144d implements Callable<Long> {

    /* renamed from: a */
    public final /* synthetic */ C15148a f43122a;

    /* renamed from: b */
    public final /* synthetic */ c f43123b;

    public CallableC15144d(c cVar, C15148a c15148a) {
        this.f43123b = cVar;
        this.f43122a = c15148a;
    }

    /* JADX WARN: Finally extract failed */
    @Override // java.util.concurrent.Callable
    public Long call() throws Exception {
        this.f43123b.a.beginTransaction();
        try {
            long insertAndReturnId = this.f43123b.b.insertAndReturnId(this.f43122a);
            this.f43123b.a.setTransactionSuccessful();
            this.f43123b.a.endTransaction();
            return Long.valueOf(insertAndReturnId);
        } catch (Throwable th) {
            this.f43123b.a.endTransaction();
            throw th;
        }
    }
}
