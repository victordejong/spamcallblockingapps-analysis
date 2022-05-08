package com.google.android.gms.gass.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/gass/internal/zzb.class */
public final class zzb extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzb> CREATOR = new zza();

    /* renamed from: a */
    private final int f7096a;

    /* renamed from: b */
    private final byte[] f7097b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzb(int i, byte[] bArr) {
        this.f7096a = i;
        this.f7097b = bArr;
    }

    public zzb(byte[] bArr) {
        this(1, bArr);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f7096a);
        SafeParcelWriter.writeByteArray(parcel, 2, this.f7097b, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
