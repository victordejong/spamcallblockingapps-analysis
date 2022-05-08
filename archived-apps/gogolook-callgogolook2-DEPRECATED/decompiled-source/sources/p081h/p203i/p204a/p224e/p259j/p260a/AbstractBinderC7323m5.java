package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.IBinder;
import android.os.IInterface;
/* renamed from: h.i.a.e.j.a.m5 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/m5.class */
public abstract class AbstractBinderC7323m5 extends BinderC7453x2 implements AbstractC7311l5 {
    /* renamed from: a */
    public static AbstractC7311l5 m20794a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IMuteThisAdReason");
        return queryLocalInterface instanceof AbstractC7311l5 ? (AbstractC7311l5) queryLocalInterface : new C7335n5(iBinder);
    }
}
