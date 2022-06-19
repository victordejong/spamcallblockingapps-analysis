package p193e.p194a.p852i.p879e.p889h.p890a;

import java.util.concurrent.Callable;
import p1727n3.p1781e0.p1782a.AbstractC26154f;
import s1.s;
/* renamed from: e.a.i.e.h.a.f$c */
/* loaded from: classes3-dex2jar.jar:e/a/i/e/h/a/f$c.class */
public class f$c implements Callable<s> {

    /* renamed from: a */
    public final /* synthetic */ f f43125a;

    public f$c(f fVar) {
        this.f43125a = fVar;
    }

    @Override // java.util.concurrent.Callable
    public s call() throws Exception {
        AbstractC26154f acquire = this.f43125a.e.acquire();
        this.f43125a.a.beginTransaction();
        try {
            acquire.m2673A();
            this.f43125a.a.setTransactionSuccessful();
            return s.a;
        } finally {
            this.f43125a.a.endTransaction();
            this.f43125a.e.release(acquire);
        }
    }
}
