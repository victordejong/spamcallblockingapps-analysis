package p081h.p203i.p204a.p224e.p282l.p284k;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.maps.model.StreetViewPanoramaLink;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
/* renamed from: h.i.a.e.l.k.s */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/l/k/s.class */
public final class C8924s implements Parcelable.Creator<StreetViewPanoramaLink> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ StreetViewPanoramaLink createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        String str = null;
        float f = 0.0f;
        while (parcel.dataPosition() < b) {
            int a = C7029a.m21264a(parcel);
            int a2 = C7029a.m21265a(a);
            if (a2 == 2) {
                str = C7029a.m21242o(parcel, a);
            } else if (a2 != 3) {
                C7029a.m21266F(parcel, a);
            } else {
                f = C7029a.m21234w(parcel, a);
            }
        }
        C7029a.m21239r(parcel, b);
        return new StreetViewPanoramaLink(str, f);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ StreetViewPanoramaLink[] newArray(int i) {
        return new StreetViewPanoramaLink[i];
    }
}
