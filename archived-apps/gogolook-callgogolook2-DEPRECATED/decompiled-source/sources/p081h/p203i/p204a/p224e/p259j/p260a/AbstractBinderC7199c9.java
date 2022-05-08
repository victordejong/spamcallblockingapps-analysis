package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import p081h.p203i.p204a.p224e.p252e.AbstractC7106b;
/* renamed from: h.i.a.e.j.a.c9 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/c9.class */
public abstract class AbstractBinderC7199c9 extends BinderC7453x2 implements AbstractC7186b9 {
    public AbstractBinderC7199c9() {
        super("com.google.android.gms.ads.internal.formats.client.IOnPublisherAdViewLoadedListener");
    }

    /* renamed from: a */
    public static AbstractC7186b9 m20964a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IOnPublisherAdViewLoadedListener");
        return queryLocalInterface instanceof AbstractC7186b9 ? (AbstractC7186b9) queryLocalInterface : new C7212d9(iBinder);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.BinderC7453x2
    /* renamed from: a */
    public final boolean mo20447a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i != 1) {
            return false;
        }
        mo20677a(AbstractBinderC7334n4.m20790a(parcel.readStrongBinder()), AbstractC7106b.BinderC7107a.m21060a(parcel.readStrongBinder()));
        parcel2.writeNoException();
        return true;
    }
}
