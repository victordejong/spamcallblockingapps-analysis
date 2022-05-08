package p081h.p203i.p204a.p224e.p235d;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.Feature;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
/* renamed from: h.i.a.e.d.v */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/v.class */
public final class C7099v implements Parcelable.Creator<Feature> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Feature createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        String str = null;
        int i = 0;
        long j = -1;
        while (parcel.dataPosition() < b) {
            int a = C7029a.m21264a(parcel);
            int a2 = C7029a.m21265a(a);
            if (a2 == 1) {
                str = C7029a.m21242o(parcel, a);
            } else if (a2 == 2) {
                i = C7029a.m21231z(parcel, a);
            } else if (a2 != 3) {
                C7029a.m21266F(parcel, a);
            } else {
                j = C7029a.m21270B(parcel, a);
            }
        }
        C7029a.m21239r(parcel, b);
        return new Feature(str, i, j);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Feature[] newArray(int i) {
        return new Feature[i];
    }
}
