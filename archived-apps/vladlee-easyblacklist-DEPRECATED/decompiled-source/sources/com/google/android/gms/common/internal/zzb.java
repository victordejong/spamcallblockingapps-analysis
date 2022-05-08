package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/zzb.class */
public final class zzb extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzb> CREATOR = new zzc();

    /* renamed from: a */
    Bundle f6847a;

    /* renamed from: b */
    Feature[] f6848b;

    public zzb() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzb(Bundle bundle, Feature[] featureArr) {
        this.f6847a = bundle;
        this.f6848b = featureArr;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeBundle(parcel, 1, this.f6847a, false);
        SafeParcelWriter.writeTypedArray(parcel, 2, this.f6848b, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
