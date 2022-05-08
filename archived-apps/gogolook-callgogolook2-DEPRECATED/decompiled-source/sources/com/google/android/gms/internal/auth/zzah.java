package com.google.android.gms.internal.auth;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p259j.p264e.C7517e;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/auth/zzah.class */
public final class zzah extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzah> CREATOR = new C7517e();

    /* renamed from: a */
    public final int f6804a = 1;

    /* renamed from: b */
    public final String f6805b;

    /* renamed from: c */
    public final PendingIntent f6806c;

    public zzah(int i, String str, PendingIntent pendingIntent) {
        C7021t.m21290a(str);
        this.f6805b = str;
        C7021t.m21290a(pendingIntent);
        this.f6806c = pendingIntent;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21225a(parcel, 1, this.f6804a);
        C7031b.m21215a(parcel, 2, this.f6805b, false);
        C7031b.m21220a(parcel, 3, (Parcelable) this.f6806c, i, false);
        C7031b.m21229a(parcel, a);
    }
}
