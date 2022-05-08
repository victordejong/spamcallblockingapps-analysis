package p081h.p203i.p204a.p224e.p259j.p276q;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.measurement.zztd;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
/* renamed from: h.i.a.e.j.q.x1 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/x1.class */
public final class C8771x1 implements Parcelable.Creator<zztd> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zztd createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        String str = null;
        String str2 = null;
        Bundle bundle = null;
        Uri uri = null;
        long j = 0;
        int i = 0;
        while (parcel.dataPosition() < b) {
            int a = C7029a.m21264a(parcel);
            switch (C7029a.m21265a(a)) {
                case 1:
                    str = C7029a.m21242o(parcel, a);
                    break;
                case 2:
                    str2 = C7029a.m21242o(parcel, a);
                    break;
                case 3:
                    i = C7029a.m21231z(parcel, a);
                    break;
                case 4:
                    j = C7029a.m21270B(parcel, a);
                    break;
                case 5:
                    bundle = C7029a.m21251f(parcel, a);
                    break;
                case 6:
                    uri = (Uri) C7029a.m21260a(parcel, a, Uri.CREATOR);
                    break;
                default:
                    C7029a.m21266F(parcel, a);
                    break;
            }
        }
        C7029a.m21239r(parcel, b);
        return new zztd(str, str2, i, j, bundle, uri);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zztd[] newArray(int i) {
        return new zztd[i];
    }
}
