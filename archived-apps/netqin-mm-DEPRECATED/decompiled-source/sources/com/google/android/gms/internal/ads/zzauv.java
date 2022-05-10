package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.reward.RewardItem;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import org.json.JSONArray;
import org.json.JSONException;
@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzauv.class */
public final class zzauv extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzauv> CREATOR = new zzauu();
    @SafeParcelable.Field

    /* renamed from: a */
    public final String f24528a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final int f24529b;

    public zzauv(RewardItem rewardItem) {
        this(rewardItem.getType(), rewardItem.mo16337y());
    }

    @SafeParcelable.Constructor
    public zzauv(@SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) int i) {
        this.f24528a = str;
        this.f24529b = i;
    }

    /* renamed from: a */
    public static zzauv m16318a(JSONArray jSONArray) throws JSONException {
        if (jSONArray == null || jSONArray.length() == 0) {
            return null;
        }
        return new zzauv(jSONArray.getJSONObject(0).optString("rb_type"), jSONArray.getJSONObject(0).optInt("rb_amount"));
    }

    public final boolean equals(Object obj) {
        if (obj == null || !(obj instanceof zzauv)) {
            return false;
        }
        zzauv zzauvVar = (zzauv) obj;
        return Objects.m17295a(this.f24528a, zzauvVar.f24528a) && Objects.m17295a(Integer.valueOf(this.f24529b), Integer.valueOf(zzauvVar.f24529b));
    }

    public final int hashCode() {
        return Objects.m17294a(this.f24528a, Integer.valueOf(this.f24529b));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17221a(parcel, 2, this.f24528a, false);
        SafeParcelWriter.m17231a(parcel, 3, this.f24529b);
        SafeParcelWriter.m17234a(parcel, a);
    }
}
