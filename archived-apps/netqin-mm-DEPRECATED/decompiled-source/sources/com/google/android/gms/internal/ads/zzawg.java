package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzawg.class */
public final class zzawg extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzawg> CREATOR = new zzawj();
    @SafeParcelable.Field

    /* renamed from: a */
    public final String f24562a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final String f24563b;
    @SafeParcelable.Field

    /* renamed from: c */
    public final boolean f24564c;
    @SafeParcelable.Field

    /* renamed from: d */
    public final boolean f24565d;
    @SafeParcelable.Field

    /* renamed from: e */
    public final List<String> f24566e;
    @SafeParcelable.Field

    /* renamed from: f */
    public final boolean f24567f;
    @SafeParcelable.Field

    /* renamed from: g */
    public final boolean f24568g;
    @SafeParcelable.Field

    /* renamed from: h */
    public final List<String> f24569h;

    @SafeParcelable.Constructor
    public zzawg(@SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) String str2, @SafeParcelable.Param(id = 4) boolean z, @SafeParcelable.Param(id = 5) boolean z2, @SafeParcelable.Param(id = 6) List<String> list, @SafeParcelable.Param(id = 7) boolean z3, @SafeParcelable.Param(id = 8) boolean z4, @SafeParcelable.Param(id = 9) List<String> list2) {
        this.f24562a = str;
        this.f24563b = str2;
        this.f24564c = z;
        this.f24565d = z2;
        this.f24566e = list;
        this.f24567f = z3;
        this.f24568g = z4;
        this.f24569h = list2 == null ? new ArrayList<>() : list2;
    }

    /* renamed from: a */
    public static zzawg m16269a(JSONObject jSONObject) throws JSONException {
        if (jSONObject == null) {
            return null;
        }
        return new zzawg(jSONObject.optString("click_string", ""), jSONObject.optString("report_url", ""), jSONObject.optBoolean("rendered_ad_enabled", false), jSONObject.optBoolean("non_malicious_reporting_enabled", false), zzbao.m15957a(jSONObject.optJSONArray("allowed_headers"), (List<String>) null), jSONObject.optBoolean("protection_enabled", false), jSONObject.optBoolean("malicious_reporting_enabled", false), zzbao.m15957a(jSONObject.optJSONArray("webview_permissions"), (List<String>) null));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17221a(parcel, 2, this.f24562a, false);
        SafeParcelWriter.m17221a(parcel, 3, this.f24563b, false);
        SafeParcelWriter.m17218a(parcel, 4, this.f24564c);
        SafeParcelWriter.m17218a(parcel, 5, this.f24565d);
        SafeParcelWriter.m17209b(parcel, 6, this.f24566e, false);
        SafeParcelWriter.m17218a(parcel, 7, this.f24567f);
        SafeParcelWriter.m17218a(parcel, 8, this.f24568g);
        SafeParcelWriter.m17209b(parcel, 9, this.f24569h, false);
        SafeParcelWriter.m17234a(parcel, a);
    }
}
