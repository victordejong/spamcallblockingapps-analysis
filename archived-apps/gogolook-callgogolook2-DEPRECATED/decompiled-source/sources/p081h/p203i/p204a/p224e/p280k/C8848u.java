package p081h.p203i.p204a.p224e.p280k;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.location.zzal;
import java.util.ArrayList;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
/* renamed from: h.i.a.e.k.u */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/k/u.class */
public final class C8848u implements Parcelable.Creator<zzal> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzal createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        ArrayList<String> arrayList = null;
        String str = "";
        PendingIntent pendingIntent = null;
        while (parcel.dataPosition() < b) {
            int a = C7029a.m21264a(parcel);
            int a2 = C7029a.m21265a(a);
            if (a2 == 1) {
                arrayList = C7029a.m21240q(parcel, a);
            } else if (a2 == 2) {
                pendingIntent = (PendingIntent) C7029a.m21260a(parcel, a, PendingIntent.CREATOR);
            } else if (a2 != 3) {
                C7029a.m21266F(parcel, a);
            } else {
                str = C7029a.m21242o(parcel, a);
            }
        }
        C7029a.m21239r(parcel, b);
        return new zzal(arrayList, pendingIntent, str);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzal[] newArray(int i) {
        return new zzal[i];
    }
}
