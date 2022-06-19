package p193e.p194a.p852i.p879e.p889h.p890a;

import android.database.Cursor;
import java.util.concurrent.Callable;
import p1727n3.p1751c0.C25686y;
import p1727n3.p1751c0.p1754h0.C25653b;
/* renamed from: e.a.i.e.h.a.j$e */
/* loaded from: classes3-dex2jar.jar:e/a/i/e/h/a/j$e.class */
public class j$e implements Callable<Integer> {

    /* renamed from: a */
    public final /* synthetic */ C25686y f43139a;

    /* renamed from: b */
    public final /* synthetic */ j f43140b;

    public j$e(j jVar, C25686y c25686y) {
        this.f43140b = jVar;
        this.f43139a = c25686y;
    }

    /* JADX WARN: Finally extract failed */
    @Override // java.util.concurrent.Callable
    public Integer call() throws Exception {
        Cursor m3090b = C25653b.m3090b(this.f43140b.a, this.f43139a, false, null);
        Integer num = null;
        try {
            if (m3090b.moveToFirst()) {
                num = m3090b.isNull(0) ? null : Integer.valueOf(m3090b.getInt(0));
            }
            m3090b.close();
            this.f43139a.m3057l();
            return num;
        } catch (Throwable th) {
            m3090b.close();
            this.f43139a.m3057l();
            throw th;
        }
    }
}
