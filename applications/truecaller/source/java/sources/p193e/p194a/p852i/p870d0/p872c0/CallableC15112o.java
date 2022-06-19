package p193e.p194a.p852i.p870d0.p872c0;

import java.util.concurrent.Callable;
/* renamed from: e.a.i.d0.c0.o */
/* loaded from: classes3-dex2jar.jar:e/a/i/d0/c0/o.class */
public class CallableC15112o implements Callable<Long> {

    /* renamed from: a */
    public final /* synthetic */ C15113p f43064a;

    /* renamed from: b */
    public final /* synthetic */ n f43065b;

    public CallableC15112o(n nVar, C15113p c15113p) {
        this.f43065b = nVar;
        this.f43064a = c15113p;
    }

    /* JADX WARN: Finally extract failed */
    @Override // java.util.concurrent.Callable
    public Long call() throws Exception {
        this.f43065b.a.beginTransaction();
        try {
            long insertAndReturnId = this.f43065b.b.insertAndReturnId(this.f43064a);
            this.f43065b.a.setTransactionSuccessful();
            this.f43065b.a.endTransaction();
            return Long.valueOf(insertAndReturnId);
        } catch (Throwable th) {
            this.f43065b.a.endTransaction();
            throw th;
        }
    }
}
