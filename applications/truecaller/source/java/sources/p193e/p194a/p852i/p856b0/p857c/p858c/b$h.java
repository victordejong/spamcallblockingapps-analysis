package p193e.p194a.p852i.p856b0.p857c.p858c;

import java.util.List;
import java.util.concurrent.Callable;
/* renamed from: e.a.i.b0.c.c.b$h */
/* loaded from: classes3-dex2jar.jar:e/a/i/b0/c/c/b$h.class */
public class b$h implements Callable<long[]> {

    /* renamed from: a */
    public final /* synthetic */ List f42782a;

    /* renamed from: b */
    public final /* synthetic */ b f42783b;

    public b$h(b bVar, List list) {
        this.f42783b = bVar;
        this.f42782a = list;
    }

    @Override // java.util.concurrent.Callable
    public long[] call() throws Exception {
        this.f42783b.a.beginTransaction();
        try {
            long[] insertAndReturnIdsArray = this.f42783b.b.insertAndReturnIdsArray(this.f42782a);
            this.f42783b.a.setTransactionSuccessful();
            return insertAndReturnIdsArray;
        } finally {
            this.f42783b.a.endTransaction();
        }
    }
}
