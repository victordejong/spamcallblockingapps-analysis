package com.google.android.gms.gass.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/gass/internal/zzo.class */
public final class zzo extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzo> CREATOR = new zzn();

    /* renamed from: a */
    private final int f7111a;
    public final byte[] zzgtm;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzo(int i, byte[] bArr) {
        this.f7111a = i;
        this.zzgtm = bArr == null ? null : Arrays.copyOf(bArr, bArr.length);
    }

    public zzo(byte[] bArr) {
        this(1, null);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f7111a);
        SafeParcelWriter.writeByteArray(parcel, 2, this.zzgtm, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
