package com.google.android.gms.common.server.converter;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.server.response.FastJsonResponse;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/converter/zab.class */
public final class zab extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zab> CREATOR = new zaa();

    /* renamed from: a */
    private final int f6880a;

    /* renamed from: b */
    private final StringToIntConverter f6881b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zab(int i, StringToIntConverter stringToIntConverter) {
        this.f6880a = i;
        this.f6881b = stringToIntConverter;
    }

    private zab(StringToIntConverter stringToIntConverter) {
        this.f6880a = 1;
        this.f6881b = stringToIntConverter;
    }

    public static zab zaa(FastJsonResponse.FieldConverter<?, ?> fieldConverter) {
        if (fieldConverter instanceof StringToIntConverter) {
            return new zab((StringToIntConverter) fieldConverter);
        }
        throw new IllegalArgumentException("Unsupported safe parcelable field converter class.");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f6880a);
        SafeParcelWriter.writeParcelable(parcel, 2, this.f6881b, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public final FastJsonResponse.FieldConverter<?, ?> zacg() {
        StringToIntConverter stringToIntConverter = this.f6881b;
        if (stringToIntConverter != null) {
            return stringToIntConverter;
        }
        throw new IllegalStateException("There was no converter wrapped in this ConverterWrapper.");
    }
}
