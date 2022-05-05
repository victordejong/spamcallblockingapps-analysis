package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzarx.class */
public final class zzarx implements Parcelable.Creator<zzaru> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaru createFromParcel(Parcel parcel) {
        int validateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        zzug zzugVar = null;
        String str = null;
        while (parcel.dataPosition() < validateObjectHeader) {
            int readHeader = SafeParcelReader.readHeader(parcel);
            int fieldId = SafeParcelReader.getFieldId(readHeader);
            if (fieldId == 2) {
                zzugVar = (zzug) SafeParcelReader.createParcelable(parcel, readHeader, zzug.CREATOR);
            } else if (fieldId != 3) {
                SafeParcelReader.skipUnknownField(parcel, readHeader);
            } else {
                str = SafeParcelReader.createString(parcel, readHeader);
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, validateObjectHeader);
        return new zzaru(zzugVar, str);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaru[] newArray(int i) {
        return new zzaru[i];
    }
}
