package p193e.p194a.p852i.p870d0.p875g0.p876c;

import java.util.List;
import java.util.concurrent.Callable;
/* renamed from: e.a.i.d0.g0.c.c$f */
/* loaded from: classes3-dex2jar.jar:e/a/i/d0/g0/c/c$f.class */
public class c$f implements Callable<long[]> {

    /* renamed from: a */
    public final /* synthetic */ List f43088a;

    /* renamed from: b */
    public final /* synthetic */ c f43089b;

    public c$f(c cVar, List list) {
        this.f43089b = cVar;
        this.f43088a = list;
    }

    @Override // java.util.concurrent.Callable
    public long[] call() throws Exception {
        this.f43089b.a.beginTransaction();
        try {
            long[] insertAndReturnIdsArray = this.f43089b.b.insertAndReturnIdsArray(this.f43088a);
            this.f43089b.a.setTransactionSuccessful();
            return insertAndReturnIdsArray;
        } finally {
            this.f43089b.a.endTransaction();
        }
    }
}
