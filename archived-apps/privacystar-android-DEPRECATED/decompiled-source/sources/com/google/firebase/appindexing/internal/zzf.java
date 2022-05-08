package com.google.firebase.appindexing.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class(creator = "CallStatusCreator")
/* loaded from: classes-dex2jar.jar:com/google/firebase/appindexing/internal/zzf.class */
public final class zzf extends AbstractSafeParcelable {
    @SafeParcelable.Field(m344id = 1)
    public final int status;
    private static final zzf zzcj = new zzf(1);
    private static final zzf zzck = new zzf(2);
    private static final zzf zzcl = new zzf(3);
    public static final Parcelable.Creator<zzf> CREATOR = new zzg();

    @SafeParcelable.Constructor
    public zzf(@SafeParcelable.Param(m343id = 1) int i) {
        this.status = i;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.status);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
