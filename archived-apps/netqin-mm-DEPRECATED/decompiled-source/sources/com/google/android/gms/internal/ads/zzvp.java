package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import org.json.JSONException;
import org.json.JSONObject;
@SafeParcelable.Class
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzvp.class */
public final class zzvp extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzvp> CREATOR = new zzvo();
    @SafeParcelable.Field

    /* renamed from: a */
    public final int f29049a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final int f29050b;
    @SafeParcelable.Field

    /* renamed from: c */
    public final String f29051c;
    @SafeParcelable.Field

    /* renamed from: d */
    public final long f29052d;

    @SafeParcelable.Constructor
    public zzvp(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) int i2, @SafeParcelable.Param(id = 3) String str, @SafeParcelable.Param(id = 4) long j) {
        this.f29049a = i;
        this.f29050b = i2;
        this.f29051c = str;
        this.f29052d = j;
    }

    /* renamed from: a */
    public static zzvp m11191a(JSONObject jSONObject) throws JSONException {
        return new zzvp(jSONObject.getInt("type_num"), jSONObject.getInt("precision_num"), jSONObject.getString("currency"), jSONObject.getLong("value"));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17231a(parcel, 1, this.f29049a);
        SafeParcelWriter.m17231a(parcel, 2, this.f29050b);
        SafeParcelWriter.m17221a(parcel, 3, this.f29051c, false);
        SafeParcelWriter.m17230a(parcel, 4, this.f29052d);
        SafeParcelWriter.m17234a(parcel, a);
    }
}
