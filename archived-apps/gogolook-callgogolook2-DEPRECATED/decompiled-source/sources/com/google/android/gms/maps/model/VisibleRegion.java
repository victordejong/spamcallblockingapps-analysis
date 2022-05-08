package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import p081h.p203i.p204a.p224e.p235d.p240n.C7018s;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p282l.p284k.C8931z;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/model/VisibleRegion.class */
public final class VisibleRegion extends AbstractSafeParcelable {
    public static final Parcelable.Creator<VisibleRegion> CREATOR = new C8931z();

    /* renamed from: a */
    public final LatLng f7130a;

    /* renamed from: b */
    public final LatLng f7131b;

    /* renamed from: c */
    public final LatLng f7132c;

    /* renamed from: d */
    public final LatLng f7133d;

    /* renamed from: e */
    public final LatLngBounds f7134e;

    public VisibleRegion(LatLng latLng, LatLng latLng2, LatLng latLng3, LatLng latLng4, LatLngBounds latLngBounds) {
        this.f7130a = latLng;
        this.f7131b = latLng2;
        this.f7132c = latLng3;
        this.f7133d = latLng4;
        this.f7134e = latLngBounds;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof VisibleRegion)) {
            return false;
        }
        VisibleRegion visibleRegion = (VisibleRegion) obj;
        return this.f7130a.equals(visibleRegion.f7130a) && this.f7131b.equals(visibleRegion.f7131b) && this.f7132c.equals(visibleRegion.f7132c) && this.f7133d.equals(visibleRegion.f7133d) && this.f7134e.equals(visibleRegion.f7134e);
    }

    public final int hashCode() {
        return C7018s.m21296a(this.f7130a, this.f7131b, this.f7132c, this.f7133d, this.f7134e);
    }

    public final String toString() {
        C7018s.C7019a a = C7018s.m21298a(this);
        a.m21295a("nearLeft", this.f7130a);
        a.m21295a("nearRight", this.f7131b);
        a.m21295a("farLeft", this.f7132c);
        a.m21295a("farRight", this.f7133d);
        a.m21295a("latLngBounds", this.f7134e);
        return a.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21220a(parcel, 2, (Parcelable) this.f7130a, i, false);
        C7031b.m21220a(parcel, 3, (Parcelable) this.f7131b, i, false);
        C7031b.m21220a(parcel, 4, (Parcelable) this.f7132c, i, false);
        C7031b.m21220a(parcel, 5, (Parcelable) this.f7133d, i, false);
        C7031b.m21220a(parcel, 6, (Parcelable) this.f7134e, i, false);
        C7031b.m21229a(parcel, a);
    }
}
