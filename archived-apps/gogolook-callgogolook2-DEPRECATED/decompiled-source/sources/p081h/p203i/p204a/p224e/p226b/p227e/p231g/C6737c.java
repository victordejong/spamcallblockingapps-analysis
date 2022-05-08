package p081h.p203i.p204a.p224e.p226b.p227e.p231g;

import android.app.PendingIntent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.proxy.ProxyResponse;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
/* renamed from: h.i.a.e.b.e.g.c */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/b/e/g/c.class */
public final class C6737c implements Parcelable.Creator<ProxyResponse> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ProxyResponse createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        PendingIntent pendingIntent = null;
        Bundle bundle = null;
        byte[] bArr = null;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (parcel.dataPosition() < b) {
            int a = C7029a.m21264a(parcel);
            int a2 = C7029a.m21265a(a);
            if (a2 == 1) {
                i2 = C7029a.m21231z(parcel, a);
            } else if (a2 == 2) {
                pendingIntent = (PendingIntent) C7029a.m21260a(parcel, a, PendingIntent.CREATOR);
            } else if (a2 == 3) {
                i3 = C7029a.m21231z(parcel, a);
            } else if (a2 == 4) {
                bundle = C7029a.m21251f(parcel, a);
            } else if (a2 == 5) {
                bArr = C7029a.m21250g(parcel, a);
            } else if (a2 != 1000) {
                C7029a.m21266F(parcel, a);
            } else {
                i = C7029a.m21231z(parcel, a);
            }
        }
        C7029a.m21239r(parcel, b);
        return new ProxyResponse(i, i2, pendingIntent, i3, bundle, bArr);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ProxyResponse[] newArray(int i) {
        return new ProxyResponse[i];
    }
}
