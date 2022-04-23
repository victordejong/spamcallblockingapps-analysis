package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzli.class */
public final class zzli extends zzll {
    public static final Parcelable.Creator<zzli> CREATOR = new aoi();

    /* renamed from: a */
    private final String f15101a;

    /* renamed from: b */
    private final String f15102b;

    /* renamed from: c */
    private final int f15103c;

    /* renamed from: d */
    private final byte[] f15104d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzli(Parcel parcel) {
        super("APIC");
        this.f15101a = parcel.readString();
        this.f15102b = parcel.readString();
        this.f15103c = parcel.readInt();
        this.f15104d = parcel.createByteArray();
    }

    public zzli(String str, String str2, int i, byte[] bArr) {
        super("APIC");
        this.f15101a = str;
        this.f15102b = null;
        this.f15103c = 3;
        this.f15104d = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        zzli zzliVar = (zzli) obj;
        return this.f15103c == zzliVar.f15103c && zzoq.zza(this.f15101a, zzliVar.f15101a) && zzoq.zza(this.f15102b, zzliVar.f15102b) && Arrays.equals(this.f15104d, zzliVar.f15104d);
    }

    public final int hashCode() {
        int i = this.f15103c;
        String str = this.f15101a;
        int i2 = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f15102b;
        if (str2 != null) {
            i2 = str2.hashCode();
        }
        return ((((((i + 527) * 31) + hashCode) * 31) + i2) * 31) + Arrays.hashCode(this.f15104d);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f15101a);
        parcel.writeString(this.f15102b);
        parcel.writeInt(this.f15103c);
        parcel.writeByteArray(this.f15104d);
    }
}
