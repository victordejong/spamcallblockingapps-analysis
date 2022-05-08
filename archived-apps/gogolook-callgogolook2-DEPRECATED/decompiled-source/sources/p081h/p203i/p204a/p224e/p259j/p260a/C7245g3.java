package p081h.p203i.p204a.p224e.p259j.p260a;

import android.location.Location;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.ads.zzje;
import com.google.android.gms.internal.ads.zzjk;
import com.google.android.gms.internal.ads.zznb;
import java.util.ArrayList;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
/* renamed from: h.i.a.e.j.a.g3 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/g3.class */
public final class C7245g3 implements Parcelable.Creator<zzjk> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzjk createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        Bundle bundle = null;
        ArrayList<String> arrayList = null;
        String str = null;
        zznb zznbVar = null;
        Location location = null;
        String str2 = null;
        Bundle bundle2 = null;
        Bundle bundle3 = null;
        ArrayList<String> arrayList2 = null;
        String str3 = null;
        String str4 = null;
        zzje zzjeVar = null;
        String str5 = null;
        long j = 0;
        int i = 0;
        int i2 = 0;
        boolean z = false;
        int i3 = 0;
        boolean z2 = false;
        boolean z3 = false;
        int i4 = 0;
        while (parcel.dataPosition() < b) {
            int a = C7029a.m21264a(parcel);
            switch (C7029a.m21265a(a)) {
                case 1:
                    i = C7029a.m21231z(parcel, a);
                    break;
                case 2:
                    j = C7029a.m21270B(parcel, a);
                    break;
                case 3:
                    bundle = C7029a.m21251f(parcel, a);
                    break;
                case 4:
                    i2 = C7029a.m21231z(parcel, a);
                    break;
                case 5:
                    arrayList = C7029a.m21240q(parcel, a);
                    break;
                case 6:
                    z = C7029a.m21238s(parcel, a);
                    break;
                case 7:
                    i3 = C7029a.m21231z(parcel, a);
                    break;
                case 8:
                    z2 = C7029a.m21238s(parcel, a);
                    break;
                case 9:
                    str = C7029a.m21242o(parcel, a);
                    break;
                case 10:
                    zznbVar = (zznb) C7029a.m21260a(parcel, a, zznb.CREATOR);
                    break;
                case 11:
                    location = (Location) C7029a.m21260a(parcel, a, Location.CREATOR);
                    break;
                case 12:
                    str2 = C7029a.m21242o(parcel, a);
                    break;
                case 13:
                    bundle2 = C7029a.m21251f(parcel, a);
                    break;
                case 14:
                    bundle3 = C7029a.m21251f(parcel, a);
                    break;
                case 15:
                    arrayList2 = C7029a.m21240q(parcel, a);
                    break;
                case 16:
                    str3 = C7029a.m21242o(parcel, a);
                    break;
                case 17:
                    str4 = C7029a.m21242o(parcel, a);
                    break;
                case 18:
                    z3 = C7029a.m21238s(parcel, a);
                    break;
                case 19:
                    zzjeVar = (zzje) C7029a.m21260a(parcel, a, zzje.CREATOR);
                    break;
                case 20:
                    i4 = C7029a.m21231z(parcel, a);
                    break;
                case 21:
                    str5 = C7029a.m21242o(parcel, a);
                    break;
                default:
                    C7029a.m21266F(parcel, a);
                    break;
            }
        }
        C7029a.m21239r(parcel, b);
        return new zzjk(i, j, bundle, i2, arrayList, z, i3, z2, str, zznbVar, location, str2, bundle2, bundle3, arrayList2, str3, str4, z3, zzjeVar, i4, str5);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzjk[] newArray(int i) {
        return new zzjk[i];
    }
}
