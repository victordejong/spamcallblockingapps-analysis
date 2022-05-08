package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import p081h.p203i.p204a.p224e.p235d.p240n.C7018s;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p280k.C8816b0;
import p081h.p203i.p204a.p224e.p280k.C8818c0;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/location/DetectedActivity.class */
public class DetectedActivity extends AbstractSafeParcelable {

    /* renamed from: a */
    public int f6925a;

    /* renamed from: b */
    public int f6926b;

    /* renamed from: c */
    public static final int[] f6924c = {0, 1, 2, 3, 7, 8, 16, 17};
    public static final Parcelable.Creator<DetectedActivity> CREATOR = new C8818c0();

    static {
        new C8816b0();
    }

    public DetectedActivity(int i, int i2) {
        this.f6925a = i;
        this.f6926b = i2;
    }

    /* renamed from: g */
    public static void m31814g(int i) {
        boolean z = false;
        for (int i2 : f6924c) {
            if (i2 == i) {
                z = true;
            }
        }
        if (!z) {
            StringBuilder sb = new StringBuilder(81);
            sb.append(i);
            sb.append(" is not a valid DetectedActivity supported by Activity Transition API.");
            sb.toString();
        }
    }

    /* renamed from: H */
    public int m31816H() {
        int i = this.f6925a;
        if (i > 19 || i < 0) {
            return 4;
        }
        return i;
    }

    /* renamed from: c */
    public int m31815c() {
        return this.f6926b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || DetectedActivity.class != obj.getClass()) {
            return false;
        }
        DetectedActivity detectedActivity = (DetectedActivity) obj;
        return this.f6925a == detectedActivity.f6925a && this.f6926b == detectedActivity.f6926b;
    }

    public int hashCode() {
        return C7018s.m21296a(Integer.valueOf(this.f6925a), Integer.valueOf(this.f6926b));
    }

    public String toString() {
        String str;
        int H = m31816H();
        if (H == 0) {
            str = "IN_VEHICLE";
        } else if (H == 1) {
            str = "ON_BICYCLE";
        } else if (H == 2) {
            str = "ON_FOOT";
        } else if (H == 3) {
            str = "STILL";
        } else if (H == 4) {
            str = "UNKNOWN";
        } else if (H == 5) {
            str = "TILTING";
        } else if (H == 7) {
            str = "WALKING";
        } else if (H != 8) {
            switch (H) {
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
                    str = Integer.toString(H);
                    break;
            }
        } else {
            str = "RUNNING";
        }
        int i = this.f6926b;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 48);
        sb.append("DetectedActivity [type=");
        sb.append(str);
        sb.append(", confidence=");
        sb.append(i);
        sb.append("]");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21225a(parcel, 1, this.f6925a);
        C7031b.m21225a(parcel, 2, this.f6926b);
        C7031b.m21229a(parcel, a);
    }
}
