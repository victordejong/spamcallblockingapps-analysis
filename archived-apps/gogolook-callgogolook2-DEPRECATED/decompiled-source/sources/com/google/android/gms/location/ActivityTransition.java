package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import p081h.p203i.p204a.p224e.p235d.p240n.C7018s;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p280k.C8850w;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/location/ActivityTransition.class */
public class ActivityTransition extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ActivityTransition> CREATOR = new C8850w();

    /* renamed from: a */
    public final int f6914a;

    /* renamed from: b */
    public final int f6915b;

    public ActivityTransition(int i, int i2) {
        this.f6914a = i;
        this.f6915b = i2;
    }

    /* renamed from: g */
    public static void m31821g(int i) {
        boolean z = true;
        if (i < 0 || i > 1) {
            z = false;
        }
        StringBuilder sb = new StringBuilder(41);
        sb.append("Transition type ");
        sb.append(i);
        sb.append(" is not valid.");
        C7021t.m21285a(z, sb.toString());
    }

    /* renamed from: H */
    public int m31823H() {
        return this.f6915b;
    }

    /* renamed from: c */
    public int m31822c() {
        return this.f6914a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ActivityTransition)) {
            return false;
        }
        ActivityTransition activityTransition = (ActivityTransition) obj;
        return this.f6914a == activityTransition.f6914a && this.f6915b == activityTransition.f6915b;
    }

    public int hashCode() {
        return C7018s.m21296a(Integer.valueOf(this.f6914a), Integer.valueOf(this.f6915b));
    }

    public String toString() {
        int i = this.f6914a;
        int i2 = this.f6915b;
        StringBuilder sb = new StringBuilder(75);
        sb.append("ActivityTransition [mActivityType=");
        sb.append(i);
        sb.append(", mTransitionType=");
        sb.append(i2);
        sb.append(']');
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21225a(parcel, 1, m31822c());
        C7031b.m21225a(parcel, 2, m31823H());
        C7031b.m21229a(parcel, a);
    }
}
