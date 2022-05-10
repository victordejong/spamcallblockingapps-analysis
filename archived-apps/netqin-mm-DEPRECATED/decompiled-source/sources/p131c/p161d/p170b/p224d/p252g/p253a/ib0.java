package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzcf;
import com.google.android.gms.internal.ads.zzex;
/* renamed from: c.d.b.d.g.a.ib0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/ib0.class */
public final class ib0 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ int f13521a;

    /* renamed from: b */
    public final /* synthetic */ boolean f13522b;

    /* renamed from: c */
    public final /* synthetic */ zzex f13523c;

    public ib0(zzex zzexVar, int i, boolean z) {
        this.f13523c = zzexVar;
        this.f13521a = i;
        this.f13522b = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean a;
        zzcf.zza b = this.f13523c.m12164b(this.f13521a, this.f13522b);
        this.f13523c.f28166j = b;
        a = zzex.m12176a(this.f13521a, b);
        if (a) {
            this.f13523c.m12175a(this.f13521a + 1, this.f13522b);
        }
    }
}
