package p081h.p203i.p204a.p224e.p285m.p287b;

import android.os.RemoteException;
import com.google.android.gms.measurement.internal.zzh;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: h.i.a.e.m.b.l2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/m/b/l2.class */
public final class RunnableC9012l2 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ AtomicReference f20479a;

    /* renamed from: b */
    public final /* synthetic */ zzh f20480b;

    /* renamed from: c */
    public final /* synthetic */ C9000j2 f20481c;

    public RunnableC9012l2(C9000j2 j2Var, AtomicReference atomicReference, zzh zzhVar) {
        this.f20481c = j2Var;
        this.f20479a = atomicReference;
        this.f20480b = zzhVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC8973f fVar;
        synchronized (this.f20479a) {
            try {
                fVar = this.f20481c.f20451d;
            } catch (RemoteException e) {
                this.f20481c.mo16178c().m16375s().m16337a("Failed to get app instance id", e);
                this.f20479a.notify();
            }
            if (fVar == null) {
                this.f20481c.mo16178c().m16375s().m16338a("Failed to get app instance id");
                this.f20479a.notify();
                return;
            }
            this.f20479a.set(fVar.mo16143a(this.f20480b));
            String str = (String) this.f20479a.get();
            if (str != null) {
                this.f20481c.m16323o().m16255a(str);
                this.f20481c.m16350k().f20207l.m16662a(str);
            }
            this.f20481c.m16545C();
            this.f20479a.notify();
        }
    }
}
