package p193e.p194a.p852i.p879e.p889h.p890a;

import java.util.concurrent.Callable;
import p1727n3.p1781e0.p1782a.AbstractC26154f;
import s1.s;
/* renamed from: e.a.i.e.h.a.f$d */
/* loaded from: classes3-dex2jar.jar:e/a/i/e/h/a/f$d.class */
public class f$d implements Callable<s> {

    /* renamed from: a */
    public final /* synthetic */ f f43126a;

    public f$d(f fVar) {
        this.f43126a = fVar;
    }

    @Override // java.util.concurrent.Callable
    public s call() throws Exception {
        AbstractC26154f acquire = this.f43126a.f.acquire();
        this.f43126a.a.beginTransaction();
        try {
            acquire.m2673A();
            this.f43126a.a.setTransactionSuccessful();
            return s.a;
        } finally {
            this.f43126a.a.endTransaction();
            this.f43126a.f.release(acquire);
        }
    }
}
