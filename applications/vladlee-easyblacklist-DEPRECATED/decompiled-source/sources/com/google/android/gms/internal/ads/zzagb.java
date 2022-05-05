package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzagb.class */
public final class zzagb extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzagb> CREATOR = new zzage();
    public final byte[] data;
    public final int statusCode;
    public final boolean zzac;
    public final long zzad;
    public final String[] zzcxv;
    public final String[] zzcxw;
    public final boolean zzcxx;
    public final String zzcxy;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzagb(boolean z, String str, int i, byte[] bArr, String[] strArr, String[] strArr2, boolean z2, long j) {
        this.zzcxx = z;
        this.zzcxy = str;
        this.statusCode = i;
        this.data = bArr;
        this.zzcxv = strArr;
        this.zzcxw = strArr2;
        this.zzac = z2;
        this.zzad = j;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeBoolean(parcel, 1, this.zzcxx);
        SafeParcelWriter.writeString(parcel, 2, this.zzcxy, false);
        SafeParcelWriter.writeInt(parcel, 3, this.statusCode);
        SafeParcelWriter.writeByteArray(parcel, 4, this.data, false);
        SafeParcelWriter.writeStringArray(parcel, 5, this.zzcxv, false);
        SafeParcelWriter.writeStringArray(parcel, 6, this.zzcxw, false);
        SafeParcelWriter.writeBoolean(parcel, 7, this.zzac);
        SafeParcelWriter.writeLong(parcel, 8, this.zzad);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
