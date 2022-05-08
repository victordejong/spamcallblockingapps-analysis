package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: h.i.a.e.j.a.c4 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/c4.class */
public abstract class AbstractBinderC7194c4 extends BinderC7453x2 implements AbstractC7181b4 {
    public AbstractBinderC7194c4() {
        super("com.google.android.gms.ads.internal.client.IAdListener");
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.BinderC7453x2
    /* renamed from: a */
    public final boolean mo20447a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 1:
                onAdClosed();
                break;
            case 2:
                onAdFailedToLoad(parcel.readInt());
                break;
            case 3:
                onAdLeftApplication();
                break;
            case 4:
                onAdLoaded();
                break;
            case 5:
                onAdOpened();
                break;
            case 6:
                onAdClicked();
                break;
            case 7:
                onAdImpression();
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
