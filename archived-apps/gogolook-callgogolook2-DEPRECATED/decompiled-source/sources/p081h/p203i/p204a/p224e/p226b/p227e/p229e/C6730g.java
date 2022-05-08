package p081h.p203i.p204a.p224e.p226b.p227e.p229e;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.credentials.IdToken;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
/* renamed from: h.i.a.e.b.e.e.g */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/b/e/e/g.class */
public final class C6730g implements Parcelable.Creator<IdToken> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ IdToken createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        String str = null;
        String str2 = null;
        while (parcel.dataPosition() < b) {
            int a = C7029a.m21264a(parcel);
            int a2 = C7029a.m21265a(a);
            if (a2 == 1) {
                str = C7029a.m21242o(parcel, a);
            } else if (a2 != 2) {
                C7029a.m21266F(parcel, a);
            } else {
                str2 = C7029a.m21242o(parcel, a);
            }
        }
        C7029a.m21239r(parcel, b);
        return new IdToken(str, str2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ IdToken[] newArray(int i) {
        return new IdToken[i];
    }
}
