package com.google.android.gms.internal.icing;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzq.class */
public final class zzq implements Parcelable.Creator<zzp> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzp createFromParcel(Parcel parcel) {
        int validateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        Status status = null;
        ArrayList arrayList = null;
        String[] strArr = null;
        while (parcel.dataPosition() < validateObjectHeader) {
            int readHeader = SafeParcelReader.readHeader(parcel);
            switch (SafeParcelReader.getFieldId(readHeader)) {
                case 1:
                    status = (Status) SafeParcelReader.createParcelable(parcel, readHeader, Status.CREATOR);
                    break;
                case 2:
                    arrayList = SafeParcelReader.createTypedList(parcel, readHeader, zzx.CREATOR);
                    break;
                case 3:
                    strArr = SafeParcelReader.createStringArray(parcel, readHeader);
                    break;
                default:
                    SafeParcelReader.skipUnknownField(parcel, readHeader);
                    break;
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, validateObjectHeader);
        return new zzp(status, arrayList, strArr);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzp[] newArray(int i) {
        return new zzp[i];
    }
}
