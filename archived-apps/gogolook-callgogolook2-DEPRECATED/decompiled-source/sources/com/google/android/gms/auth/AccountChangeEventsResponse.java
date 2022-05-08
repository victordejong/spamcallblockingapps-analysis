package com.google.android.gms.auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.List;
import p081h.p203i.p204a.p224e.p226b.C6771h;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/AccountChangeEventsResponse.class */
public class AccountChangeEventsResponse extends AbstractSafeParcelable {
    public static final Parcelable.Creator<AccountChangeEventsResponse> CREATOR = new C6771h();

    /* renamed from: a */
    public final int f6342a;

    /* renamed from: b */
    public final List<AccountChangeEvent> f6343b;

    public AccountChangeEventsResponse(int i, List<AccountChangeEvent> list) {
        this.f6342a = i;
        C7021t.m21290a(list);
        this.f6343b = list;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21225a(parcel, 1, this.f6342a);
        C7031b.m21201c(parcel, 2, this.f6343b, false);
        C7031b.m21229a(parcel, a);
    }
}
