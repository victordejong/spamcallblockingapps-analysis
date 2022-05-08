package com.google.firebase.appindexing.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p325c.p334l.p335c.C9472c;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/appindexing/internal/zzf.class */
public final class zzf extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzf> CREATOR = new C9472c();

    /* renamed from: a */
    public final int f7740a;

    static {
        new zzf(1);
        new zzf(2);
        new zzf(3);
    }

    public zzf(int i) {
        this.f7740a = i;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21225a(parcel, 1, this.f7740a);
        C7031b.m21229a(parcel, a);
    }
}
