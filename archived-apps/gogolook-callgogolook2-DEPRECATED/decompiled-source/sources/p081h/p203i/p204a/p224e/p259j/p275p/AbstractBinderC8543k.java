package p081h.p203i.p204a.p224e.p259j.p275p;

import android.os.IBinder;
import android.os.IInterface;
/* renamed from: h.i.a.e.j.p.k */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/p/k.class */
public abstract class AbstractBinderC8543k extends BinderC8537e implements AbstractC8542j {
    /* renamed from: a */
    public static AbstractC8542j m17851a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
        return queryLocalInterface instanceof AbstractC8542j ? (AbstractC8542j) queryLocalInterface : new C8544l(iBinder);
    }
}
