package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzbcs;
import com.google.android.gms.internal.ads.zzbdc;
/* renamed from: c.d.b.d.g.a.e7 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/e7.class */
public final class RunnableC3498e7 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ int f12801a;

    /* renamed from: b */
    public final /* synthetic */ int f12802b;

    /* renamed from: c */
    public final /* synthetic */ zzbcs f12803c;

    public RunnableC3498e7(zzbcs zzbcsVar, int i, int i2) {
        this.f12803c = zzbcsVar;
        this.f12801a = i;
        this.f12802b = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzbdc zzbdcVar;
        zzbdc zzbdcVar2;
        zzbdcVar = this.f12803c.f24788p;
        if (zzbdcVar != null) {
            zzbdcVar2 = this.f12803c.f24788p;
            zzbdcVar2.mo15805a(this.f12801a, this.f12802b);
        }
    }
}
