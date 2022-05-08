package p081h.p203i.p204a.p224e.p282l.p284k;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;
import com.google.android.gms.maps.model.VisibleRegion;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
/* renamed from: h.i.a.e.l.k.z */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/l/k/z.class */
public final class C8931z implements Parcelable.Creator<VisibleRegion> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ VisibleRegion createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        LatLng latLng = null;
        LatLng latLng2 = null;
        LatLng latLng3 = null;
        LatLng latLng4 = null;
        LatLngBounds latLngBounds = null;
        while (parcel.dataPosition() < b) {
            int a = C7029a.m21264a(parcel);
            int a2 = C7029a.m21265a(a);
            if (a2 == 2) {
                latLng = (LatLng) C7029a.m21260a(parcel, a, LatLng.CREATOR);
            } else if (a2 == 3) {
                latLng2 = (LatLng) C7029a.m21260a(parcel, a, LatLng.CREATOR);
            } else if (a2 == 4) {
                latLng3 = (LatLng) C7029a.m21260a(parcel, a, LatLng.CREATOR);
            } else if (a2 == 5) {
                latLng4 = (LatLng) C7029a.m21260a(parcel, a, LatLng.CREATOR);
            } else if (a2 != 6) {
                C7029a.m21266F(parcel, a);
            } else {
                latLngBounds = (LatLngBounds) C7029a.m21260a(parcel, a, LatLngBounds.CREATOR);
            }
        }
        C7029a.m21239r(parcel, b);
        return new VisibleRegion(latLng, latLng2, latLng3, latLng4, latLngBounds);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ VisibleRegion[] newArray(int i) {
        return new VisibleRegion[i];
    }
}
