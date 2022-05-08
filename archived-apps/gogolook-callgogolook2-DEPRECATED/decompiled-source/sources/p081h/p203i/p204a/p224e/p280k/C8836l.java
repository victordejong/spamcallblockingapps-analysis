package p081h.p203i.p204a.p224e.p280k;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.location.LocationAvailability;
import com.google.android.gms.location.zzaj;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
/* renamed from: h.i.a.e.k.l */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/k/l.class */
public final class C8836l implements Parcelable.Creator<LocationAvailability> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ LocationAvailability createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        long j = 0;
        zzaj[] zzajVarArr = null;
        int i = 1000;
        int i2 = 1;
        int i3 = 1;
        while (parcel.dataPosition() < b) {
            int a = C7029a.m21264a(parcel);
            int a2 = C7029a.m21265a(a);
            if (a2 == 1) {
                i2 = C7029a.m21231z(parcel, a);
            } else if (a2 == 2) {
                i3 = C7029a.m21231z(parcel, a);
            } else if (a2 == 3) {
                j = C7029a.m21270B(parcel, a);
            } else if (a2 == 4) {
                i = C7029a.m21231z(parcel, a);
            } else if (a2 != 5) {
                C7029a.m21266F(parcel, a);
            } else {
                zzajVarArr = (zzaj[]) C7029a.m21256b(parcel, a, zzaj.CREATOR);
            }
        }
        C7029a.m21239r(parcel, b);
        return new LocationAvailability(i, i2, i3, j, zzajVarArr);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ LocationAvailability[] newArray(int i) {
        return new LocationAvailability[i];
    }
}
