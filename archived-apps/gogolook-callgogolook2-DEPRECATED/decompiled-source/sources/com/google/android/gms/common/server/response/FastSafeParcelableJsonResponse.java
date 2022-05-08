package com.google.android.gms.common.server.response;

import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.server.response.FastJsonResponse;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/server/response/FastSafeParcelableJsonResponse.class */
public abstract class FastSafeParcelableJsonResponse extends FastJsonResponse implements SafeParcelable {
    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    /* renamed from: a */
    public Object mo31912a(String str) {
        return null;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    /* renamed from: b */
    public boolean mo31908b(String str) {
        return false;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!getClass().isInstance(obj)) {
            return false;
        }
        FastJsonResponse fastJsonResponse = (FastJsonResponse) obj;
        for (FastJsonResponse.Field<?, ?> field : mo31913a().values()) {
            if (mo31929b(field)) {
                if (!fastJsonResponse.mo31929b(field) || !mo31932a(field).equals(fastJsonResponse.mo31932a(field))) {
                    return false;
                }
            } else if (fastJsonResponse.mo31929b(field)) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        int i = 0;
        for (FastJsonResponse.Field<?, ?> field : mo31913a().values()) {
            if (mo31929b(field)) {
                i = (i * 31) + mo31932a(field).hashCode();
            }
        }
        return i;
    }
}
