package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.IAccountAccessor;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/GetServiceRequest.class */
public class GetServiceRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<GetServiceRequest> CREATOR = new zzd();

    /* renamed from: a */
    String f6755a;

    /* renamed from: b */
    IBinder f6756b;

    /* renamed from: c */
    Scope[] f6757c;

    /* renamed from: d */
    Bundle f6758d;

    /* renamed from: e */
    Account f6759e;

    /* renamed from: f */
    Feature[] f6760f;

    /* renamed from: g */
    Feature[] f6761g;

    /* renamed from: h */
    private final int f6762h;

    /* renamed from: i */
    private final int f6763i;

    /* renamed from: j */
    private int f6764j;

    /* renamed from: k */
    private boolean f6765k;

    public GetServiceRequest(int i) {
        this.f6762h = 4;
        this.f6764j = GoogleApiAvailabilityLight.GOOGLE_PLAY_SERVICES_VERSION_CODE;
        this.f6763i = i;
        this.f6765k = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public GetServiceRequest(int i, int i2, int i3, String str, IBinder iBinder, Scope[] scopeArr, Bundle bundle, Account account, Feature[] featureArr, Feature[] featureArr2, boolean z) {
        this.f6762h = i;
        this.f6763i = i2;
        this.f6764j = i3;
        if ("com.google.android.gms".equals(str)) {
            this.f6755a = "com.google.android.gms";
        } else {
            this.f6755a = str;
        }
        if (i < 2) {
            this.f6759e = iBinder != null ? AccountAccessor.getAccountBinderSafe(IAccountAccessor.Stub.asInterface(iBinder)) : null;
        } else {
            this.f6756b = iBinder;
            this.f6759e = account;
        }
        this.f6757c = scopeArr;
        this.f6758d = bundle;
        this.f6760f = featureArr;
        this.f6761g = featureArr2;
        this.f6765k = z;
    }

    public Bundle getExtraArgs() {
        return this.f6758d;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f6762h);
        SafeParcelWriter.writeInt(parcel, 2, this.f6763i);
        SafeParcelWriter.writeInt(parcel, 3, this.f6764j);
        SafeParcelWriter.writeString(parcel, 4, this.f6755a, false);
        SafeParcelWriter.writeIBinder(parcel, 5, this.f6756b, false);
        SafeParcelWriter.writeTypedArray(parcel, 6, this.f6757c, i, false);
        SafeParcelWriter.writeBundle(parcel, 7, this.f6758d, false);
        SafeParcelWriter.writeParcelable(parcel, 8, this.f6759e, i, false);
        SafeParcelWriter.writeTypedArray(parcel, 10, this.f6760f, i, false);
        SafeParcelWriter.writeTypedArray(parcel, 11, this.f6761g, i, false);
        SafeParcelWriter.writeBoolean(parcel, 12, this.f6765k);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
