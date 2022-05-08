package p081h.p203i.p204a.p224e.p285m.p287b;

import com.google.android.gms.measurement.internal.zzfh;
import com.google.android.gms.measurement.internal.zzh;
/* renamed from: h.i.a.e.m.b.v2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/m/b/v2.class */
public final class RunnableC9073v2 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ boolean f20714a;

    /* renamed from: b */
    public final /* synthetic */ zzfh f20715b;

    /* renamed from: c */
    public final /* synthetic */ zzh f20716c;

    /* renamed from: d */
    public final /* synthetic */ C9000j2 f20717d;

    public RunnableC9073v2(C9000j2 j2Var, boolean z, zzfh zzfhVar, zzh zzhVar) {
        this.f20717d = j2Var;
        this.f20714a = z;
        this.f20715b = zzfhVar;
        this.f20716c = zzhVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC8973f fVar;
        fVar = this.f20717d.f20451d;
        if (fVar == null) {
            this.f20717d.mo16178c().m16375s().m16338a("Discarding data. Failed to set user attribute");
            return;
        }
        this.f20717d.m16531a(fVar, this.f20714a ? null : this.f20715b, this.f20716c);
        this.f20717d.m16545C();
    }
}
