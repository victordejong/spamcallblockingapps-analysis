package p081h.p203i.p204a.p224e.p226b.p227e.p228d;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.accounttransfer.zzo;
import java.util.ArrayList;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
/* renamed from: h.i.a.e.b.e.d.b */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/b/e/d/b.class */
public final class C6720b implements Parcelable.Creator<zzo> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzo createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        ArrayList<String> arrayList = null;
        ArrayList<String> arrayList2 = null;
        ArrayList<String> arrayList3 = null;
        ArrayList<String> arrayList4 = null;
        ArrayList<String> arrayList5 = null;
        int i = 0;
        while (parcel.dataPosition() < b) {
            int a = C7029a.m21264a(parcel);
            switch (C7029a.m21265a(a)) {
                case 1:
                    i = C7029a.m21231z(parcel, a);
                    break;
                case 2:
                    arrayList = C7029a.m21240q(parcel, a);
                    break;
                case 3:
                    arrayList2 = C7029a.m21240q(parcel, a);
                    break;
                case 4:
                    arrayList3 = C7029a.m21240q(parcel, a);
                    break;
                case 5:
                    arrayList4 = C7029a.m21240q(parcel, a);
                    break;
                case 6:
                    arrayList5 = C7029a.m21240q(parcel, a);
                    break;
                default:
                    C7029a.m21266F(parcel, a);
                    break;
            }
        }
        C7029a.m21239r(parcel, b);
        return new zzo(i, arrayList, arrayList2, arrayList3, arrayList4, arrayList5);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzo[] newArray(int i) {
        return new zzo[i];
    }
}
