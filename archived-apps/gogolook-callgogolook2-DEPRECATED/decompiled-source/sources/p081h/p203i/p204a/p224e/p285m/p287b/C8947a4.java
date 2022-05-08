package p081h.p203i.p204a.p224e.p285m.p287b;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.measurement.internal.zzfh;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
/* renamed from: h.i.a.e.m.b.a4 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/m/b/a4.class */
public final class C8947a4 implements Parcelable.Creator<zzfh> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzfh createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        String str = null;
        Long l = null;
        Float f = null;
        String str2 = null;
        String str3 = null;
        Double d = null;
        long j = 0;
        int i = 0;
        while (parcel.dataPosition() < b) {
            int a = C7029a.m21264a(parcel);
            switch (C7029a.m21265a(a)) {
                case 1:
                    i = C7029a.m21231z(parcel, a);
                    break;
                case 2:
                    str = C7029a.m21242o(parcel, a);
                    break;
                case 3:
                    j = C7029a.m21270B(parcel, a);
                    break;
                case 4:
                    l = C7029a.m21269C(parcel, a);
                    break;
                case 5:
                    f = C7029a.m21233x(parcel, a);
                    break;
                case 6:
                    str2 = C7029a.m21242o(parcel, a);
                    break;
                case 7:
                    str3 = C7029a.m21242o(parcel, a);
                    break;
                case 8:
                    d = C7029a.m21235v(parcel, a);
                    break;
                default:
                    C7029a.m21266F(parcel, a);
                    break;
            }
        }
        C7029a.m21239r(parcel, b);
        return new zzfh(i, str, j, l, f, str2, str3, d);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzfh[] newArray(int i) {
        return new zzfh[i];
    }
}
