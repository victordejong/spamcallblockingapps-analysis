package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzyq.class */
public final class zzyq extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzyq> CREATOR = new zzyp();

    /* renamed from: a */
    private final int f15691a;

    /* renamed from: b */
    private final int f15692b;

    public zzyq(int i, int i2) {
        this.f15691a = i;
        this.f15692b = i2;
    }

    public zzyq(RequestConfiguration requestConfiguration) {
        this.f15691a = requestConfiguration.getTagForChildDirectedTreatment();
        this.f15692b = requestConfiguration.getTagForUnderAgeOfConsent();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f15691a);
        SafeParcelWriter.writeInt(parcel, 2, this.f15692b);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
