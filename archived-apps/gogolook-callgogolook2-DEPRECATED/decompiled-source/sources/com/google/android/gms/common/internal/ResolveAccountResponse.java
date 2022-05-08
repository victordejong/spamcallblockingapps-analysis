package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import p081h.p203i.p204a.p224e.p235d.p240n.AbstractC7003m;
import p081h.p203i.p204a.p224e.p235d.p240n.C6995i0;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/internal/ResolveAccountResponse.class */
public class ResolveAccountResponse extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ResolveAccountResponse> CREATOR = new C6995i0();

    /* renamed from: a */
    public final int f6602a;

    /* renamed from: b */
    public IBinder f6603b;

    /* renamed from: c */
    public ConnectionResult f6604c;

    /* renamed from: d */
    public boolean f6605d;

    /* renamed from: e */
    public boolean f6606e;

    public ResolveAccountResponse(int i, IBinder iBinder, ConnectionResult connectionResult, boolean z, boolean z2) {
        this.f6602a = i;
        this.f6603b = iBinder;
        this.f6604c = connectionResult;
        this.f6605d = z;
        this.f6606e = z2;
    }

    /* renamed from: H */
    public ConnectionResult m31944H() {
        return this.f6604c;
    }

    /* renamed from: I */
    public boolean m31943I() {
        return this.f6605d;
    }

    /* renamed from: J */
    public boolean m31942J() {
        return this.f6606e;
    }

    /* renamed from: c */
    public AbstractC7003m m31941c() {
        return AbstractC7003m.AbstractBinderC7004a.m21330a(this.f6603b);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ResolveAccountResponse)) {
            return false;
        }
        ResolveAccountResponse resolveAccountResponse = (ResolveAccountResponse) obj;
        return this.f6604c.equals(resolveAccountResponse.f6604c) && m31941c().equals(resolveAccountResponse.m31941c());
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21225a(parcel, 1, this.f6602a);
        C7031b.m21222a(parcel, 2, this.f6603b, false);
        C7031b.m21220a(parcel, 3, (Parcelable) m31944H(), i, false);
        C7031b.m21212a(parcel, 4, m31943I());
        C7031b.m21212a(parcel, 5, m31942J());
        C7031b.m21229a(parcel, a);
    }
}
