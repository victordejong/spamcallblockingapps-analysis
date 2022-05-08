package p081h.p203i.p204a.p224e.p290p.p291b;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.signin.internal.zaa;
import com.google.android.gms.signin.internal.zaj;
import p081h.p203i.p204a.p224e.p259j.p265f.BinderC7530b;
import p081h.p203i.p204a.p224e.p259j.p265f.C7531c;
/* renamed from: h.i.a.e.p.b.e */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/p/b/e.class */
public abstract class AbstractBinderC9115e extends BinderC7530b implements AbstractC9114d {
    public AbstractBinderC9115e() {
        super("com.google.android.gms.signin.internal.ISignInCallbacks");
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p265f.BinderC7530b
    /* renamed from: a */
    public boolean mo16062a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 3) {
            mo16067a((ConnectionResult) C7531c.m20389a(parcel, ConnectionResult.CREATOR), (zaa) C7531c.m20389a(parcel, zaa.CREATOR));
        } else if (i == 4) {
            mo16064b((Status) C7531c.m20389a(parcel, Status.CREATOR));
        } else if (i == 6) {
            mo16063c((Status) C7531c.m20389a(parcel, Status.CREATOR));
        } else if (i == 7) {
            mo16066a((Status) C7531c.m20389a(parcel, Status.CREATOR), (GoogleSignInAccount) C7531c.m20389a(parcel, GoogleSignInAccount.CREATOR));
        } else if (i != 8) {
            return false;
        } else {
            mo16065a((zaj) C7531c.m20389a(parcel, zaj.CREATOR));
        }
        parcel2.writeNoException();
        return true;
    }
}
