package p081h.p203i.p204a.p224e.p280k;

import android.location.Location;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.location.LocationResult;
import java.util.List;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
/* renamed from: h.i.a.e.k.n */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/k/n.class */
public final class C8840n implements Parcelable.Creator<LocationResult> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ LocationResult createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        List<Location> list = LocationResult.f6943b;
        while (parcel.dataPosition() < b) {
            int a = C7029a.m21264a(parcel);
            if (C7029a.m21265a(a) != 1) {
                C7029a.m21266F(parcel, a);
            } else {
                list = C7029a.m21254c(parcel, a, Location.CREATOR);
            }
        }
        C7029a.m21239r(parcel, b);
        return new LocationResult(list);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ LocationResult[] newArray(int i) {
        return new LocationResult[i];
    }
}
