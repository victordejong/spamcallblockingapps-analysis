package p193e.p194a.p852i.p879e.p889h.p890a;

import java.util.concurrent.Callable;
import p1727n3.p1781e0.p1782a.AbstractC26154f;
import s1.s;
/* renamed from: e.a.i.e.h.a.j$c */
/* loaded from: classes3-dex2jar.jar:e/a/i/e/h/a/j$c.class */
public class j$c implements Callable<s> {

    /* renamed from: a */
    public final /* synthetic */ boolean f43134a;

    /* renamed from: b */
    public final /* synthetic */ String f43135b;

    /* renamed from: c */
    public final /* synthetic */ j f43136c;

    public j$c(j jVar, boolean z, String str) {
        this.f43136c = jVar;
        this.f43134a = z;
        this.f43135b = str;
    }

    @Override // java.util.concurrent.Callable
    public s call() throws Exception {
        AbstractC26154f acquire = this.f43136c.d.acquire();
        acquire.mo2650l0(1, this.f43134a ? 1L : 0L);
        String str = this.f43135b;
        if (str == null) {
            acquire.mo2648y0(2);
        } else {
            acquire.mo2651f0(2, str);
        }
        this.f43136c.a.beginTransaction();
        try {
            acquire.m2673A();
            this.f43136c.a.setTransactionSuccessful();
            return s.a;
        } finally {
            this.f43136c.a.endTransaction();
            this.f43136c.d.release(acquire);
        }
    }
}
