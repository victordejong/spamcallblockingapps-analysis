package p131c.p161d.p170b.p224d.p238d.p239a.p240a;

import com.google.android.gms.common.api.internal.zaaw;
import com.google.android.gms.common.api.internal.zaaz;
import java.util.concurrent.locks.Lock;
/* renamed from: c.d.b.d.d.a.a.p */
/* loaded from: classes-dex2jar.jar:c/d/b/d/d/a/a/p.class */
public abstract class AbstractC3272p {

    /* renamed from: a */
    public final zaaw f11979a;

    public AbstractC3272p(zaaw zaawVar) {
        this.f11979a = zaawVar;
    }

    /* renamed from: a */
    public abstract void mo27276a();

    /* renamed from: a */
    public final void m27275a(zaaz zaazVar) {
        Lock lock;
        Lock lock2;
        zaaw zaawVar;
        lock = zaazVar.f23229a;
        lock.lock();
        try {
            zaawVar = zaazVar.f23239k;
            if (zaawVar == this.f11979a) {
                mo27276a();
            }
        } finally {
            lock2 = zaazVar.f23229a;
            lock2.unlock();
        }
    }
}
