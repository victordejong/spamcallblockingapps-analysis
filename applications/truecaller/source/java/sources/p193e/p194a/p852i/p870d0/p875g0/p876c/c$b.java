package p193e.p194a.p852i.p870d0.p875g0.p876c;

import android.database.Cursor;
import java.util.concurrent.Callable;
import p1727n3.p1751c0.C25686y;
import p1727n3.p1751c0.p1754h0.C25653b;
/* renamed from: e.a.i.d0.g0.c.c$b */
/* loaded from: classes3-dex2jar.jar:e/a/i/d0/g0/c/c$b.class */
public class c$b implements Callable<Long> {

    /* renamed from: a */
    public final /* synthetic */ C25686y f43086a;

    /* renamed from: b */
    public final /* synthetic */ c f43087b;

    public c$b(c cVar, C25686y c25686y) {
        this.f43087b = cVar;
        this.f43086a = c25686y;
    }

    /* JADX WARN: Finally extract failed */
    @Override // java.util.concurrent.Callable
    public Long call() throws Exception {
        Cursor m3090b = C25653b.m3090b(this.f43087b.a, this.f43086a, false, null);
        Long l = null;
        try {
            if (m3090b.moveToFirst()) {
                l = m3090b.isNull(0) ? null : Long.valueOf(m3090b.getLong(0));
            }
            m3090b.close();
            this.f43086a.m3057l();
            return l;
        } catch (Throwable th) {
            m3090b.close();
            this.f43086a.m3057l();
            throw th;
        }
    }
}
