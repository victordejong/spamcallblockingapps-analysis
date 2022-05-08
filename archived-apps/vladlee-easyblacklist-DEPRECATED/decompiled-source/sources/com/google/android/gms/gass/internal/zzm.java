package com.google.android.gms.gass.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/gass/internal/zzm.class */
public final class zzm extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzm> CREATOR = new zzl();

    /* renamed from: a */
    private final int f7107a;

    /* renamed from: b */
    private final int f7108b;

    /* renamed from: c */
    private final String f7109c;

    /* renamed from: d */
    private final String f7110d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzm(int i, int i2, String str, String str2) {
        this.f7107a = i;
        this.f7108b = i2;
        this.f7109c = str;
        this.f7110d = str2;
    }

    public zzm(int i, String str, String str2) {
        this(1, i, str, str2);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f7107a);
        SafeParcelWriter.writeInt(parcel, 2, this.f7108b);
        SafeParcelWriter.writeString(parcel, 3, this.f7109c, false);
        SafeParcelWriter.writeString(parcel, 4, this.f7110d, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
