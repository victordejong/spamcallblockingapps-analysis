package p193e.p194a.p852i.p879e.p889h.p890a;

import android.database.Cursor;
import java.util.concurrent.Callable;
import p1727n3.p1751c0.C25686y;
import p1727n3.p1751c0.p1754h0.C25653b;
/* renamed from: e.a.i.e.h.a.f$f */
/* loaded from: classes3-dex2jar.jar:e/a/i/e/h/a/f$f.class */
public class f$f implements Callable<Long> {

    /* renamed from: a */
    public final /* synthetic */ C25686y f43129a;

    /* renamed from: b */
    public final /* synthetic */ f f43130b;

    public f$f(f fVar, C25686y c25686y) {
        this.f43130b = fVar;
        this.f43129a = c25686y;
    }

    /* JADX WARN: Finally extract failed */
    @Override // java.util.concurrent.Callable
    public Long call() throws Exception {
        Cursor m3090b = C25653b.m3090b(this.f43130b.a, this.f43129a, false, null);
        Long l = null;
        try {
            if (m3090b.moveToFirst()) {
                l = m3090b.isNull(0) ? null : Long.valueOf(m3090b.getLong(0));
            }
            m3090b.close();
            this.f43129a.m3057l();
            return l;
        } catch (Throwable th) {
            m3090b.close();
            this.f43129a.m3057l();
            throw th;
        }
    }
}
