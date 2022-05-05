package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.Collections;
import java.util.List;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzapz.class */
public final class zzapz extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzapz> CREATOR = new zzapy();
    public final boolean zzdln;
    public final List<String> zzdlo;

    public zzapz() {
        this(false, Collections.emptyList());
    }

    public zzapz(boolean z, List<String> list) {
        this.zzdln = z;
        this.zzdlo = list;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeBoolean(parcel, 2, this.zzdln);
        SafeParcelWriter.writeStringList(parcel, 3, this.zzdlo, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
