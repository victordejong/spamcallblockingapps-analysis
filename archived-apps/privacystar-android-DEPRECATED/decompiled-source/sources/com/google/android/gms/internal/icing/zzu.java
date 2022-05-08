package com.google.android.gms.internal.icing;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzu.class */
public final class zzu implements Parcelable.Creator<zzs> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzs createFromParcel(Parcel parcel) {
        int validateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        String str = null;
        String str2 = null;
        String str3 = null;
        zzn[] zznVarArr = null;
        String str4 = null;
        zzv zzvVar = null;
        boolean z = false;
        int i = 1;
        boolean z2 = false;
        while (parcel.dataPosition() < validateObjectHeader) {
            int readHeader = SafeParcelReader.readHeader(parcel);
            switch (SafeParcelReader.getFieldId(readHeader)) {
                case 1:
                    str = SafeParcelReader.createString(parcel, readHeader);
                    break;
                case 2:
                    str2 = SafeParcelReader.createString(parcel, readHeader);
                    break;
                case 3:
                    z = SafeParcelReader.readBoolean(parcel, readHeader);
                    break;
                case 4:
                    i = SafeParcelReader.readInt(parcel, readHeader);
                    break;
                case 5:
                    z2 = SafeParcelReader.readBoolean(parcel, readHeader);
                    break;
                case 6:
                    str3 = SafeParcelReader.createString(parcel, readHeader);
                    break;
                case 7:
                    zznVarArr = (zzn[]) SafeParcelReader.createTypedArray(parcel, readHeader, zzn.CREATOR);
                    break;
                case 8:
                case 9:
                case 10:
                default:
                    SafeParcelReader.skipUnknownField(parcel, readHeader);
                    break;
                case 11:
                    str4 = SafeParcelReader.createString(parcel, readHeader);
                    break;
                case 12:
                    zzvVar = (zzv) SafeParcelReader.createParcelable(parcel, readHeader, zzv.CREATOR);
                    break;
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, validateObjectHeader);
        return new zzs(str, str2, z, i, z2, str3, zznVarArr, str4, zzvVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzs[] newArray(int i) {
        return new zzs[i];
    }
}
