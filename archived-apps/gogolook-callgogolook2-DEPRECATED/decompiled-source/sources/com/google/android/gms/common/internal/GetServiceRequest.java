package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import p081h.p203i.p204a.p224e.p235d.C6793d;
import p081h.p203i.p204a.p224e.p235d.p240n.AbstractC7003m;
import p081h.p203i.p204a.p224e.p235d.p240n.BinderC6963a;
import p081h.p203i.p204a.p224e.p235d.p240n.C7006m0;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/internal/GetServiceRequest.class */
public class GetServiceRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<GetServiceRequest> CREATOR = new C7006m0();

    /* renamed from: a */
    public final int f6586a;

    /* renamed from: b */
    public final int f6587b;

    /* renamed from: c */
    public int f6588c;

    /* renamed from: d */
    public String f6589d;

    /* renamed from: e */
    public IBinder f6590e;

    /* renamed from: f */
    public Scope[] f6591f;

    /* renamed from: g */
    public Bundle f6592g;

    /* renamed from: h */
    public Account f6593h;

    /* renamed from: i */
    public Feature[] f6594i;

    /* renamed from: j */
    public Feature[] f6595j;

    /* renamed from: k */
    public boolean f6596k;

    /* renamed from: l */
    public int f6597l;

    public GetServiceRequest(int i) {
        this.f6586a = 4;
        this.f6588c = C6793d.f16688a;
        this.f6587b = i;
        this.f6596k = true;
    }

    public GetServiceRequest(int i, int i2, int i3, String str, IBinder iBinder, Scope[] scopeArr, Bundle bundle, Account account, Feature[] featureArr, Feature[] featureArr2, boolean z, int i4) {
        this.f6586a = i;
        this.f6587b = i2;
        this.f6588c = i3;
        if ("com.google.android.gms".equals(str)) {
            this.f6589d = "com.google.android.gms";
        } else {
            this.f6589d = str;
        }
        if (i < 2) {
            this.f6593h = iBinder != null ? BinderC6963a.m21464a(AbstractC7003m.AbstractBinderC7004a.m21330a(iBinder)) : null;
        } else {
            this.f6590e = iBinder;
            this.f6593h = account;
        }
        this.f6591f = scopeArr;
        this.f6592g = bundle;
        this.f6594i = featureArr;
        this.f6595j = featureArr2;
        this.f6596k = z;
        this.f6597l = i4;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21225a(parcel, 1, this.f6586a);
        C7031b.m21225a(parcel, 2, this.f6587b);
        C7031b.m21225a(parcel, 3, this.f6588c);
        C7031b.m21215a(parcel, 4, this.f6589d, false);
        C7031b.m21222a(parcel, 5, this.f6590e, false);
        C7031b.m21209a(parcel, 6, (Parcelable[]) this.f6591f, i, false);
        C7031b.m21223a(parcel, 7, this.f6592g, false);
        C7031b.m21220a(parcel, 8, (Parcelable) this.f6593h, i, false);
        C7031b.m21209a(parcel, 10, (Parcelable[]) this.f6594i, i, false);
        C7031b.m21209a(parcel, 11, (Parcelable[]) this.f6595j, i, false);
        C7031b.m21212a(parcel, 12, this.f6596k);
        C7031b.m21225a(parcel, 13, this.f6597l);
        C7031b.m21229a(parcel, a);
    }
}
