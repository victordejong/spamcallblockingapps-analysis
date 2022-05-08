package p081h.p203i.p204a.p224e.p235d.p240n;

import android.accounts.Account;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.AuthAccountRequest;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
/* renamed from: h.i.a.e.d.n.z */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/n/z.class */
public final class C7049z implements Parcelable.Creator<AuthAccountRequest> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ AuthAccountRequest createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        IBinder iBinder = null;
        Scope[] scopeArr = null;
        Integer num = null;
        Integer num2 = null;
        Account account = null;
        int i = 0;
        while (parcel.dataPosition() < b) {
            int a = C7029a.m21264a(parcel);
            switch (C7029a.m21265a(a)) {
                case 1:
                    i = C7029a.m21231z(parcel, a);
                    break;
                case 2:
                    iBinder = C7029a.m21232y(parcel, a);
                    break;
                case 3:
                    scopeArr = (Scope[]) C7029a.m21256b(parcel, a, Scope.CREATOR);
                    break;
                case 4:
                    num = C7029a.m21271A(parcel, a);
                    break;
                case 5:
                    num2 = C7029a.m21271A(parcel, a);
                    break;
                case 6:
                    account = (Account) C7029a.m21260a(parcel, a, Account.CREATOR);
                    break;
                default:
                    C7029a.m21266F(parcel, a);
                    break;
            }
        }
        C7029a.m21239r(parcel, b);
        return new AuthAccountRequest(i, iBinder, scopeArr, num, num2, account);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ AuthAccountRequest[] newArray(int i) {
        return new AuthAccountRequest[i];
    }
}
