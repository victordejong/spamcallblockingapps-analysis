package com.google.android.gms.search;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import javax.annotation.Nullable;
@SafeParcelable.Class(creator = "GoogleNowAuthStateCreator")
@SafeParcelable.Reserved({1000})
/* loaded from: classes-dex2jar.jar:com/google/android/gms/search/GoogleNowAuthState.class */
public class GoogleNowAuthState extends AbstractSafeParcelable {
    public static final Parcelable.Creator<GoogleNowAuthState> CREATOR = new zza();
    @SafeParcelable.Field(getter = "getAuthCode", m344id = 1)
    private String zzbk;
    @SafeParcelable.Field(getter = "getAccessToken", m344id = 2)
    private String zzbl;
    @SafeParcelable.Field(getter = "getNextAllowedTimeMillis", m344id = 3)
    private long zzbm;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public GoogleNowAuthState(@SafeParcelable.Param(m343id = 1) String str, @SafeParcelable.Param(m343id = 2) String str2, @SafeParcelable.Param(m343id = 3) long j) {
        this.zzbk = str;
        this.zzbl = str2;
        this.zzbm = j;
    }

    @Nullable
    public String getAccessToken() {
        return this.zzbl;
    }

    @Nullable
    public String getAuthCode() {
        return this.zzbk;
    }

    public long getNextAllowedTimeMillis() {
        return this.zzbm;
    }

    public String toString() {
        String str = this.zzbk;
        String str2 = this.zzbl;
        long j = this.zzbm;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 74 + String.valueOf(str2).length());
        sb.append("mAuthCode = ");
        sb.append(str);
        sb.append("\nmAccessToken = ");
        sb.append(str2);
        sb.append("\nmNextAllowedTimeMillis = ");
        sb.append(j);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, getAuthCode(), false);
        SafeParcelWriter.writeString(parcel, 2, getAccessToken(), false);
        SafeParcelWriter.writeLong(parcel, 3, getNextAllowedTimeMillis());
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
