package com.google.android.gms.common.server.response;

import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/response/FastSafeParcelableJsonResponse.class */
public abstract class FastSafeParcelableJsonResponse extends FastJsonResponse implements SafeParcelable {
    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public boolean b() {
        return false;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }
}
