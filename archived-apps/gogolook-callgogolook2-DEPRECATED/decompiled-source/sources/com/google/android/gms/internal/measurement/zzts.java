package com.google.android.gms.internal.measurement;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.List;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p259j.p276q.C8645j2;
import p081h.p203i.p325c.p358p.AbstractC9836c;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzts.class */
public final class zzts extends AbstractSafeParcelable implements AbstractC9836c {
    public static final Parcelable.Creator<zzts> CREATOR = new C8645j2();

    /* renamed from: a */
    public final Uri f6905a;

    /* renamed from: b */
    public final Uri f6906b;

    /* renamed from: c */
    public final List<zztt> f6907c;

    public zzts(Uri uri, Uri uri2, List<zztt> list) {
        this.f6905a = uri;
        this.f6906b = uri2;
        this.f6907c = list;
    }

    /* renamed from: H */
    public final Uri m31828H() {
        return this.f6905a;
    }

    /* renamed from: I */
    public final List<zztt> m31827I() {
        return this.f6907c;
    }

    /* renamed from: c */
    public final Uri m31826c() {
        return this.f6906b;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21220a(parcel, 1, (Parcelable) m31828H(), i, false);
        C7031b.m21220a(parcel, 2, (Parcelable) m31826c(), i, false);
        C7031b.m21201c(parcel, 3, m31827I(), false);
        C7031b.m21229a(parcel, a);
    }
}
