package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/AuthAccountRequest.class */
public class AuthAccountRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<AuthAccountRequest> CREATOR = new j();

    /* renamed from: a  reason: collision with root package name */
    final int f3981a;

    /* renamed from: b  reason: collision with root package name */
    final IBinder f3982b;
    final Scope[] c;
    Integer d;
    Integer e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AuthAccountRequest(int i, IBinder iBinder, Scope[] scopeArr, Integer num, Integer num2) {
        this.f3981a = i;
        this.f3982b = iBinder;
        this.c = scopeArr;
        this.d = num;
        this.e = num2;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        j.a(this, parcel, i);
    }
}
