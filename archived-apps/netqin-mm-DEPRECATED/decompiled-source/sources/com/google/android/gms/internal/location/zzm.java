package com.google.android.gms.internal.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ClientIdentity;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.location.zzj;
import java.util.Collections;
import java.util.List;
@SafeParcelable.Class
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/location/zzm.class */
public final class zzm extends AbstractSafeParcelable {
    @SafeParcelable.Field

    /* renamed from: a */
    public zzj f29393a;
    @SafeParcelable.Field

    /* renamed from: b */
    public List<ClientIdentity> f29394b;
    @SafeParcelable.Field

    /* renamed from: c */
    public String f29395c;
    @VisibleForTesting

    /* renamed from: d */
    public static final List<ClientIdentity> f29391d = Collections.emptyList();

    /* renamed from: e */
    public static final zzj f29392e = new zzj();
    public static final Parcelable.Creator<zzm> CREATOR = new zzn();

    @SafeParcelable.Constructor
    public zzm(@SafeParcelable.Param(id = 1) zzj zzjVar, @SafeParcelable.Param(id = 2) List<ClientIdentity> list, @SafeParcelable.Param(id = 3) String str) {
        this.f29393a = zzjVar;
        this.f29394b = list;
        this.f29395c = str;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzm)) {
            return false;
        }
        zzm zzmVar = (zzm) obj;
        return Objects.m17295a(this.f29393a, zzmVar.f29393a) && Objects.m17295a(this.f29394b, zzmVar.f29394b) && Objects.m17295a(this.f29395c, zzmVar.f29395c);
    }

    public final int hashCode() {
        return this.f29393a.hashCode();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17226a(parcel, 1, (Parcelable) this.f29393a, i, false);
        SafeParcelWriter.m17207c(parcel, 2, this.f29394b, false);
        SafeParcelWriter.m17221a(parcel, 3, this.f29395c, false);
        SafeParcelWriter.m17234a(parcel, a);
    }
}
