package p131c.p161d.p170b.p224d.p260i.p261a;

import com.google.android.gms.measurement.internal.zzhb;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: c.d.b.d.i.a.z4 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/i/a/z4.class */
public final class RunnableC4873z4 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ AtomicReference f17494a;

    /* renamed from: b */
    public final /* synthetic */ zzhb f17495b;

    public RunnableC4873z4(zzhb zzhbVar, AtomicReference atomicReference) {
        this.f17495b = zzhbVar;
        this.f17494a = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f17494a) {
            this.f17494a.set(this.f17495b.m24897h().m9334k(this.f17495b.m24886m().m9174y()));
            this.f17494a.notify();
        }
    }
}
