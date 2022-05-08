package p081h.p203i.p204a.p224e.p235d.p245q.p247b;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.server.response.SafeParcelResponse;
import com.google.android.gms.common.server.response.zak;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
/* renamed from: h.i.a.e.d.q.b.e */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/q/b/e.class */
public final class C7062e implements Parcelable.Creator<SafeParcelResponse> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ SafeParcelResponse createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        Parcel parcel2 = null;
        int i = 0;
        zak zakVar = null;
        while (parcel.dataPosition() < b) {
            int a = C7029a.m21264a(parcel);
            int a2 = C7029a.m21265a(a);
            if (a2 == 1) {
                i = C7029a.m21231z(parcel, a);
            } else if (a2 == 2) {
                parcel2 = C7029a.m21244m(parcel, a);
            } else if (a2 != 3) {
                C7029a.m21266F(parcel, a);
            } else {
                zakVar = (zak) C7029a.m21260a(parcel, a, zak.CREATOR);
            }
        }
        C7029a.m21239r(parcel, b);
        return new SafeParcelResponse(i, parcel2, zakVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ SafeParcelResponse[] newArray(int i) {
        return new SafeParcelResponse[i];
    }
}
