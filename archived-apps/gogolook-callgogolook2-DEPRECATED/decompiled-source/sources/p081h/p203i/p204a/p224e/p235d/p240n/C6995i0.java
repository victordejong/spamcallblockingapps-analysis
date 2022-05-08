package p081h.p203i.p204a.p224e.p235d.p240n;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.ResolveAccountResponse;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
/* renamed from: h.i.a.e.d.n.i0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/n/i0.class */
public final class C6995i0 implements Parcelable.Creator<ResolveAccountResponse> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ResolveAccountResponse createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        IBinder iBinder = null;
        ConnectionResult connectionResult = null;
        int i = 0;
        boolean z = false;
        boolean z2 = false;
        while (parcel.dataPosition() < b) {
            int a = C7029a.m21264a(parcel);
            int a2 = C7029a.m21265a(a);
            if (a2 == 1) {
                i = C7029a.m21231z(parcel, a);
            } else if (a2 == 2) {
                iBinder = C7029a.m21232y(parcel, a);
            } else if (a2 == 3) {
                connectionResult = (ConnectionResult) C7029a.m21260a(parcel, a, ConnectionResult.CREATOR);
            } else if (a2 == 4) {
                z = C7029a.m21238s(parcel, a);
            } else if (a2 != 5) {
                C7029a.m21266F(parcel, a);
            } else {
                z2 = C7029a.m21238s(parcel, a);
            }
        }
        C7029a.m21239r(parcel, b);
        return new ResolveAccountResponse(i, iBinder, connectionResult, z, z2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ResolveAccountResponse[] newArray(int i) {
        return new ResolveAccountResponse[i];
    }
}
