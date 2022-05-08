package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaqm.class */
public final class zzaqm extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaqm> CREATOR = new zzaqp();

    /* renamed from: a */
    String f11260a;

    public zzaqm(String str) {
        this.f11260a = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, this.f11260a, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
