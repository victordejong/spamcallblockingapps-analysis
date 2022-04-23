package com.google.android.gms.ads.internal.overlay;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/overlay/zzd.class */
public final class zzd extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzd> CREATOR = new zza();

    /* renamed from: a */
    private final String f5938a;

    /* renamed from: b */
    private final String f5939b;
    public final Intent intent;
    public final String mimeType;
    public final String packageName;
    public final String url;
    public final String zzdhf;
    public final String zzdhg;

    public zzd(Intent intent) {
        this(null, null, null, null, null, null, null, intent);
    }

    public zzd(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        this(str, str2, str3, str4, str5, str6, str7, null);
    }

    public zzd(String str, String str2, String str3, String str4, String str5, String str6, String str7, Intent intent) {
        this.f5938a = str;
        this.url = str2;
        this.mimeType = str3;
        this.packageName = str4;
        this.zzdhf = str5;
        this.zzdhg = str6;
        this.f5939b = str7;
        this.intent = intent;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, this.f5938a, false);
        SafeParcelWriter.writeString(parcel, 3, this.url, false);
        SafeParcelWriter.writeString(parcel, 4, this.mimeType, false);
        SafeParcelWriter.writeString(parcel, 5, this.packageName, false);
        SafeParcelWriter.writeString(parcel, 6, this.zzdhf, false);
        SafeParcelWriter.writeString(parcel, 7, this.zzdhg, false);
        SafeParcelWriter.writeString(parcel, 8, this.f5939b, false);
        SafeParcelWriter.writeParcelable(parcel, 9, this.intent, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
