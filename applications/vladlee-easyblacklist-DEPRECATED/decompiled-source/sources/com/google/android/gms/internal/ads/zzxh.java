package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzxh.class */
public final class zzxh extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzxh> CREATOR = new zzxk();

    /* renamed from: a */
    private final int f15608a;

    public zzxh(int i) {
        this.f15608a = i;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 2, this.f15608a);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
