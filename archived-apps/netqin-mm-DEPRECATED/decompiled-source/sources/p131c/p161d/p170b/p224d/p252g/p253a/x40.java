package p131c.p161d.p170b.p224d.p252g.p253a;

import android.view.MotionEvent;
import com.google.android.gms.internal.ads.zzdp;
import com.google.android.gms.internal.ads.zzdtc;
import com.google.android.gms.internal.ads.zzdy;
/* renamed from: c.d.b.d.g.a.x40 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/x40.class */
public final class x40 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ int f15988a;

    /* renamed from: b */
    public final /* synthetic */ int f15989b;

    /* renamed from: c */
    public final /* synthetic */ int f15990c;

    public x40(zzdy zzdyVar, int i, int i2, int i3) {
        this.f15988a = i;
        this.f15989b = i2;
        this.f15990c = i3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzdtc zzdtcVar;
        zzdp zzdpVar;
        try {
            zzdpVar = zzdy.f27950y;
            zzdpVar.mo13019a(MotionEvent.obtain(0L, this.f15988a, 0, this.f15989b, this.f15990c, 0));
        } catch (Exception e) {
            zzdtcVar = zzdy.f27945A;
            zzdtcVar.m13221a(2022, -1L, e);
        }
    }
}
