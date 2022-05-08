package p081h.p203i.p204a.p224e.p280k;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.location.zzae;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
/* renamed from: h.i.a.e.k.p */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/k/p.class */
public final class C8843p implements Parcelable.Creator<zzae> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzae createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        String str = "";
        String str2 = "";
        String str3 = str2;
        while (parcel.dataPosition() < b) {
            int a = C7029a.m21264a(parcel);
            int a2 = C7029a.m21265a(a);
            if (a2 == 1) {
                str2 = C7029a.m21242o(parcel, a);
            } else if (a2 == 2) {
                str3 = C7029a.m21242o(parcel, a);
            } else if (a2 != 5) {
                C7029a.m21266F(parcel, a);
            } else {
                str = C7029a.m21242o(parcel, a);
            }
        }
        C7029a.m21239r(parcel, b);
        return new zzae(str, str2, str3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzae[] newArray(int i) {
        return new zzae[i];
    }
}
