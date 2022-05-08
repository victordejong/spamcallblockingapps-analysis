package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p285m.p287b.C8960d;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzad.class */
public final class zzad extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzad> CREATOR = new C8960d();

    /* renamed from: a */
    public final String f7147a;

    /* renamed from: b */
    public final zzaa f7148b;

    /* renamed from: c */
    public final String f7149c;

    /* renamed from: d */
    public final long f7150d;

    public zzad(zzad zzadVar, long j) {
        C7021t.m21290a(zzadVar);
        this.f7147a = zzadVar.f7147a;
        this.f7148b = zzadVar.f7148b;
        this.f7149c = zzadVar.f7149c;
        this.f7150d = j;
    }

    public zzad(String str, zzaa zzaaVar, String str2, long j) {
        this.f7147a = str;
        this.f7148b = zzaaVar;
        this.f7149c = str2;
        this.f7150d = j;
    }

    public final String toString() {
        String str = this.f7149c;
        String str2 = this.f7147a;
        String valueOf = String.valueOf(this.f7148b);
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 21 + String.valueOf(str2).length() + String.valueOf(valueOf).length());
        sb.append("origin=");
        sb.append(str);
        sb.append(",name=");
        sb.append(str2);
        sb.append(",params=");
        sb.append(valueOf);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21215a(parcel, 2, this.f7147a, false);
        C7031b.m21220a(parcel, 3, (Parcelable) this.f7148b, i, false);
        C7031b.m21215a(parcel, 4, this.f7149c, false);
        C7031b.m21224a(parcel, 5, this.f7150d);
        C7031b.m21229a(parcel, a);
    }
}
