package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.search.SearchAdRequest;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzys.class */
public final class zzys extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzys> CREATOR = new zzyr();
    public final String zzblv;

    public zzys(SearchAdRequest searchAdRequest) {
        this.zzblv = searchAdRequest.getQuery();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzys(String str) {
        this.zzblv = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 15, this.zzblv, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
