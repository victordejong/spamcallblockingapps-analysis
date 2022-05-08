package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzagc.class */
public final class zzagc implements Parcelable.Creator<zzafz> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzafz createFromParcel(Parcel parcel) {
        int validateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        String str = null;
        String[] strArr = null;
        String[] strArr2 = null;
        while (parcel.dataPosition() < validateObjectHeader) {
            int readHeader = SafeParcelReader.readHeader(parcel);
            int fieldId = SafeParcelReader.getFieldId(readHeader);
            if (fieldId == 1) {
                str = SafeParcelReader.createString(parcel, readHeader);
            } else if (fieldId == 2) {
                strArr = SafeParcelReader.createStringArray(parcel, readHeader);
            } else if (fieldId != 3) {
                SafeParcelReader.skipUnknownField(parcel, readHeader);
            } else {
                strArr2 = SafeParcelReader.createStringArray(parcel, readHeader);
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, validateObjectHeader);
        return new zzafz(str, strArr, strArr2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzafz[] newArray(int i) {
        return new zzafz[i];
    }
}
