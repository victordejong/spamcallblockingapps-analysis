package p081h.p203i.p204a.p224e.p282l.p284k;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
/* renamed from: h.i.a.e.l.k.j */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/l/k/j.class */
public final class C8915j implements Parcelable.Creator<LatLngBounds> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ LatLngBounds createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        LatLng latLng = null;
        LatLng latLng2 = null;
        while (parcel.dataPosition() < b) {
            int a = C7029a.m21264a(parcel);
            int a2 = C7029a.m21265a(a);
            if (a2 == 2) {
                latLng = (LatLng) C7029a.m21260a(parcel, a, LatLng.CREATOR);
            } else if (a2 != 3) {
                C7029a.m21266F(parcel, a);
            } else {
                latLng2 = (LatLng) C7029a.m21260a(parcel, a, LatLng.CREATOR);
            }
        }
        C7029a.m21239r(parcel, b);
        return new LatLngBounds(latLng, latLng2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ LatLngBounds[] newArray(int i) {
        return new LatLngBounds[i];
    }
}
