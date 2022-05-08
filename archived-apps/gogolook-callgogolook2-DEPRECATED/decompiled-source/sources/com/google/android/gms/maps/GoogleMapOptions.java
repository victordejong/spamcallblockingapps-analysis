package com.google.android.gms.maps;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;
import p081h.p203i.p204a.p224e.p235d.p240n.C7018s;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p282l.C8932l;
import p081h.p203i.p204a.p224e.p282l.p283j.C8889j;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/GoogleMapOptions.class */
public final class GoogleMapOptions extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<GoogleMapOptions> CREATOR = new C8932l();

    /* renamed from: a */
    public Boolean f6979a;

    /* renamed from: b */
    public Boolean f6980b;

    /* renamed from: c */
    public int f6981c;

    /* renamed from: d */
    public CameraPosition f6982d;

    /* renamed from: e */
    public Boolean f6983e;

    /* renamed from: f */
    public Boolean f6984f;

    /* renamed from: g */
    public Boolean f6985g;

    /* renamed from: h */
    public Boolean f6986h;

    /* renamed from: i */
    public Boolean f6987i;

    /* renamed from: j */
    public Boolean f6988j;

    /* renamed from: k */
    public Boolean f6989k;

    /* renamed from: l */
    public Boolean f6990l;

    /* renamed from: m */
    public Boolean f6991m;

    /* renamed from: n */
    public Float f6992n;

    /* renamed from: o */
    public Float f6993o;

    /* renamed from: p */
    public LatLngBounds f6994p;

    public GoogleMapOptions() {
        this.f6981c = -1;
        this.f6992n = null;
        this.f6993o = null;
        this.f6994p = null;
    }

    public GoogleMapOptions(byte b, byte b2, int i, CameraPosition cameraPosition, byte b3, byte b4, byte b5, byte b6, byte b7, byte b8, byte b9, byte b10, byte b11, Float f, Float f2, LatLngBounds latLngBounds) {
        this.f6981c = -1;
        this.f6992n = null;
        this.f6993o = null;
        this.f6994p = null;
        this.f6979a = C8889j.m16825a(b);
        this.f6980b = C8889j.m16825a(b2);
        this.f6981c = i;
        this.f6982d = cameraPosition;
        this.f6983e = C8889j.m16825a(b3);
        this.f6984f = C8889j.m16825a(b4);
        this.f6985g = C8889j.m16825a(b5);
        this.f6986h = C8889j.m16825a(b6);
        this.f6987i = C8889j.m16825a(b7);
        this.f6988j = C8889j.m16825a(b8);
        this.f6989k = C8889j.m16825a(b9);
        this.f6990l = C8889j.m16825a(b10);
        this.f6991m = C8889j.m16825a(b11);
        this.f6992n = f;
        this.f6993o = f2;
        this.f6994p = latLngBounds;
    }

    /* renamed from: a */
    public static GoogleMapOptions m31788a(Context context, AttributeSet attributeSet) {
        if (context == null || attributeSet == null) {
            return null;
        }
        TypedArray obtainAttributes = context.getResources().obtainAttributes(attributeSet, R$styleable.MapAttrs);
        GoogleMapOptions googleMapOptions = new GoogleMapOptions();
        if (obtainAttributes.hasValue(R$styleable.MapAttrs_mapType)) {
            googleMapOptions.m31775g(obtainAttributes.getInt(R$styleable.MapAttrs_mapType, -1));
        }
        if (obtainAttributes.hasValue(R$styleable.MapAttrs_zOrderOnTop)) {
            googleMapOptions.m31772i(obtainAttributes.getBoolean(R$styleable.MapAttrs_zOrderOnTop, false));
        }
        if (obtainAttributes.hasValue(R$styleable.MapAttrs_useViewLifecycle)) {
            googleMapOptions.m31773h(obtainAttributes.getBoolean(R$styleable.MapAttrs_useViewLifecycle, false));
        }
        if (obtainAttributes.hasValue(R$styleable.MapAttrs_uiCompass)) {
            googleMapOptions.m31782b(obtainAttributes.getBoolean(R$styleable.MapAttrs_uiCompass, true));
        }
        if (obtainAttributes.hasValue(R$styleable.MapAttrs_uiRotateGestures)) {
            googleMapOptions.m31777e(obtainAttributes.getBoolean(R$styleable.MapAttrs_uiRotateGestures, true));
        }
        if (obtainAttributes.hasValue(R$styleable.MapAttrs_uiScrollGestures)) {
            googleMapOptions.m31776f(obtainAttributes.getBoolean(R$styleable.MapAttrs_uiScrollGestures, true));
        }
        if (obtainAttributes.hasValue(R$styleable.MapAttrs_uiTiltGestures)) {
            googleMapOptions.m31774g(obtainAttributes.getBoolean(R$styleable.MapAttrs_uiTiltGestures, true));
        }
        if (obtainAttributes.hasValue(R$styleable.MapAttrs_uiZoomGestures)) {
            googleMapOptions.m31770k(obtainAttributes.getBoolean(R$styleable.MapAttrs_uiZoomGestures, true));
        }
        if (obtainAttributes.hasValue(R$styleable.MapAttrs_uiZoomControls)) {
            googleMapOptions.m31771j(obtainAttributes.getBoolean(R$styleable.MapAttrs_uiZoomControls, true));
        }
        if (obtainAttributes.hasValue(R$styleable.MapAttrs_liteMode)) {
            googleMapOptions.m31779c(obtainAttributes.getBoolean(R$styleable.MapAttrs_liteMode, false));
        }
        if (obtainAttributes.hasValue(R$styleable.MapAttrs_uiMapToolbar)) {
            googleMapOptions.m31778d(obtainAttributes.getBoolean(R$styleable.MapAttrs_uiMapToolbar, true));
        }
        if (obtainAttributes.hasValue(R$styleable.MapAttrs_ambientEnabled)) {
            googleMapOptions.m31785a(obtainAttributes.getBoolean(R$styleable.MapAttrs_ambientEnabled, false));
        }
        if (obtainAttributes.hasValue(R$styleable.MapAttrs_cameraMinZoomPreference)) {
            googleMapOptions.m31784b(obtainAttributes.getFloat(R$styleable.MapAttrs_cameraMinZoomPreference, Float.NEGATIVE_INFINITY));
        }
        if (obtainAttributes.hasValue(R$styleable.MapAttrs_cameraMinZoomPreference)) {
            googleMapOptions.m31789a(obtainAttributes.getFloat(R$styleable.MapAttrs_cameraMaxZoomPreference, Float.POSITIVE_INFINITY));
        }
        googleMapOptions.m31786a(m31783b(context, attributeSet));
        googleMapOptions.m31787a(m31780c(context, attributeSet));
        obtainAttributes.recycle();
        return googleMapOptions;
    }

    /* renamed from: b */
    public static LatLngBounds m31783b(Context context, AttributeSet attributeSet) {
        LatLngBounds latLngBounds = null;
        if (context != null) {
            if (attributeSet == null) {
                latLngBounds = null;
            } else {
                TypedArray obtainAttributes = context.getResources().obtainAttributes(attributeSet, R$styleable.MapAttrs);
                Float valueOf = obtainAttributes.hasValue(R$styleable.MapAttrs_latLngBoundsSouthWestLatitude) ? Float.valueOf(obtainAttributes.getFloat(R$styleable.MapAttrs_latLngBoundsSouthWestLatitude, 0.0f)) : null;
                Float valueOf2 = obtainAttributes.hasValue(R$styleable.MapAttrs_latLngBoundsSouthWestLongitude) ? Float.valueOf(obtainAttributes.getFloat(R$styleable.MapAttrs_latLngBoundsSouthWestLongitude, 0.0f)) : null;
                Float valueOf3 = obtainAttributes.hasValue(R$styleable.MapAttrs_latLngBoundsNorthEastLatitude) ? Float.valueOf(obtainAttributes.getFloat(R$styleable.MapAttrs_latLngBoundsNorthEastLatitude, 0.0f)) : null;
                Float valueOf4 = obtainAttributes.hasValue(R$styleable.MapAttrs_latLngBoundsNorthEastLongitude) ? Float.valueOf(obtainAttributes.getFloat(R$styleable.MapAttrs_latLngBoundsNorthEastLongitude, 0.0f)) : null;
                obtainAttributes.recycle();
                latLngBounds = null;
                if (valueOf != null) {
                    latLngBounds = null;
                    if (valueOf2 != null) {
                        latLngBounds = null;
                        if (valueOf3 != null) {
                            latLngBounds = valueOf4 == null ? null : new LatLngBounds(new LatLng(valueOf.floatValue(), valueOf2.floatValue()), new LatLng(valueOf3.floatValue(), valueOf4.floatValue()));
                        }
                    }
                }
            }
        }
        return latLngBounds;
    }

    /* renamed from: c */
    public static CameraPosition m31780c(Context context, AttributeSet attributeSet) {
        if (context == null || attributeSet == null) {
            return null;
        }
        TypedArray obtainAttributes = context.getResources().obtainAttributes(attributeSet, R$styleable.MapAttrs);
        LatLng latLng = new LatLng(obtainAttributes.hasValue(R$styleable.MapAttrs_cameraTargetLat) ? obtainAttributes.getFloat(R$styleable.MapAttrs_cameraTargetLat, 0.0f) : 0.0f, obtainAttributes.hasValue(R$styleable.MapAttrs_cameraTargetLng) ? obtainAttributes.getFloat(R$styleable.MapAttrs_cameraTargetLng, 0.0f) : 0.0f);
        CameraPosition.C3580a c = CameraPosition.m31755c();
        c.m31752a(latLng);
        if (obtainAttributes.hasValue(R$styleable.MapAttrs_cameraZoom)) {
            c.m31750c(obtainAttributes.getFloat(R$styleable.MapAttrs_cameraZoom, 0.0f));
        }
        if (obtainAttributes.hasValue(R$styleable.MapAttrs_cameraBearing)) {
            c.m31753a(obtainAttributes.getFloat(R$styleable.MapAttrs_cameraBearing, 0.0f));
        }
        if (obtainAttributes.hasValue(R$styleable.MapAttrs_cameraTilt)) {
            c.m31751b(obtainAttributes.getFloat(R$styleable.MapAttrs_cameraTilt, 0.0f));
        }
        obtainAttributes.recycle();
        return c.m31754a();
    }

    /* renamed from: H */
    public final LatLngBounds m31793H() {
        return this.f6994p;
    }

    /* renamed from: I */
    public final int m31792I() {
        return this.f6981c;
    }

    /* renamed from: J */
    public final Float m31791J() {
        return this.f6993o;
    }

    /* renamed from: K */
    public final Float m31790K() {
        return this.f6992n;
    }

    /* renamed from: a */
    public final GoogleMapOptions m31789a(float f) {
        this.f6993o = Float.valueOf(f);
        return this;
    }

    /* renamed from: a */
    public final GoogleMapOptions m31787a(CameraPosition cameraPosition) {
        this.f6982d = cameraPosition;
        return this;
    }

    /* renamed from: a */
    public final GoogleMapOptions m31786a(LatLngBounds latLngBounds) {
        this.f6994p = latLngBounds;
        return this;
    }

    /* renamed from: a */
    public final GoogleMapOptions m31785a(boolean z) {
        this.f6991m = Boolean.valueOf(z);
        return this;
    }

    /* renamed from: b */
    public final GoogleMapOptions m31784b(float f) {
        this.f6992n = Float.valueOf(f);
        return this;
    }

    /* renamed from: b */
    public final GoogleMapOptions m31782b(boolean z) {
        this.f6984f = Boolean.valueOf(z);
        return this;
    }

    /* renamed from: c */
    public final GoogleMapOptions m31779c(boolean z) {
        this.f6989k = Boolean.valueOf(z);
        return this;
    }

    /* renamed from: c */
    public final CameraPosition m31781c() {
        return this.f6982d;
    }

    /* renamed from: d */
    public final GoogleMapOptions m31778d(boolean z) {
        this.f6990l = Boolean.valueOf(z);
        return this;
    }

    /* renamed from: e */
    public final GoogleMapOptions m31777e(boolean z) {
        this.f6988j = Boolean.valueOf(z);
        return this;
    }

    /* renamed from: f */
    public final GoogleMapOptions m31776f(boolean z) {
        this.f6985g = Boolean.valueOf(z);
        return this;
    }

    /* renamed from: g */
    public final GoogleMapOptions m31775g(int i) {
        this.f6981c = i;
        return this;
    }

    /* renamed from: g */
    public final GoogleMapOptions m31774g(boolean z) {
        this.f6987i = Boolean.valueOf(z);
        return this;
    }

    /* renamed from: h */
    public final GoogleMapOptions m31773h(boolean z) {
        this.f6980b = Boolean.valueOf(z);
        return this;
    }

    /* renamed from: i */
    public final GoogleMapOptions m31772i(boolean z) {
        this.f6979a = Boolean.valueOf(z);
        return this;
    }

    /* renamed from: j */
    public final GoogleMapOptions m31771j(boolean z) {
        this.f6983e = Boolean.valueOf(z);
        return this;
    }

    /* renamed from: k */
    public final GoogleMapOptions m31770k(boolean z) {
        this.f6986h = Boolean.valueOf(z);
        return this;
    }

    public final String toString() {
        C7018s.C7019a a = C7018s.m21298a(this);
        a.m21295a("MapType", Integer.valueOf(this.f6981c));
        a.m21295a("LiteMode", this.f6989k);
        a.m21295a("Camera", this.f6982d);
        a.m21295a("CompassEnabled", this.f6984f);
        a.m21295a("ZoomControlsEnabled", this.f6983e);
        a.m21295a("ScrollGesturesEnabled", this.f6985g);
        a.m21295a("ZoomGesturesEnabled", this.f6986h);
        a.m21295a("TiltGesturesEnabled", this.f6987i);
        a.m21295a("RotateGesturesEnabled", this.f6988j);
        a.m21295a("MapToolbarEnabled", this.f6990l);
        a.m21295a("AmbientEnabled", this.f6991m);
        a.m21295a("MinZoomPreference", this.f6992n);
        a.m21295a("MaxZoomPreference", this.f6993o);
        a.m21295a("LatLngBoundsForCameraTarget", this.f6994p);
        a.m21295a("ZOrderOnTop", this.f6979a);
        a.m21295a("UseViewLifecycleInFragment", this.f6980b);
        return a.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21228a(parcel, 2, C8889j.m16824a(this.f6979a));
        C7031b.m21228a(parcel, 3, C8889j.m16824a(this.f6980b));
        C7031b.m21225a(parcel, 4, m31792I());
        C7031b.m21220a(parcel, 5, (Parcelable) m31781c(), i, false);
        C7031b.m21228a(parcel, 6, C8889j.m16824a(this.f6983e));
        C7031b.m21228a(parcel, 7, C8889j.m16824a(this.f6984f));
        C7031b.m21228a(parcel, 8, C8889j.m16824a(this.f6985g));
        C7031b.m21228a(parcel, 9, C8889j.m16824a(this.f6986h));
        C7031b.m21228a(parcel, 10, C8889j.m16824a(this.f6987i));
        C7031b.m21228a(parcel, 11, C8889j.m16824a(this.f6988j));
        C7031b.m21228a(parcel, 12, C8889j.m16824a(this.f6989k));
        C7031b.m21228a(parcel, 14, C8889j.m16824a(this.f6990l));
        C7031b.m21228a(parcel, 15, C8889j.m16824a(this.f6991m));
        C7031b.m21218a(parcel, 16, m31790K(), false);
        C7031b.m21218a(parcel, 17, m31791J(), false);
        C7031b.m21220a(parcel, 18, (Parcelable) m31793H(), i, false);
        C7031b.m21229a(parcel, a);
    }
}
