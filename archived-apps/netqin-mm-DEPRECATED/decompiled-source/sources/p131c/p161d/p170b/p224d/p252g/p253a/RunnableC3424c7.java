package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzbcs;
import com.google.android.gms.internal.ads.zzbdc;
/* renamed from: c.d.b.d.g.a.c7 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/c7.class */
public final class RunnableC3424c7 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ String f12525a;

    /* renamed from: b */
    public final /* synthetic */ String f12526b;

    /* renamed from: c */
    public final /* synthetic */ zzbcs f12527c;

    public RunnableC3424c7(zzbcs zzbcsVar, String str, String str2) {
        this.f12527c = zzbcsVar;
        this.f12525a = str;
        this.f12526b = str2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzbdc zzbdcVar;
        zzbdc zzbdcVar2;
        zzbdcVar = this.f12527c.f24788p;
        if (zzbdcVar != null) {
            zzbdcVar2 = this.f12527c.f24788p;
            zzbdcVar2.mo15798a(this.f12525a, this.f12526b);
        }
    }
}
