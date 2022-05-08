package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
import com.google.android.gms.internal.ads.zzjo;
import com.google.android.gms.internal.ads.zzpy;
import com.google.android.gms.internal.ads.zzti;
/* renamed from: h.i.a.e.j.a.i4 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/i4.class */
public abstract class AbstractBinderC7272i4 extends BinderC7453x2 implements AbstractC7259h4 {
    public AbstractBinderC7272i4() {
        super("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.BinderC7453x2
    /* renamed from: a */
    public final boolean mo20447a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        AbstractC7181b4 b4Var = null;
        AbstractC7169a5 a5Var = null;
        switch (i) {
            case 1:
                AbstractC7220e4 F = mo20882F();
                parcel2.writeNoException();
                C7465y2.m20510a(parcel2, F);
                return true;
            case 2:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdListener");
                    b4Var = queryLocalInterface instanceof AbstractC7181b4 ? (AbstractC7181b4) queryLocalInterface : new C7207d4(readStrongBinder);
                }
                mo20878a(b4Var);
                parcel2.writeNoException();
                return true;
            case 3:
                mo20875a(AbstractBinderC7375q8.m20731a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 4:
                mo20874a(AbstractBinderC7411t8.m20657a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 5:
                mo20873a(parcel.readString(), AbstractBinderC7483z8.m20446a(parcel.readStrongBinder()), AbstractBinderC7447w8.m20594a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 6:
                mo20880a((zzpy) C7465y2.m20509a(parcel, zzpy.CREATOR));
                parcel2.writeNoException();
                return true;
            case 7:
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.client.ICorrelationIdProvider");
                    a5Var = queryLocalInterface2 instanceof AbstractC7169a5 ? (AbstractC7169a5) queryLocalInterface2 : new C7195c5(readStrongBinder2);
                }
                mo20879a(a5Var);
                parcel2.writeNoException();
                return true;
            case 8:
                mo20877a(AbstractBinderC7199c9.m20964a(parcel.readStrongBinder()), (zzjo) C7465y2.m20509a(parcel, zzjo.CREATOR));
                parcel2.writeNoException();
                return true;
            case 9:
                mo20881a((PublisherAdViewOptions) C7465y2.m20509a(parcel, PublisherAdViewOptions.CREATOR));
                parcel2.writeNoException();
                return true;
            case 10:
                mo20876a(AbstractBinderC7238f9.m20928a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 11:
            case 12:
            default:
                return false;
            case 13:
                mo20920a((zzti) C7465y2.m20509a(parcel, zzti.CREATOR));
                parcel2.writeNoException();
                return true;
            case 14:
                mo20919a(AbstractBinderC7472y9.m20465a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
        }
    }
}
