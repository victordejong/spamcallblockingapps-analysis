package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.reward.RewardItem;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import org.json.JSONArray;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzasd.class */
public final class zzasd extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzasd> CREATOR = new zzasc();
    public final String type;
    public final int zzdno;

    public zzasd(RewardItem rewardItem) {
        this(rewardItem.getType(), rewardItem.getAmount());
    }

    public zzasd(String str, int i) {
        this.type = str;
        this.zzdno = i;
    }

    public static zzasd zza(JSONArray jSONArray) {
        if (jSONArray == null || jSONArray.length() == 0) {
            return null;
        }
        return new zzasd(jSONArray.getJSONObject(0).optString("rb_type"), jSONArray.getJSONObject(0).optInt("rb_amount"));
    }

    public final boolean equals(Object obj) {
        if (obj == null || !(obj instanceof zzasd)) {
            return false;
        }
        zzasd zzasdVar = (zzasd) obj;
        return Objects.equal(this.type, zzasdVar.type) && Objects.equal(Integer.valueOf(this.zzdno), Integer.valueOf(zzasdVar.zzdno));
    }

    public final int hashCode() {
        return Objects.hashCode(this.type, Integer.valueOf(this.zzdno));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, this.type, false);
        SafeParcelWriter.writeInt(parcel, 3, this.zzdno);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
