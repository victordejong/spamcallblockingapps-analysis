package p193e.p194a.p852i.p907v;

import java.util.concurrent.Callable;
/* renamed from: e.a.i.v.h */
/* loaded from: classes3-dex2jar.jar:e/a/i/v/h.class */
public class CallableC15243h implements Callable<Long> {

    /* renamed from: a */
    public final /* synthetic */ C15244i f43368a;

    /* renamed from: b */
    public final /* synthetic */ g f43369b;

    public CallableC15243h(g gVar, C15244i c15244i) {
        this.f43369b = gVar;
        this.f43368a = c15244i;
    }

    /* JADX WARN: Finally extract failed */
    @Override // java.util.concurrent.Callable
    public Long call() throws Exception {
        this.f43369b.a.beginTransaction();
        try {
            long insertAndReturnId = this.f43369b.b.insertAndReturnId(this.f43368a);
            this.f43369b.a.setTransactionSuccessful();
            this.f43369b.a.endTransaction();
            return Long.valueOf(insertAndReturnId);
        } catch (Throwable th) {
            this.f43369b.a.endTransaction();
            throw th;
        }
    }
}
