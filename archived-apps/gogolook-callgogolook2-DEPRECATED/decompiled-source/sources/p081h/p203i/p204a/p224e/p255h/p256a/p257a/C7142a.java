package p081h.p203i.p204a.p224e.p255h.p256a.p257a;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.identity.intents.model.CountrySpecification;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
/* renamed from: h.i.a.e.h.a.a.a */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/h/a/a/a.class */
public final class C7142a implements Parcelable.Creator<CountrySpecification> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ CountrySpecification createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        String str = null;
        while (parcel.dataPosition() < b) {
            int a = C7029a.m21264a(parcel);
            if (C7029a.m21265a(a) != 2) {
                C7029a.m21266F(parcel, a);
            } else {
                str = C7029a.m21242o(parcel, a);
            }
        }
        C7029a.m21239r(parcel, b);
        return new CountrySpecification(str);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ CountrySpecification[] newArray(int i) {
        return new CountrySpecification[i];
    }
}
