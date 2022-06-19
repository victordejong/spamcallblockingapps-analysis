package p193e.p194a.p852i.p879e.p889h.p890a;

import java.util.concurrent.Callable;
import p193e.p194a.p852i.p879e.p889h.p891b.C15149b;
/* renamed from: e.a.i.e.h.a.g */
/* loaded from: classes3-dex2jar.jar:e/a/i/e/h/a/g.class */
public class CallableC15145g implements Callable<Long> {

    /* renamed from: a */
    public final /* synthetic */ C15149b f43131a;

    /* renamed from: b */
    public final /* synthetic */ f f43132b;

    public CallableC15145g(f fVar, C15149b c15149b) {
        this.f43132b = fVar;
        this.f43131a = c15149b;
    }

    /* JADX WARN: Finally extract failed */
    @Override // java.util.concurrent.Callable
    public Long call() throws Exception {
        this.f43132b.a.beginTransaction();
        try {
            long insertAndReturnId = this.f43132b.b.insertAndReturnId(this.f43131a);
            this.f43132b.a.setTransactionSuccessful();
            this.f43132b.a.endTransaction();
            return Long.valueOf(insertAndReturnId);
        } catch (Throwable th) {
            this.f43132b.a.endTransaction();
            throw th;
        }
    }
}
