package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzjk;
/* renamed from: h.i.a.e.j.a.f4 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/f4.class */
public abstract class AbstractBinderC7233f4 extends BinderC7453x2 implements AbstractC7220e4 {
    public AbstractBinderC7233f4() {
        super("com.google.android.gms.ads.internal.client.IAdLoader");
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.BinderC7453x2
    /* renamed from: a */
    public final boolean mo20447a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            mo20916a((zzjk) C7465y2.m20509a(parcel, zzjk.CREATOR));
            parcel2.writeNoException();
            return true;
        } else if (i == 2) {
            String mediationAdapterClassName = getMediationAdapterClassName();
            parcel2.writeNoException();
            parcel2.writeString(mediationAdapterClassName);
            return true;
        } else if (i == 3) {
            boolean isLoading = isLoading();
            parcel2.writeNoException();
            C7465y2.m20507a(parcel2, isLoading);
            return true;
        } else if (i == 4) {
            String H = mo20917H();
            parcel2.writeNoException();
            parcel2.writeString(H);
            return true;
        } else if (i != 5) {
            return false;
        } else {
            mo20915a((zzjk) C7465y2.m20509a(parcel, zzjk.CREATOR), parcel.readInt());
            parcel2.writeNoException();
            return true;
        }
    }
}
