package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/ClientIdentity.class */
public class ClientIdentity extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ClientIdentity> CREATOR = new zab();

    /* renamed from: a */
    private final int f6728a;

    /* renamed from: b */
    private final String f6729b;

    public ClientIdentity(int i, String str) {
        this.f6728a = i;
        this.f6729b = str;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof ClientIdentity)) {
            return false;
        }
        ClientIdentity clientIdentity = (ClientIdentity) obj;
        return clientIdentity.f6728a == this.f6728a && Objects.equal(clientIdentity.f6729b, this.f6729b);
    }

    public int hashCode() {
        return this.f6728a;
    }

    public String toString() {
        int i = this.f6728a;
        String str = this.f6729b;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 12);
        sb.append(i);
        sb.append(":");
        sb.append(str);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f6728a);
        SafeParcelWriter.writeString(parcel, 2, this.f6729b, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
