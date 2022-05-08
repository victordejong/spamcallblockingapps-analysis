package p081h.p203i.p204a.p224e.p235d.p245q.p247b;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.server.response.zal;
import com.google.android.gms.common.server.response.zam;
import java.util.ArrayList;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
/* renamed from: h.i.a.e.d.q.b.d */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/q/b/d.class */
public final class C7061d implements Parcelable.Creator<zal> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zal createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        String str = null;
        int i = 0;
        ArrayList arrayList = null;
        while (parcel.dataPosition() < b) {
            int a = C7029a.m21264a(parcel);
            int a2 = C7029a.m21265a(a);
            if (a2 == 1) {
                i = C7029a.m21231z(parcel, a);
            } else if (a2 == 2) {
                str = C7029a.m21242o(parcel, a);
            } else if (a2 != 3) {
                C7029a.m21266F(parcel, a);
            } else {
                arrayList = C7029a.m21254c(parcel, a, zam.CREATOR);
            }
        }
        C7029a.m21239r(parcel, b);
        return new zal(i, str, arrayList);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zal[] newArray(int i) {
        return new zal[i];
    }
}
