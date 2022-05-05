package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.server.response.FastJsonResponse;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/response/zal.class */
public final class zal extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zal> CREATOR = new zak();

    /* renamed from: a */
    final String f6924a;

    /* renamed from: b */
    final FastJsonResponse.Field<?, ?> f6925b;

    /* renamed from: c */
    private final int f6926c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zal(int i, String str, FastJsonResponse.Field<?, ?> field) {
        this.f6926c = i;
        this.f6924a = str;
        this.f6925b = field;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zal(String str, FastJsonResponse.Field<?, ?> field) {
        this.f6926c = 1;
        this.f6924a = str;
        this.f6925b = field;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f6926c);
        SafeParcelWriter.writeString(parcel, 2, this.f6924a, false);
        SafeParcelWriter.writeParcelable(parcel, 3, this.f6925b, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
