package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.VideoOptions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzyw.class */
public final class zzyw extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzyw> CREATOR = new zzyv();
    public final boolean zzabv;
    public final boolean zzabw;
    public final boolean zzabx;

    public zzyw(VideoOptions videoOptions) {
        this(videoOptions.getStartMuted(), videoOptions.getCustomControlsRequested(), videoOptions.getClickToExpandRequested());
    }

    public zzyw(boolean z, boolean z2, boolean z3) {
        this.zzabv = z;
        this.zzabw = z2;
        this.zzabx = z3;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeBoolean(parcel, 2, this.zzabv);
        SafeParcelWriter.writeBoolean(parcel, 3, this.zzabw);
        SafeParcelWriter.writeBoolean(parcel, 4, this.zzabx);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
