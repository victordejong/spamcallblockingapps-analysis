package com.google.android.gms.common.data;

import android.database.CursorWindow;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/data/zac.class */
public final class zac implements Parcelable.Creator<DataHolder> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ DataHolder createFromParcel(Parcel parcel) {
        int J = SafeParcelReader.m14492J(parcel);
        String[] strArr = null;
        CursorWindow[] cursorWindowArr = null;
        Bundle bundle = null;
        int i = 0;
        int i2 = 0;
        while (parcel.dataPosition() < J) {
            int B = SafeParcelReader.m14500B(parcel);
            int u = SafeParcelReader.m14469u(B);
            if (u == 1) {
                strArr = SafeParcelReader.m14474p(parcel, B);
            } else if (u == 2) {
                cursorWindowArr = (CursorWindow[]) SafeParcelReader.m14472r(parcel, B, CursorWindow.CREATOR);
            } else if (u == 3) {
                i2 = SafeParcelReader.m14498D(parcel, B);
            } else if (u == 4) {
                bundle = SafeParcelReader.m14484f(parcel, B);
            } else if (u != 1000) {
                SafeParcelReader.m14493I(parcel, B);
            } else {
                i = SafeParcelReader.m14498D(parcel, B);
            }
        }
        SafeParcelReader.m14470t(parcel, J);
        DataHolder dataHolder = new DataHolder(i, strArr, cursorWindowArr, i2, bundle);
        dataHolder.m14629u0();
        return dataHolder;
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ DataHolder[] newArray(int i) {
        return new DataHolder[i];
    }
}
