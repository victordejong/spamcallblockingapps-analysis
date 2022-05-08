package com.google.android.gms.internal.measurement;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbr.class */
public final class zzbr implements Parcelable {
    @Deprecated
    public static final Parcelable.Creator<zzbr> CREATOR = new zzbs();
    private String value;
    private String zzno;
    private String zzyf;

    @Deprecated
    public zzbr() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Deprecated
    public zzbr(Parcel parcel) {
        this.zzno = parcel.readString();
        this.zzyf = parcel.readString();
        this.value = parcel.readString();
    }

    @Override // android.os.Parcelable
    @Deprecated
    public final int describeContents() {
        return 0;
    }

    public final String getId() {
        return this.zzno;
    }

    public final String getValue() {
        return this.value;
    }

    @Override // android.os.Parcelable
    @Deprecated
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.zzno);
        parcel.writeString(this.zzyf);
        parcel.writeString(this.value);
    }
}
