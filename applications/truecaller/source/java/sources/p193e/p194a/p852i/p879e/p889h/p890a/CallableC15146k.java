package p193e.p194a.p852i.p879e.p889h.p890a;

import java.util.concurrent.Callable;
import p193e.p194a.p852i.p879e.p889h.p891b.C15150c;
/* renamed from: e.a.i.e.h.a.k */
/* loaded from: classes3-dex2jar.jar:e/a/i/e/h/a/k.class */
public class CallableC15146k implements Callable<Long> {

    /* renamed from: a */
    public final /* synthetic */ C15150c f43141a;

    /* renamed from: b */
    public final /* synthetic */ j f43142b;

    public CallableC15146k(j jVar, C15150c c15150c) {
        this.f43142b = jVar;
        this.f43141a = c15150c;
    }

    /* JADX WARN: Finally extract failed */
    @Override // java.util.concurrent.Callable
    public Long call() throws Exception {
        this.f43142b.a.beginTransaction();
        try {
            long insertAndReturnId = this.f43142b.b.insertAndReturnId(this.f43141a);
            this.f43142b.a.setTransactionSuccessful();
            this.f43142b.a.endTransaction();
            return Long.valueOf(insertAndReturnId);
        } catch (Throwable th) {
            this.f43142b.a.endTransaction();
            throw th;
        }
    }
}
