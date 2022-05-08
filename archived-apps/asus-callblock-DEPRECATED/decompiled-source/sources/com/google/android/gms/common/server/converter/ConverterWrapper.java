package com.google.android.gms.common.server.converter;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.server.response.FastJsonResponse;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/converter/ConverterWrapper.class */
public class ConverterWrapper extends AbstractSafeParcelable {
    public static final a CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    final int f4058a;

    /* renamed from: b  reason: collision with root package name */
    public final StringToIntConverter f4059b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ConverterWrapper(int i, StringToIntConverter stringToIntConverter) {
        this.f4058a = i;
        this.f4059b = stringToIntConverter;
    }

    private ConverterWrapper(StringToIntConverter stringToIntConverter) {
        this.f4058a = 1;
        this.f4059b = stringToIntConverter;
    }

    public static ConverterWrapper a(FastJsonResponse.a<?, ?> aVar) {
        if (aVar instanceof StringToIntConverter) {
            return new ConverterWrapper((StringToIntConverter) aVar);
        }
        throw new IllegalArgumentException("Unsupported safe parcelable field converter class.");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        a.a(this, parcel, i);
    }
}
