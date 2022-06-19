package com.google.android.gms.maps.model;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/maps/model/CameraPosition$a.class */
public final class CameraPosition$a {

    /* renamed from: a */
    private LatLng f4049a;

    /* renamed from: b */
    private float f4050b;

    /* renamed from: c */
    private float f4051c;

    /* renamed from: d */
    private float f4052d;

    /* renamed from: a */
    public final CameraPosition$a m1732a(float f) {
        this.f4052d = f;
        return this;
    }

    /* renamed from: b */
    public final CameraPosition m1731b() {
        return new CameraPosition(this.f4049a, this.f4050b, this.f4051c, this.f4052d);
    }

    /* renamed from: c */
    public final CameraPosition$a m1730c(LatLng latLng) {
        this.f4049a = latLng;
        return this;
    }

    /* renamed from: d */
    public final CameraPosition$a m1729d(float f) {
        this.f4051c = f;
        return this;
    }

    /* renamed from: e */
    public final CameraPosition$a m1728e(float f) {
        this.f4050b = f;
        return this;
    }
}
