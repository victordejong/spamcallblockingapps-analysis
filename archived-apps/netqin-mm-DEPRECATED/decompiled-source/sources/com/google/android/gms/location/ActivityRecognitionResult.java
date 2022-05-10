package com.google.android.gms.location;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.List;
@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes-dex2jar.jar:com/google/android/gms/location/ActivityRecognitionResult.class */
public class ActivityRecognitionResult extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<ActivityRecognitionResult> CREATOR = new zzb();
    @SafeParcelable.Field

    /* renamed from: a */
    public List<DetectedActivity> f29701a;
    @SafeParcelable.Field

    /* renamed from: b */
    public long f29702b;
    @SafeParcelable.Field

    /* renamed from: c */
    public long f29703c;
    @SafeParcelable.Field

    /* renamed from: d */
    public int f29704d;
    @SafeParcelable.Field

    /* renamed from: e */
    public Bundle f29705e;

    @SafeParcelable.Constructor
    public ActivityRecognitionResult(@SafeParcelable.Param(id = 1) List<DetectedActivity> list, @SafeParcelable.Param(id = 2) long j, @SafeParcelable.Param(id = 3) long j2, @SafeParcelable.Param(id = 4) int i, @SafeParcelable.Param(id = 5) Bundle bundle) {
        boolean z = true;
        Preconditions.m17283a(list != null && list.size() > 0, "Must have at least 1 detected activity");
        if (j <= 0 || j2 <= 0) {
            z = false;
        }
        Preconditions.m17283a(z, "Must set times");
        this.f29701a = list;
        this.f29702b = j;
        this.f29703c = j2;
        this.f29704d = i;
        this.f29705e = bundle;
    }

    /* renamed from: a */
    public static boolean m9425a(Bundle bundle, Bundle bundle2) {
        if (bundle == null && bundle2 == null) {
            return true;
        }
        if (bundle == null && bundle2 != null) {
            return false;
        }
        if ((bundle != null && bundle2 == null) || bundle.size() != bundle2.size()) {
            return false;
        }
        for (String str : bundle.keySet()) {
            if (!bundle2.containsKey(str)) {
                return false;
            }
            if (bundle.get(str) == null) {
                if (bundle2.get(str) != null) {
                    return false;
                }
            } else if (bundle.get(str) instanceof Bundle) {
                if (!m9425a(bundle.getBundle(str), bundle2.getBundle(str))) {
                    return false;
                }
            } else if (!bundle.get(str).equals(bundle2.get(str))) {
                return false;
            }
        }
        return true;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || ActivityRecognitionResult.class != obj.getClass()) {
            return false;
        }
        ActivityRecognitionResult activityRecognitionResult = (ActivityRecognitionResult) obj;
        return this.f29702b == activityRecognitionResult.f29702b && this.f29703c == activityRecognitionResult.f29703c && this.f29704d == activityRecognitionResult.f29704d && Objects.m17295a(this.f29701a, activityRecognitionResult.f29701a) && m9425a(this.f29705e, activityRecognitionResult.f29705e);
    }

    public int hashCode() {
        return Objects.m17294a(Long.valueOf(this.f29702b), Long.valueOf(this.f29703c), Integer.valueOf(this.f29704d), this.f29701a, this.f29705e);
    }

    public String toString() {
        String valueOf = String.valueOf(this.f29701a);
        long j = this.f29702b;
        long j2 = this.f29703c;
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 124);
        sb.append("ActivityRecognitionResult [probableActivities=");
        sb.append(valueOf);
        sb.append(", timeMillis=");
        sb.append(j);
        sb.append(", elapsedRealtimeMillis=");
        sb.append(j2);
        sb.append("]");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17207c(parcel, 1, this.f29701a, false);
        SafeParcelWriter.m17230a(parcel, 2, this.f29702b);
        SafeParcelWriter.m17230a(parcel, 3, this.f29703c);
        SafeParcelWriter.m17231a(parcel, 4, this.f29704d);
        SafeParcelWriter.m17229a(parcel, 5, this.f29705e, false);
        SafeParcelWriter.m17234a(parcel, a);
    }
}
