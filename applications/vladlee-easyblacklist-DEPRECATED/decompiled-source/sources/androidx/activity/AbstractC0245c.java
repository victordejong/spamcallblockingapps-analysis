package androidx.activity;

import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* renamed from: androidx.activity.c */
/* loaded from: classes-dex2jar.jar:androidx/activity/c.class */
public abstract class AbstractC0245c {

    /* renamed from: b */
    private CopyOnWriteArrayList<AbstractC0243a> f542b = new CopyOnWriteArrayList<>();

    /* renamed from: a */
    private boolean f541a = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m9956a(AbstractC0243a aVar) {
        this.f542b.add(aVar);
    }

    /* renamed from: a */
    public final void m9955a(boolean z) {
        this.f541a = z;
    }

    /* renamed from: a */
    public final boolean m9957a() {
        return this.f541a;
    }

    /* renamed from: b */
    public final void m9954b() {
        Iterator<AbstractC0243a> it = this.f542b.iterator();
        while (it.hasNext()) {
            it.next().mo9958a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final void m9953b(AbstractC0243a aVar) {
        this.f542b.remove(aVar);
    }

    /* renamed from: c */
    public abstract void mo7619c();
}
