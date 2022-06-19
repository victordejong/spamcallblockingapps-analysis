package androidx.activity;

import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* renamed from: androidx.activity.b */
/* loaded from: classes-dex2jar.jar:androidx/activity/b.class */
public abstract class AbstractC0035b {

    /* renamed from: a */
    private boolean f72a;

    /* renamed from: b */
    private CopyOnWriteArrayList<AbstractC0034a> f73b = new CopyOnWriteArrayList<>();

    public AbstractC0035b(boolean z) {
        this.f72a = z;
    }

    /* renamed from: a */
    public void m6988a(AbstractC0034a abstractC0034a) {
        this.f73b.add(abstractC0034a);
    }

    /* renamed from: b */
    public abstract void m6987b();

    /* renamed from: c */
    public final boolean m6986c() {
        return this.f72a;
    }

    /* renamed from: d */
    public final void m6985d() {
        Iterator<AbstractC0034a> it = this.f73b.iterator();
        while (it.hasNext()) {
            it.next().cancel();
        }
    }

    /* renamed from: e */
    void m6984e(AbstractC0034a abstractC0034a) {
        this.f73b.remove(abstractC0034a);
    }

    /* renamed from: f */
    public final void m6983f(boolean z) {
        this.f72a = z;
    }
}
