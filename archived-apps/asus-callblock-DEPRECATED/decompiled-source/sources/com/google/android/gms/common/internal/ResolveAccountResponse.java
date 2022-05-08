package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.v;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/ResolveAccountResponse.class */
public class ResolveAccountResponse extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ResolveAccountResponse> CREATOR = new d();

    /* renamed from: a  reason: collision with root package name */
    final int f3990a;

    /* renamed from: b  reason: collision with root package name */
    IBinder f3991b;
    ConnectionResult c;
    boolean d;
    boolean e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ResolveAccountResponse(int i, IBinder iBinder, ConnectionResult connectionResult, boolean z, boolean z2) {
        this.f3990a = i;
        this.f3991b = iBinder;
        this.c = connectionResult;
        this.d = z;
        this.e = z2;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this != obj) {
            if (!(obj instanceof ResolveAccountResponse)) {
                z = false;
            } else {
                ResolveAccountResponse resolveAccountResponse = (ResolveAccountResponse) obj;
                if (!this.c.equals(resolveAccountResponse.c) || !v.a.a(this.f3991b).equals(v.a.a(resolveAccountResponse.f3991b))) {
                    z = false;
                }
            }
        }
        return z;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        d.a(this, parcel, i);
    }
}
