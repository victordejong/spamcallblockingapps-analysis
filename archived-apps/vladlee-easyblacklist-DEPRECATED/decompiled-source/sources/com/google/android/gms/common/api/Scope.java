package com.google.android.gms.common.api;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/Scope.class */
public final class Scope extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<Scope> CREATOR = new zza();

    /* renamed from: a */
    private final int f6224a;

    /* renamed from: b */
    private final String f6225b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Scope(int i, String str) {
        Preconditions.checkNotEmpty(str, "scopeUri must not be null or empty");
        this.f6224a = i;
        this.f6225b = str;
    }

    public Scope(String str) {
        this(1, str);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Scope)) {
            return false;
        }
        return this.f6225b.equals(((Scope) obj).f6225b);
    }

    public final String getScopeUri() {
        return this.f6225b;
    }

    public final int hashCode() {
        return this.f6225b.hashCode();
    }

    public final String toString() {
        return this.f6225b;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f6224a);
        SafeParcelWriter.writeString(parcel, 2, getScopeUri(), false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
