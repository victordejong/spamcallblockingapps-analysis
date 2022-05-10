package p131c.p161d.p170b.p224d.p252g.p253a;

import android.content.Context;
import com.google.android.gms.internal.ads.zzdp;
import com.google.android.gms.internal.ads.zzdtc;
import com.google.android.gms.internal.ads.zzdy;
/* renamed from: c.d.b.d.g.a.s20 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/s20.class */
public final class s20 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ Context f15062a;

    public s20(zzdy zzdyVar, Context context) {
        this.f15062a = context;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzdtc zzdtcVar;
        zzdp zzdpVar;
        try {
            zzdpVar = zzdy.f27950y;
            zzdpVar.mo13024a(this.f15062a);
        } catch (Exception e) {
            zzdtcVar = zzdy.f27945A;
            zzdtcVar.m13221a(2019, -1L, e);
        }
    }
}
