package p081h.p203i.p204a.p224e.p259j.p276q;

import java.io.IOException;
/* renamed from: h.i.a.e.j.q.w7 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/w7.class */
public abstract class AbstractC8768w7 {

    /* renamed from: a */
    public volatile int f20095a = -1;

    /* renamed from: a */
    public int mo16954a() {
        return 0;
    }

    /* renamed from: a */
    public abstract AbstractC8768w7 mo16953a(C8686n7 n7Var) throws IOException;

    /* renamed from: a */
    public void mo16952a(C8696o7 o7Var) throws IOException {
    }

    /* renamed from: b */
    public final int m17077b() {
        int a = mo16954a();
        this.f20095a = a;
        return a;
    }

    /* renamed from: c */
    public AbstractC8768w7 clone() throws CloneNotSupportedException {
        return (AbstractC8768w7) super.clone();
    }

    /* renamed from: d */
    public final int m17075d() {
        if (this.f20095a < 0) {
            m17077b();
        }
        return this.f20095a;
    }

    public String toString() {
        return C8781x7.m17003a(this);
    }
}
