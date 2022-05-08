package com.google.android.gms.auth.api.accounttransfer;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import p081h.p203i.p204a.p224e.p226b.p227e.p228d.C6723e;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/accounttransfer/DeviceMetaData.class */
public class DeviceMetaData extends AbstractSafeParcelable {
    public static final Parcelable.Creator<DeviceMetaData> CREATOR = new C6723e();

    /* renamed from: a */
    public final int f6351a;

    /* renamed from: b */
    public boolean f6352b;

    /* renamed from: c */
    public long f6353c;

    /* renamed from: d */
    public final boolean f6354d;

    public DeviceMetaData(int i, boolean z, long j, boolean z2) {
        this.f6351a = i;
        this.f6352b = z;
        this.f6353c = j;
        this.f6354d = z2;
    }

    /* renamed from: H */
    public boolean m32084H() {
        return this.f6354d;
    }

    /* renamed from: I */
    public boolean m32083I() {
        return this.f6352b;
    }

    /* renamed from: c */
    public long m32082c() {
        return this.f6353c;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21225a(parcel, 1, this.f6351a);
        C7031b.m21212a(parcel, 2, m32083I());
        C7031b.m21224a(parcel, 3, m32082c());
        C7031b.m21212a(parcel, 4, m32084H());
        C7031b.m21229a(parcel, a);
    }
}
