package p081h.p203i.p204a.p224e.p259j.p276q;

import android.os.IBinder;
import android.os.IInterface;
/* renamed from: h.i.a.e.j.q.p3 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/p3.class */
public abstract class AbstractBinderC8701p3 extends BinderC8597f1 implements AbstractC8700p2 {
    /* renamed from: a */
    public static AbstractC8700p2 m17245a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.finsky.externalreferrer.IGetInstallReferrerService");
        return queryLocalInterface instanceof AbstractC8700p2 ? (AbstractC8700p2) queryLocalInterface : new C8711q4(iBinder);
    }
}
