package com.google.android.gms.common.server;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/FavaDiagnosticsEntity.class */
public class FavaDiagnosticsEntity extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<FavaDiagnosticsEntity> CREATOR = new zaa();

    /* renamed from: a */
    private final int f6870a;

    /* renamed from: b */
    private final String f6871b;

    /* renamed from: c */
    private final int f6872c;

    public FavaDiagnosticsEntity(int i, String str, int i2) {
        this.f6870a = i;
        this.f6871b = str;
        this.f6872c = i2;
    }

    public FavaDiagnosticsEntity(String str, int i) {
        this.f6870a = 1;
        this.f6871b = str;
        this.f6872c = i;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f6870a);
        SafeParcelWriter.writeString(parcel, 2, this.f6871b, false);
        SafeParcelWriter.writeInt(parcel, 3, this.f6872c);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
