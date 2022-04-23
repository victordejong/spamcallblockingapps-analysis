package com.google.android.gms.gass.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/gass/internal/zzc.class */
public final class zzc extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzc> CREATOR = new zzf();

    /* renamed from: a */
    private final int f7098a;

    /* renamed from: b */
    private final String f7099b;

    /* renamed from: c */
    private final String f7100c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzc(int i, String str, String str2) {
        this.f7098a = i;
        this.f7099b = str;
        this.f7100c = str2;
    }

    public zzc(String str, String str2) {
        this(1, str, str2);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f7098a);
        SafeParcelWriter.writeString(parcel, 2, this.f7099b, false);
        SafeParcelWriter.writeString(parcel, 3, this.f7100c, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
