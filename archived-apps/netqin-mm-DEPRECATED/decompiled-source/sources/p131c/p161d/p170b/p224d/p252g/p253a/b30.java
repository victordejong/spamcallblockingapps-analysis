package p131c.p161d.p170b.p224d.p252g.p253a;

import android.view.MotionEvent;
import com.google.android.gms.internal.ads.zzdp;
import com.google.android.gms.internal.ads.zzdtc;
import com.google.android.gms.internal.ads.zzdy;
/* renamed from: c.d.b.d.g.a.b30 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/b30.class */
public final class b30 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ MotionEvent f12330a;

    public b30(zzdy zzdyVar, MotionEvent motionEvent) {
        this.f12330a = motionEvent;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzdtc zzdtcVar;
        zzdp zzdpVar;
        try {
            zzdpVar = zzdy.f27950y;
            zzdpVar.mo13019a(this.f12330a);
        } catch (Exception e) {
            zzdtcVar = zzdy.f27945A;
            zzdtcVar.m13221a(2022, -1L, e);
        }
    }
}
