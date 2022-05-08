package p081h.p203i.p204a.p224e.p235d.p240n;

import android.os.IBinder;
import android.os.IInterface;
import p081h.p203i.p204a.p224e.p259j.p267h.BinderC7741a;
/* renamed from: h.i.a.e.d.n.w0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/n/w0.class */
public abstract class AbstractBinderC7028w0 extends BinderC7741a implements AbstractC7024u0 {
    /* renamed from: a */
    public static AbstractC7024u0 m21272a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IGoogleCertificatesApi");
        return queryLocalInterface instanceof AbstractC7024u0 ? (AbstractC7024u0) queryLocalInterface : new C7026v0(iBinder);
    }
}
