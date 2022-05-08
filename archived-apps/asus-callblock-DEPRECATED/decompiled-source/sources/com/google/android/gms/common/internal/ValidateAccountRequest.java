package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/ValidateAccountRequest.class */
public class ValidateAccountRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ValidateAccountRequest> CREATOR = new i();

    /* renamed from: a  reason: collision with root package name */
    final int f3994a;

    /* renamed from: b  reason: collision with root package name */
    final int f3995b;
    final IBinder c;
    final Scope[] d;
    final Bundle e;
    final String f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ValidateAccountRequest(int i, int i2, IBinder iBinder, Scope[] scopeArr, Bundle bundle, String str) {
        this.f3994a = i;
        this.f3995b = i2;
        this.c = iBinder;
        this.d = scopeArr;
        this.e = bundle;
        this.f = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        i.a(this, parcel, i);
    }
}
