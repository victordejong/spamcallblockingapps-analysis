package com.google.firebase.appindexing.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.firebase.appindexing.internal.Thing;
/* loaded from: classes-dex2jar.jar:com/google/firebase/appindexing/internal/zzw.class */
public final class zzw implements Parcelable.Creator<Thing.zza> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Thing.zza createFromParcel(Parcel parcel) {
        int J = SafeParcelReader.m14492J(parcel);
        String str = null;
        Bundle bundle = null;
        boolean z = false;
        int i = 0;
        while (parcel.dataPosition() < J) {
            int B = SafeParcelReader.m14500B(parcel);
            int u = SafeParcelReader.m14469u(B);
            if (u == 1) {
                z = SafeParcelReader.m14468v(parcel, B);
            } else if (u == 2) {
                i = SafeParcelReader.m14498D(parcel, B);
            } else if (u == 3) {
                str = SafeParcelReader.m14475o(parcel, B);
            } else if (u != 4) {
                SafeParcelReader.m14493I(parcel, B);
            } else {
                bundle = SafeParcelReader.m14484f(parcel, B);
            }
        }
        SafeParcelReader.m14470t(parcel, J);
        return new Thing.zza(z, i, str, bundle);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Thing.zza[] newArray(int i) {
        return new Thing.zza[i];
    }
}
