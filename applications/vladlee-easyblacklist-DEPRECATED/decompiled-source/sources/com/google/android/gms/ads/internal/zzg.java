package com.google.android.gms.ads.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/zzg.class */
public final class zzg extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzg> CREATOR = new zzj();

    /* renamed from: a */
    private final String f5954a;
    public final boolean zzbkx;
    public final boolean zzbky;
    public final boolean zzbla;
    public final float zzblb;
    public final int zzblc;
    public final boolean zzbld;
    public final boolean zzble;
    public final boolean zzblf;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzg(boolean z, boolean z2, String str, boolean z3, float f, int i, boolean z4, boolean z5, boolean z6) {
        this.zzbkx = z;
        this.zzbky = z2;
        this.f5954a = str;
        this.zzbla = z3;
        this.zzblb = f;
        this.zzblc = i;
        this.zzbld = z4;
        this.zzble = z5;
        this.zzblf = z6;
    }

    public zzg(boolean z, boolean z2, boolean z3, float f, int i, boolean z4, boolean z5, boolean z6) {
        this(false, z2, null, false, 0.0f, -1, z4, z5, z6);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeBoolean(parcel, 2, this.zzbkx);
        SafeParcelWriter.writeBoolean(parcel, 3, this.zzbky);
        SafeParcelWriter.writeString(parcel, 4, this.f5954a, false);
        SafeParcelWriter.writeBoolean(parcel, 5, this.zzbla);
        SafeParcelWriter.writeFloat(parcel, 6, this.zzblb);
        SafeParcelWriter.writeInt(parcel, 7, this.zzblc);
        SafeParcelWriter.writeBoolean(parcel, 8, this.zzbld);
        SafeParcelWriter.writeBoolean(parcel, 9, this.zzble);
        SafeParcelWriter.writeBoolean(parcel, 10, this.zzblf);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
