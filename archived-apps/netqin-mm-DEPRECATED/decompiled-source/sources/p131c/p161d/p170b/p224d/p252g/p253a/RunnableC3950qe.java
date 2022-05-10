package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzbwk;
import java.lang.ref.WeakReference;
/* renamed from: c.d.b.d.g.a.qe */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/qe.class */
public final class RunnableC3950qe implements Runnable {

    /* renamed from: a */
    public final WeakReference<zzbwk> f14799a;

    public RunnableC3950qe(zzbwk zzbwkVar) {
        this.f14799a = new WeakReference<>(zzbwkVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzbwk zzbwkVar = this.f14799a.get();
        if (zzbwkVar != null) {
            zzbwkVar.m14976s();
        }
    }
}
