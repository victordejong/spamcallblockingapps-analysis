package p131c.p161d.p170b.p224d.p260i.p261a;

import com.google.android.gms.measurement.internal.zzei;
import com.google.android.gms.measurement.internal.zzjl;
/* renamed from: c.d.b.d.i.a.s6 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/i/a/s6.class */
public final class RunnableC4812s6 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ zzei f17380a;

    /* renamed from: b */
    public final /* synthetic */ zzjl f17381b;

    public RunnableC4812s6(zzjl zzjlVar, zzei zzeiVar) {
        this.f17381b = zzjlVar;
        this.f17380a = zzeiVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f17381b) {
            this.f17381b.f30095a = false;
            if (!this.f17381b.f30097c.m8883y()) {
                this.f17381b.f30097c.mo8789p().m9144y().m9143a("Connected to service");
                this.f17381b.f30097c.m8901a(this.f17380a);
            }
        }
    }
}
