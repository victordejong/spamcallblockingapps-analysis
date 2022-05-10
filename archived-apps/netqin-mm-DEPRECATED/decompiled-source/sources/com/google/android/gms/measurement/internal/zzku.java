package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import p131c.p161d.p170b.p224d.p260i.p261a.C4822t7;
@SafeParcelable.Class
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzku.class */
public final class zzku extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzku> CREATOR = new zzkt();
    @SafeParcelable.Field

    /* renamed from: a */
    public final int f30141a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final String f30142b;
    @SafeParcelable.Field

    /* renamed from: c */
    public final long f30143c;
    @SafeParcelable.Field

    /* renamed from: d */
    public final Long f30144d;
    @SafeParcelable.Field

    /* renamed from: e */
    public final String f30145e;
    @SafeParcelable.Field

    /* renamed from: f */
    public final String f30146f;
    @SafeParcelable.Field

    /* renamed from: g */
    public final Double f30147g;

    @SafeParcelable.Constructor
    public zzku(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) long j, @SafeParcelable.Param(id = 4) Long l, @SafeParcelable.Param(id = 5) Float f, @SafeParcelable.Param(id = 6) String str2, @SafeParcelable.Param(id = 7) String str3, @SafeParcelable.Param(id = 8) Double d) {
        this.f30141a = i;
        this.f30142b = str;
        this.f30143c = j;
        this.f30144d = l;
        if (i == 1) {
            this.f30147g = f != null ? Double.valueOf(f.doubleValue()) : null;
        } else {
            this.f30147g = d;
        }
        this.f30145e = str2;
        this.f30146f = str3;
    }

    public zzku(C4822t7 t7Var) {
        this(t7Var.f17403c, t7Var.f17404d, t7Var.f17405e, t7Var.f17402b);
    }

    public zzku(String str, long j, Object obj, String str2) {
        Preconditions.m17281b(str);
        this.f30141a = 2;
        this.f30142b = str;
        this.f30143c = j;
        this.f30146f = str2;
        if (obj == null) {
            this.f30144d = null;
            this.f30147g = null;
            this.f30145e = null;
        } else if (obj instanceof Long) {
            this.f30144d = (Long) obj;
            this.f30147g = null;
            this.f30145e = null;
        } else if (obj instanceof String) {
            this.f30144d = null;
            this.f30147g = null;
            this.f30145e = (String) obj;
        } else if (obj instanceof Double) {
            this.f30144d = null;
            this.f30147g = (Double) obj;
            this.f30145e = null;
        } else {
            throw new IllegalArgumentException("User attribute given of un-supported type");
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17231a(parcel, 1, this.f30141a);
        SafeParcelWriter.m17221a(parcel, 2, this.f30142b, false);
        SafeParcelWriter.m17230a(parcel, 3, this.f30143c);
        SafeParcelWriter.m17222a(parcel, 4, this.f30144d, false);
        SafeParcelWriter.m17223a(parcel, 5, (Float) null, false);
        SafeParcelWriter.m17221a(parcel, 6, this.f30145e, false);
        SafeParcelWriter.m17221a(parcel, 7, this.f30146f, false);
        SafeParcelWriter.m17224a(parcel, 8, this.f30147g, false);
        SafeParcelWriter.m17234a(parcel, a);
    }

    public final Object zza() {
        Long l = this.f30144d;
        if (l != null) {
            return l;
        }
        Double d = this.f30147g;
        if (d != null) {
            return d;
        }
        String str = this.f30145e;
        if (str != null) {
            return str;
        }
        return null;
    }
}
