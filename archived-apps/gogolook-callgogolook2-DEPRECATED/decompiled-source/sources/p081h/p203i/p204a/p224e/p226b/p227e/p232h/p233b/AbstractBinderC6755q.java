package p081h.p203i.p204a.p224e.p226b.p227e.p232h.p233b;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.api.Status;
import p081h.p203i.p204a.p224e.p259j.p263d.BinderC7505b;
import p081h.p203i.p204a.p224e.p259j.p263d.C7506c;
/* renamed from: h.i.a.e.b.e.h.b.q */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/b/e/h/b/q.class */
public abstract class AbstractBinderC6755q extends BinderC7505b implements AbstractC6754p {
    public AbstractBinderC6755q() {
        super("com.google.android.gms.auth.api.signin.internal.ISignInCallbacks");
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p263d.BinderC7505b
    /* renamed from: a */
    public final boolean mo20407a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 101:
                mo21950a((GoogleSignInAccount) C7506c.m20405a(parcel, GoogleSignInAccount.CREATOR), (Status) C7506c.m20405a(parcel, Status.CREATOR));
                throw null;
            case 102:
                mo21949f((Status) C7506c.m20405a(parcel, Status.CREATOR));
                throw null;
            case 103:
                mo21948g((Status) C7506c.m20405a(parcel, Status.CREATOR));
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
