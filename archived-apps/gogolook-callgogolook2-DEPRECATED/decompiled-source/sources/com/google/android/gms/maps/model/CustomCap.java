package com.google.android.gms.maps.model;

import p081h.p203i.p204a.p224e.p282l.p284k.C8906a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/model/CustomCap.class */
public final class CustomCap extends Cap {

    /* renamed from: d */
    public final C8906a f7042d;

    /* renamed from: e */
    public final float f7043e;

    @Override // com.google.android.gms.maps.model.Cap
    public final String toString() {
        String valueOf = String.valueOf(this.f7042d);
        float f = this.f7043e;
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 55);
        sb.append("[CustomCap: bitmapDescriptor=");
        sb.append(valueOf);
        sb.append(" refWidth=");
        sb.append(f);
        sb.append("]");
        return sb.toString();
    }
}
