package p081h.p203i.p204a.p224e.p235d.p238l;

import android.database.CursorWindow;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.data.DataHolder;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
/* renamed from: h.i.a.e.d.l.c */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/l/c.class */
public final class C6959c implements Parcelable.Creator<DataHolder> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ DataHolder createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        String[] strArr = null;
        CursorWindow[] cursorWindowArr = null;
        Bundle bundle = null;
        int i = 0;
        int i2 = 0;
        while (parcel.dataPosition() < b) {
            int a = C7029a.m21264a(parcel);
            int a2 = C7029a.m21265a(a);
            if (a2 == 1) {
                strArr = C7029a.m21241p(parcel, a);
            } else if (a2 == 2) {
                cursorWindowArr = (CursorWindow[]) C7029a.m21256b(parcel, a, CursorWindow.CREATOR);
            } else if (a2 == 3) {
                i2 = C7029a.m21231z(parcel, a);
            } else if (a2 == 4) {
                bundle = C7029a.m21251f(parcel, a);
            } else if (a2 != 1000) {
                C7029a.m21266F(parcel, a);
            } else {
                i = C7029a.m21231z(parcel, a);
            }
        }
        C7029a.m21239r(parcel, b);
        DataHolder dataHolder = new DataHolder(i, strArr, cursorWindowArr, i2, bundle);
        dataHolder.m31963I();
        return dataHolder;
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ DataHolder[] newArray(int i) {
        return new DataHolder[i];
    }
}
