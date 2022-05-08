package p459j.p460a.p474c0.p475c;

import java.util.HashSet;
import java.util.Iterator;
import p459j.p460a.p474c0.AbstractC11516a;
/* renamed from: j.a.c0.c.p */
/* loaded from: classes2-dex2jar.jar:j/a/c0/c/p.class */
public class C11547p {

    /* renamed from: a */
    public final HashSet<AbstractC11548a> f25790a = new HashSet<>();

    /* renamed from: b */
    public final Object f25791b = new Object();

    /* renamed from: j.a.c0.c.p$a */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/c/p$a.class */
    public interface AbstractC11548a {
        /* renamed from: a */
        void mo8667a();
    }

    /* renamed from: b */
    public static C11547p m9196b() {
        return AbstractC11516a.m9413n().mo9399j();
    }

    /* renamed from: a */
    public void m9198a() {
        HashSet hashSet;
        synchronized (this.f25791b) {
            hashSet = (HashSet) this.f25790a.clone();
        }
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            ((AbstractC11548a) it.next()).mo8667a();
        }
    }

    /* renamed from: a */
    public void m9197a(AbstractC11548a aVar) {
        synchronized (this.f25791b) {
            this.f25790a.add(aVar);
        }
    }
}
