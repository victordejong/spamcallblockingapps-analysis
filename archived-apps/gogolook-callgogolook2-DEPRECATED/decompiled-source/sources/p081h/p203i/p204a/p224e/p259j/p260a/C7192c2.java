package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.ads.zzaop;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
/* renamed from: h.i.a.e.j.a.c2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/c2.class */
public final class C7192c2 implements Parcelable.Creator<zzaop> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaop createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        String str = null;
        int i = 0;
        int i2 = 0;
        boolean z = false;
        boolean z2 = false;
        while (parcel.dataPosition() < b) {
            int a = C7029a.m21264a(parcel);
            int a2 = C7029a.m21265a(a);
            if (a2 == 2) {
                str = C7029a.m21242o(parcel, a);
            } else if (a2 == 3) {
                i = C7029a.m21231z(parcel, a);
            } else if (a2 == 4) {
                i2 = C7029a.m21231z(parcel, a);
            } else if (a2 == 5) {
                z = C7029a.m21238s(parcel, a);
            } else if (a2 != 6) {
                C7029a.m21266F(parcel, a);
            } else {
                z2 = C7029a.m21238s(parcel, a);
            }
        }
        C7029a.m21239r(parcel, b);
        return new zzaop(str, i, i2, z, z2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaop[] newArray(int i) {
        return new zzaop[i];
    }
}
