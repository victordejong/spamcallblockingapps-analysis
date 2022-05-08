package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7354p0;
import p081h.p203i.p204a.p224e.p259j.p260a.C7180b3;
@AbstractC7354p0
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzje.class */
public final class zzje extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzje> CREATOR = new C7180b3();

    /* renamed from: a */
    public final String f6748a;

    /* renamed from: b */
    public final String f6749b;

    public zzje(String str, String str2) {
        this.f6748a = str;
        this.f6749b = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21215a(parcel, 1, this.f6748a, false);
        C7031b.m21215a(parcel, 2, this.f6749b, false);
        C7031b.m21229a(parcel, a);
    }
}
