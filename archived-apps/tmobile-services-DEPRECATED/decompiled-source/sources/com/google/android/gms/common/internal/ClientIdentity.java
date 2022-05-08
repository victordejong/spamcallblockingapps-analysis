package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@KeepForSdk
@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/ClientIdentity.class */
public class ClientIdentity extends AbstractSafeParcelable {
    @KeepForSdk
    public static final Parcelable.Creator<ClientIdentity> CREATOR = new zab();
    @SafeParcelable.Field

    /* renamed from: f */
    private final int f7461f;
    @Nullable
    @SafeParcelable.Field

    /* renamed from: g */
    private final String f7462g;

    @SafeParcelable.Constructor
    public ClientIdentity(@SafeParcelable.Param(id = 1) int i, @Nullable @SafeParcelable.Param(id = 2) String str) {
        this.f7461f = i;
        this.f7462g = str;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof ClientIdentity)) {
            return false;
        }
        ClientIdentity clientIdentity = (ClientIdentity) obj;
        return clientIdentity.f7461f == this.f7461f && Objects.m14537a(clientIdentity.f7462g, this.f7462g);
    }

    public int hashCode() {
        return this.f7461f;
    }

    public String toString() {
        int i = this.f7461f;
        String str = this.f7462g;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 12);
        sb.append(i);
        sb.append(":");
        sb.append(str);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m14463a(parcel);
        SafeParcelWriter.m14453k(parcel, 1, this.f7461f);
        SafeParcelWriter.m14447q(parcel, 2, this.f7462g, false);
        SafeParcelWriter.m14462b(parcel, a);
    }
}
