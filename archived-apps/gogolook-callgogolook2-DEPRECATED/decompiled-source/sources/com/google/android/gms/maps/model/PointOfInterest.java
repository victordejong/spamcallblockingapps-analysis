package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p282l.p284k.C8920o;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/model/PointOfInterest.class */
public final class PointOfInterest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<PointOfInterest> CREATOR = new C8920o();

    /* renamed from: a */
    public final LatLng f7083a;

    /* renamed from: b */
    public final String f7084b;

    /* renamed from: c */
    public final String f7085c;

    public PointOfInterest(LatLng latLng, String str, String str2) {
        this.f7083a = latLng;
        this.f7084b = str;
        this.f7085c = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21220a(parcel, 2, (Parcelable) this.f7083a, i, false);
        C7031b.m21215a(parcel, 3, this.f7084b, false);
        C7031b.m21215a(parcel, 4, this.f7085c, false);
        C7031b.m21229a(parcel, a);
    }
}
