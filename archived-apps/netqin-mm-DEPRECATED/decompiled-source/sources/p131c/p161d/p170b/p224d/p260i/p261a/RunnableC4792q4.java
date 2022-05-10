package p131c.p161d.p170b.p224d.p260i.p261a;

import com.google.android.gms.measurement.internal.zzhb;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: c.d.b.d.i.a.q4 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/i/a/q4.class */
public final class RunnableC4792q4 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ AtomicReference f17341a;

    /* renamed from: b */
    public final /* synthetic */ zzhb f17342b;

    public RunnableC4792q4(zzhb zzhbVar, AtomicReference atomicReference) {
        this.f17342b = zzhbVar;
        this.f17341a = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f17341a) {
            this.f17341a.set(Boolean.valueOf(this.f17342b.m24897h().m9336j(this.f17342b.m24886m().m9174y())));
            this.f17341a.notify();
        }
    }
}
