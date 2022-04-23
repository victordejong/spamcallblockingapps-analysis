package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/zzr.class */
public final class zzr extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzr> CREATOR = new zzs();

    /* renamed from: a */
    private final int f6859a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzr(int i) {
        this.f6859a = i;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f6859a);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
