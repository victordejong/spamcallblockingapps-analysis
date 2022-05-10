package p131c.p161d.p170b.p224d.p238d.p239a.p240a;

import com.google.android.gms.common.api.internal.zaaf;
import com.google.android.gms.common.api.internal.zaaz;
import java.util.concurrent.locks.Lock;
/* renamed from: c.d.b.d.d.a.a.l */
/* loaded from: classes-dex2jar.jar:c/d/b/d/d/a/a/l.class */
public abstract class AbstractRunnableC3264l implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ zaaf f11961a;

    public AbstractRunnableC3264l(zaaf zaafVar) {
        this.f11961a = zaafVar;
    }

    public /* synthetic */ AbstractRunnableC3264l(zaaf zaafVar, RunnableC3246c cVar) {
        this(zaafVar);
    }

    /* renamed from: a */
    public abstract void mo27298a();

    @Override // java.lang.Runnable
    public void run() {
        Lock lock;
        zaaz zaazVar;
        Lock lock2;
        lock = this.f11961a.f23184b;
        lock.lock();
        try {
            if (!Thread.interrupted()) {
                mo27298a();
            }
        } catch (RuntimeException e) {
            zaazVar = this.f11961a.f23183a;
            zaazVar.m17531a(e);
        } finally {
            lock2 = this.f11961a.f23184b;
            lock2.unlock();
        }
    }
}
