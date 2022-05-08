package p081h.p203i.p204a.p224e.p235d.p245q.p247b;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.server.response.FastJsonResponse;
import com.google.android.gms.common.server.response.zam;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
/* renamed from: h.i.a.e.d.q.b.b */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/q/b/b.class */
public final class C7059b implements Parcelable.Creator<zam> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zam createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        String str = null;
        int i = 0;
        FastJsonResponse.Field field = null;
        while (parcel.dataPosition() < b) {
            int a = C7029a.m21264a(parcel);
            int a2 = C7029a.m21265a(a);
            if (a2 == 1) {
                i = C7029a.m21231z(parcel, a);
            } else if (a2 == 2) {
                str = C7029a.m21242o(parcel, a);
            } else if (a2 != 3) {
                C7029a.m21266F(parcel, a);
            } else {
                field = (FastJsonResponse.Field) C7029a.m21260a(parcel, a, FastJsonResponse.Field.CREATOR);
            }
        }
        C7029a.m21239r(parcel, b);
        return new zam(i, str, field);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zam[] newArray(int i) {
        return new zam[i];
    }
}
