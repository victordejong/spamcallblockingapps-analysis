package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.server.response.FastJsonResponse;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/response/zak.class */
public final class zak implements Parcelable.Creator<zal> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zal createFromParcel(Parcel parcel) {
        int J = SafeParcelReader.m14492J(parcel);
        String str = null;
        FastJsonResponse.Field field = null;
        int i = 0;
        while (parcel.dataPosition() < J) {
            int B = SafeParcelReader.m14500B(parcel);
            int u = SafeParcelReader.m14469u(B);
            if (u == 1) {
                i = SafeParcelReader.m14498D(parcel, B);
            } else if (u == 2) {
                str = SafeParcelReader.m14475o(parcel, B);
            } else if (u != 3) {
                SafeParcelReader.m14493I(parcel, B);
            } else {
                field = (FastJsonResponse.Field) SafeParcelReader.m14476n(parcel, B, FastJsonResponse.Field.CREATOR);
            }
        }
        SafeParcelReader.m14470t(parcel, J);
        return new zal(i, str, field);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zal[] newArray(int i) {
        return new zal[i];
    }
}
