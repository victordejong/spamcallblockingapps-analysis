package p193e.p194a.p852i.p907v;

import android.database.Cursor;
import java.util.concurrent.Callable;
import p1727n3.p1751c0.C25686y;
import p1727n3.p1751c0.p1754h0.C25653b;
/* renamed from: e.a.i.v.g$d */
/* loaded from: classes3-dex2jar.jar:e/a/i/v/g$d.class */
public class g$d implements Callable<Long> {

    /* renamed from: a */
    public final /* synthetic */ C25686y f43366a;

    /* renamed from: b */
    public final /* synthetic */ g f43367b;

    public g$d(g gVar, C25686y c25686y) {
        this.f43367b = gVar;
        this.f43366a = c25686y;
    }

    /* JADX WARN: Finally extract failed */
    @Override // java.util.concurrent.Callable
    public Long call() throws Exception {
        Cursor m3090b = C25653b.m3090b(this.f43367b.a, this.f43366a, false, null);
        Long l = null;
        try {
            if (m3090b.moveToFirst()) {
                l = m3090b.isNull(0) ? null : Long.valueOf(m3090b.getLong(0));
            }
            m3090b.close();
            this.f43366a.m3057l();
            return l;
        } catch (Throwable th) {
            m3090b.close();
            this.f43366a.m3057l();
            throw th;
        }
    }
}
