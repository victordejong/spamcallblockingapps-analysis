package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzlk.class */
public final class zzlk extends zzll {
    public static final Parcelable.Creator<zzlk> CREATOR = new aoj();

    /* renamed from: a */
    private final String f15105a;
    public final String description;
    public final String text;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzlk(Parcel parcel) {
        super("COMM");
        this.f15105a = parcel.readString();
        this.description = parcel.readString();
        this.text = parcel.readString();
    }

    public zzlk(String str, String str2, String str3) {
        super("COMM");
        this.f15105a = str;
        this.description = str2;
        this.text = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        zzlk zzlkVar = (zzlk) obj;
        return zzoq.zza(this.description, zzlkVar.description) && zzoq.zza(this.f15105a, zzlkVar.f15105a) && zzoq.zza(this.text, zzlkVar.text);
    }

    public final int hashCode() {
        String str = this.f15105a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.description;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.text;
        if (str3 != null) {
            i = str3.hashCode();
        }
        return ((((hashCode + 527) * 31) + hashCode2) * 31) + i;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.zzaez);
        parcel.writeString(this.f15105a);
        parcel.writeString(this.text);
    }
}
