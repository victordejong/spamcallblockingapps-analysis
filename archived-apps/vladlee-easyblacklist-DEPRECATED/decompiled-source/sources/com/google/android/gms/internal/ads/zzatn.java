package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzatn.class */
public final class zzatn extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzatn> CREATOR = new zzatm();
    public final String zzdos;
    public final String zzdot;
    public final boolean zzdou;
    public final boolean zzdov;
    public final List<String> zzdow;
    public final boolean zzdox;
    public final boolean zzdoy;
    public final List<String> zzdoz;

    public zzatn(String str, String str2, boolean z, boolean z2, List<String> list, boolean z3, boolean z4, List<String> list2) {
        this.zzdos = str;
        this.zzdot = str2;
        this.zzdou = z;
        this.zzdov = z2;
        this.zzdow = list;
        this.zzdox = z3;
        this.zzdoy = z4;
        this.zzdoz = list2 == null ? new ArrayList<>() : list2;
    }

    public static zzatn zzg(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        return new zzatn(jSONObject.optString("click_string", ""), jSONObject.optString("report_url", ""), jSONObject.optBoolean("rendered_ad_enabled", false), jSONObject.optBoolean("non_malicious_reporting_enabled", false), zzaxs.zza(jSONObject.optJSONArray("allowed_headers"), (List<String>) null), jSONObject.optBoolean("protection_enabled", false), jSONObject.optBoolean("malicious_reporting_enabled", false), zzaxs.zza(jSONObject.optJSONArray("webview_permissions"), (List<String>) null));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, this.zzdos, false);
        SafeParcelWriter.writeString(parcel, 3, this.zzdot, false);
        SafeParcelWriter.writeBoolean(parcel, 4, this.zzdou);
        SafeParcelWriter.writeBoolean(parcel, 5, this.zzdov);
        SafeParcelWriter.writeStringList(parcel, 6, this.zzdow, false);
        SafeParcelWriter.writeBoolean(parcel, 7, this.zzdox);
        SafeParcelWriter.writeBoolean(parcel, 8, this.zzdoy);
        SafeParcelWriter.writeStringList(parcel, 9, this.zzdoz, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
