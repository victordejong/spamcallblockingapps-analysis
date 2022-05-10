package com.google.android.gms.common.server.converter;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.server.response.FastJsonResponse;
@SafeParcelable.Class
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/converter/zaa.class */
public final class zaa extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zaa> CREATOR = new zab();
    @SafeParcelable.VersionField

    /* renamed from: a */
    public final int f23510a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final StringToIntConverter f23511b;

    @SafeParcelable.Constructor
    public zaa(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) StringToIntConverter stringToIntConverter) {
        this.f23510a = i;
        this.f23511b = stringToIntConverter;
    }

    public zaa(StringToIntConverter stringToIntConverter) {
        this.f23510a = 1;
        this.f23511b = stringToIntConverter;
    }

    /* renamed from: a */
    public static zaa m17152a(FastJsonResponse.FieldConverter<?, ?> fieldConverter) {
        if (fieldConverter instanceof StringToIntConverter) {
            return new zaa((StringToIntConverter) fieldConverter);
        }
        throw new IllegalArgumentException("Unsupported safe parcelable field converter class.");
    }

    /* renamed from: f */
    public final FastJsonResponse.FieldConverter<?, ?> m17151f() {
        StringToIntConverter stringToIntConverter = this.f23511b;
        if (stringToIntConverter != null) {
            return stringToIntConverter;
        }
        throw new IllegalStateException("There was no converter wrapped in this ConverterWrapper.");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17231a(parcel, 1, this.f23510a);
        SafeParcelWriter.m17226a(parcel, 2, (Parcelable) this.f23511b, i, false);
        SafeParcelWriter.m17234a(parcel, a);
    }
}
