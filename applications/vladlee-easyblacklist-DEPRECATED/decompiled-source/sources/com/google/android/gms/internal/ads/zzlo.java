package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzlo.class */
public final class zzlo extends zzll {
    public static final Parcelable.Creator<zzlo> CREATOR = new aok();

    /* renamed from: a */
    private final String f15106a;

    /* renamed from: b */
    private final String f15107b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzlo(Parcel parcel) {
        super(parcel.readString());
        this.f15106a = parcel.readString();
        this.f15107b = parcel.readString();
    }

    public zzlo(String str, String str2, String str3) {
        super(str);
        this.f15106a = null;
        this.f15107b = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        zzlo zzloVar = (zzlo) obj;
        return this.zzaez.equals(zzloVar.zzaez) && zzoq.zza(this.f15106a, zzloVar.f15106a) && zzoq.zza(this.f15107b, zzloVar.f15107b);
    }

    public final int hashCode() {
        int hashCode = this.zzaez.hashCode();
        String str = this.f15106a;
        int i = 0;
        int hashCode2 = str != null ? str.hashCode() : 0;
        String str2 = this.f15107b;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return ((((hashCode + 527) * 31) + hashCode2) * 31) + i;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.zzaez);
        parcel.writeString(this.f15106a);
        parcel.writeString(this.f15107b);
    }
}
