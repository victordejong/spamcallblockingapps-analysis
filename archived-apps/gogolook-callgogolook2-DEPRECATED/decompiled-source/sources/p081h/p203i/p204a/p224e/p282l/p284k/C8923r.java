package p081h.p203i.p204a.p224e.p282l.p284k;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.maps.model.StreetViewPanoramaCamera;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
/* renamed from: h.i.a.e.l.k.r */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/l/k/r.class */
public final class C8923r implements Parcelable.Creator<StreetViewPanoramaCamera> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ StreetViewPanoramaCamera createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        float f = 0.0f;
        float f2 = 0.0f;
        float f3 = 0.0f;
        while (parcel.dataPosition() < b) {
            int a = C7029a.m21264a(parcel);
            int a2 = C7029a.m21265a(a);
            if (a2 == 2) {
                f = C7029a.m21234w(parcel, a);
            } else if (a2 == 3) {
                f2 = C7029a.m21234w(parcel, a);
            } else if (a2 != 4) {
                C7029a.m21266F(parcel, a);
            } else {
                f3 = C7029a.m21234w(parcel, a);
            }
        }
        C7029a.m21239r(parcel, b);
        return new StreetViewPanoramaCamera(f, f2, f3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ StreetViewPanoramaCamera[] newArray(int i) {
        return new StreetViewPanoramaCamera[i];
    }
}
