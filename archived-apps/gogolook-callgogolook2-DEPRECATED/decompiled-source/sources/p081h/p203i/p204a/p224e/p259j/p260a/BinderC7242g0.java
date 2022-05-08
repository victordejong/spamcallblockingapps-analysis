package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.IBinder;
import android.os.IInterface;
/* renamed from: h.i.a.e.j.a.g0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/g0.class */
public final class BinderC7242g0 extends BinderC7453x2 implements AbstractC7229f0 {
    /* renamed from: a */
    public static AbstractC7229f0 m20925a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.purchase.client.IInAppPurchaseListener");
        return queryLocalInterface instanceof AbstractC7229f0 ? (AbstractC7229f0) queryLocalInterface : new C7255h0(iBinder);
    }
}
