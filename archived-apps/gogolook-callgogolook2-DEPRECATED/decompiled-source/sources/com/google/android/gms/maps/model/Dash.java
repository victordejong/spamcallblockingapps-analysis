package com.google.android.gms.maps.model;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/model/Dash.class */
public final class Dash extends PatternItem {

    /* renamed from: c */
    public final float f7044c;

    @Override // com.google.android.gms.maps.model.PatternItem
    public final String toString() {
        float f = this.f7044c;
        StringBuilder sb = new StringBuilder(30);
        sb.append("[Dash: length=");
        sb.append(f);
        sb.append("]");
        return sb.toString();
    }
}
