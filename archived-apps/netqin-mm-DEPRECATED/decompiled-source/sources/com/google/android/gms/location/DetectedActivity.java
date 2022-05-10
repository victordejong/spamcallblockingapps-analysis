package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import p131c.p161d.p170b.p224d.p259h.C4635d;
@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes-dex2jar.jar:com/google/android/gms/location/DetectedActivity.class */
public class DetectedActivity extends AbstractSafeParcelable {
    @SafeParcelable.Field

    /* renamed from: a */
    public int f29717a;
    @SafeParcelable.Field

    /* renamed from: b */
    public int f29718b;

    /* renamed from: c */
    public static final int[] f29716c = {0, 1, 2, 3, 7, 8, 16, 17};
    public static final Parcelable.Creator<DetectedActivity> CREATOR = new zzi();

    static {
        new C4635d();
    }

    @SafeParcelable.Constructor
    public DetectedActivity(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) int i2) {
        this.f29717a = i;
        this.f29718b = i2;
    }

    public static void zzb(int i) {
        boolean z = false;
        for (int i2 : f29716c) {
            if (i2 == i) {
                z = true;
            }
        }
        if (!z) {
            StringBuilder sb = new StringBuilder(81);
            sb.append(i);
            sb.append(" is not a valid DetectedActivity supported by Activity Transition API.");
            Log.w("DetectedActivity", sb.toString());
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || DetectedActivity.class != obj.getClass()) {
            return false;
        }
        DetectedActivity detectedActivity = (DetectedActivity) obj;
        return this.f29717a == detectedActivity.f29717a && this.f29718b == detectedActivity.f29718b;
    }

    /* renamed from: f */
    public int m9418f() {
        return this.f29718b;
    }

    public int hashCode() {
        return Objects.m17294a(Integer.valueOf(this.f29717a), Integer.valueOf(this.f29718b));
    }

    /* renamed from: i */
    public int m9417i() {
        int i = this.f29717a;
        if (i > 19 || i < 0) {
            return 4;
        }
        return i;
    }

    public String toString() {
        String str;
        int i = m9417i();
        if (i == 0) {
            str = "IN_VEHICLE";
        } else if (i == 1) {
            str = "ON_BICYCLE";
        } else if (i == 2) {
            str = "ON_FOOT";
        } else if (i == 3) {
            str = "STILL";
        } else if (i == 4) {
            str = "UNKNOWN";
        } else if (i == 5) {
            str = "TILTING";
        } else if (i == 7) {
            str = "WALKING";
        } else if (i != 8) {
            switch (i) {
                case 16:
                    str = "IN_ROAD_VEHICLE";
                    break;
                case 17:
                    str = "IN_RAIL_VEHICLE";
                    break;
                case 18:
                    str = "IN_TWO_WHEELER_VEHICLE";
                    break;
                case 19:
                    str = "IN_FOUR_WHEELER_VEHICLE";
                    break;
                default:
                    str = Integer.toString(i);
                    break;
            }
        } else {
            str = "RUNNING";
        }
        int i2 = this.f29718b;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 48);
        sb.append("DetectedActivity [type=");
        sb.append(str);
        sb.append(", confidence=");
        sb.append(i2);
        sb.append("]");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17231a(parcel, 1, this.f29717a);
        SafeParcelWriter.m17231a(parcel, 2, this.f29718b);
        SafeParcelWriter.m17234a(parcel, a);
    }
}
