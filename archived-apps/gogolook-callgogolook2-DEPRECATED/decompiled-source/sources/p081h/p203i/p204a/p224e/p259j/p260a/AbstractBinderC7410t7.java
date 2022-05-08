package p081h.p203i.p204a.p224e.p259j.p260a;

import android.net.Uri;
import android.os.Parcel;
import android.os.RemoteException;
import p081h.p203i.p204a.p224e.p252e.AbstractC7106b;
/* renamed from: h.i.a.e.j.a.t7 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/t7.class */
public abstract class AbstractBinderC7410t7 extends BinderC7453x2 implements AbstractC7398s7 {
    public AbstractBinderC7410t7() {
        super("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.BinderC7453x2
    /* renamed from: a */
    public final boolean mo20447a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            AbstractC7106b y0 = mo20646y0();
            parcel2.writeNoException();
            C7465y2.m20510a(parcel2, y0);
            return true;
        } else if (i == 2) {
            Uri uri = getUri();
            parcel2.writeNoException();
            C7465y2.m20505b(parcel2, uri);
            return true;
        } else if (i != 3) {
            return false;
        } else {
            double scale = getScale();
            parcel2.writeNoException();
            parcel2.writeDouble(scale);
            return true;
        }
    }
}
