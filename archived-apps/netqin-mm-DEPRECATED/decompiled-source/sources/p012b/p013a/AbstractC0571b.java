package p012b.p013a;

import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* renamed from: b.a.b */
/* loaded from: classes-dex2jar.jar:b/a/b.class */
public abstract class AbstractC0571b {

    /* renamed from: a */
    public boolean f2918a;

    /* renamed from: b */
    public CopyOnWriteArrayList<AbstractC0570a> f2919b = new CopyOnWriteArrayList<>();

    public AbstractC0571b(boolean z) {
        this.f2918a = z;
    }

    /* renamed from: a */
    public abstract void mo34767a();

    /* renamed from: a */
    public void m36906a(AbstractC0570a aVar) {
        this.f2919b.add(aVar);
    }

    /* renamed from: a */
    public final void m36905a(boolean z) {
        this.f2918a = z;
    }

    /* renamed from: b */
    public void m36903b(AbstractC0570a aVar) {
        this.f2919b.remove(aVar);
    }

    /* renamed from: b */
    public final boolean m36904b() {
        return this.f2918a;
    }

    /* renamed from: c */
    public final void m36902c() {
        Iterator<AbstractC0570a> it = this.f2919b.iterator();
        while (it.hasNext()) {
            it.next().cancel();
        }
    }
}
