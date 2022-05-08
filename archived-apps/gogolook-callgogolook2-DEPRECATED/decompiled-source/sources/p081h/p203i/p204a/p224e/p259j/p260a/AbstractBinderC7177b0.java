package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.IBinder;
import android.os.IInterface;
/* renamed from: h.i.a.e.j.a.b0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/b0.class */
public abstract class AbstractBinderC7177b0 extends BinderC7453x2 implements AbstractC7164a0 {
    /* renamed from: a */
    public static AbstractC7164a0 m20989a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.overlay.client.IAdOverlay");
        return queryLocalInterface instanceof AbstractC7164a0 ? (AbstractC7164a0) queryLocalInterface : new C7190c0(iBinder);
    }
}
