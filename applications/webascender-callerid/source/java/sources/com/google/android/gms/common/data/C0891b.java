package com.google.android.gms.common.data;

import android.database.CursorWindow;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.common.data.b */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/data/b.class */
public final class C0891b implements Parcelable.Creator<DataHolder> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ DataHolder createFromParcel(Parcel parcel) {
        int m3276y = SafeParcelReader.m3276y(parcel);
        String[] strArr = null;
        CursorWindow[] cursorWindowArr = null;
        Bundle bundle = null;
        int i = 0;
        int i2 = 0;
        while (parcel.dataPosition() < m3276y) {
            int m3283r = SafeParcelReader.m3283r(parcel);
            int m3291j = SafeParcelReader.m3291j(m3283r);
            if (m3291j == 1) {
                strArr = SafeParcelReader.m3296e(parcel, m3283r);
            } else if (m3291j == 2) {
                cursorWindowArr = (CursorWindow[]) SafeParcelReader.m3294g(parcel, m3283r, CursorWindow.CREATOR);
            } else if (m3291j == 3) {
                i2 = SafeParcelReader.m3281t(parcel, m3283r);
            } else if (m3291j == 4) {
                bundle = SafeParcelReader.m3300a(parcel, m3283r);
            } else if (m3291j != 1000) {
                SafeParcelReader.m3277x(parcel, m3283r);
            } else {
                i = SafeParcelReader.m3281t(parcel, m3283r);
            }
        }
        SafeParcelReader.m3292i(parcel, m3276y);
        DataHolder dataHolder = new DataHolder(i, strArr, cursorWindowArr, i2, bundle);
        dataHolder.B1();
        return dataHolder;
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ DataHolder[] newArray(int i) {
        return new DataHolder[i];
    }
}
