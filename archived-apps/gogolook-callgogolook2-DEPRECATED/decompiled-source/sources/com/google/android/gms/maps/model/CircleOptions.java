package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.List;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p282l.p284k.C8913h;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/model/CircleOptions.class */
public final class CircleOptions extends AbstractSafeParcelable {
    public static final Parcelable.Creator<CircleOptions> CREATOR = new C8913h();

    /* renamed from: a */
    public LatLng f7033a;

    /* renamed from: b */
    public double f7034b;

    /* renamed from: c */
    public float f7035c;

    /* renamed from: d */
    public int f7036d;

    /* renamed from: e */
    public int f7037e;

    /* renamed from: f */
    public float f7038f;

    /* renamed from: g */
    public boolean f7039g;

    /* renamed from: h */
    public boolean f7040h;
    @Nullable

    /* renamed from: i */
    public List<PatternItem> f7041i;

    public CircleOptions() {
        this.f7033a = null;
        this.f7034b = 0.0d;
        this.f7035c = 10.0f;
        this.f7036d = -16777216;
        this.f7037e = 0;
        this.f7038f = 0.0f;
        this.f7039g = true;
        this.f7040h = false;
        this.f7041i = null;
    }

    public CircleOptions(LatLng latLng, double d, float f, int i, int i2, float f2, boolean z, boolean z2, @Nullable List<PatternItem> list) {
        this.f7033a = null;
        this.f7034b = 0.0d;
        this.f7035c = 10.0f;
        this.f7036d = -16777216;
        this.f7037e = 0;
        this.f7038f = 0.0f;
        this.f7039g = true;
        this.f7040h = false;
        this.f7041i = null;
        this.f7033a = latLng;
        this.f7034b = d;
        this.f7035c = f;
        this.f7036d = i;
        this.f7037e = i2;
        this.f7038f = f2;
        this.f7039g = z;
        this.f7040h = z2;
        this.f7041i = list;
    }

    /* renamed from: H */
    public final int m31749H() {
        return this.f7037e;
    }

    /* renamed from: I */
    public final double m31748I() {
        return this.f7034b;
    }

    /* renamed from: J */
    public final int m31747J() {
        return this.f7036d;
    }

    @Nullable
    /* renamed from: K */
    public final List<PatternItem> m31746K() {
        return this.f7041i;
    }

    /* renamed from: L */
    public final float m31745L() {
        return this.f7035c;
    }

    /* renamed from: M */
    public final float m31744M() {
        return this.f7038f;
    }

    /* renamed from: N */
    public final boolean m31743N() {
        return this.f7040h;
    }

    /* renamed from: c */
    public final LatLng m31742c() {
        return this.f7033a;
    }

    /* renamed from: j0 */
    public final boolean m31741j0() {
        return this.f7039g;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21220a(parcel, 2, (Parcelable) m31742c(), i, false);
        C7031b.m21227a(parcel, 3, m31748I());
        C7031b.m21226a(parcel, 4, m31745L());
        C7031b.m21225a(parcel, 5, m31747J());
        C7031b.m21225a(parcel, 6, m31749H());
        C7031b.m21226a(parcel, 7, m31744M());
        C7031b.m21212a(parcel, 8, m31741j0());
        C7031b.m21212a(parcel, 9, m31743N());
        C7031b.m21201c(parcel, 10, m31746K(), false);
        C7031b.m21229a(parcel, a);
    }
}
