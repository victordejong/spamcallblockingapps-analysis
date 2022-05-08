package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: h.i.a.e.j.a.k7 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/k7.class */
public abstract class AbstractBinderC7301k7 extends BinderC7453x2 implements AbstractC7288j7 {
    public AbstractBinderC7301k7() {
        super("com.google.android.gms.ads.internal.customrenderedad.client.IOnCustomRenderedAdLoadedListener");
    }

    /* renamed from: a */
    public static AbstractC7288j7 m20856a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.customrenderedad.client.IOnCustomRenderedAdLoadedListener");
        return queryLocalInterface instanceof AbstractC7288j7 ? (AbstractC7288j7) queryLocalInterface : new C7313l7(iBinder);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.BinderC7453x2
    /* renamed from: a */
    public final boolean mo20447a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        AbstractC7262h7 h7Var;
        if (i != 1) {
            return false;
        }
        IBinder readStrongBinder = parcel.readStrongBinder();
        if (readStrongBinder == null) {
            h7Var = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.customrenderedad.client.ICustomRenderedAd");
            h7Var = queryLocalInterface instanceof AbstractC7262h7 ? (AbstractC7262h7) queryLocalInterface : new C7275i7(readStrongBinder);
        }
        mo20793a(h7Var);
        parcel2.writeNoException();
        return true;
    }
}
