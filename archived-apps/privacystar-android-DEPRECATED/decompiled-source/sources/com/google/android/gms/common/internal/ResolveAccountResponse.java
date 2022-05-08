package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.IAccountAccessor;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class(creator = "ResolveAccountResponseCreator")
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/ResolveAccountResponse.class */
public class ResolveAccountResponse extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ResolveAccountResponse> CREATOR = new zan();
    @SafeParcelable.Field(getter = "getConnectionResult", m344id = 3)
    private ConnectionResult zadh;
    @SafeParcelable.Field(getter = "getSaveDefaultAccount", m344id = 4)
    private boolean zagf;
    @SafeParcelable.VersionField(m342id = 1)
    private final int zale;
    @SafeParcelable.Field(m344id = 2)
    private IBinder zanw;
    @SafeParcelable.Field(getter = "isFromCrossClientAuth", m344id = 5)
    private boolean zapb;

    public ResolveAccountResponse(int i) {
        this(new ConnectionResult(i, null));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public ResolveAccountResponse(@SafeParcelable.Param(m343id = 1) int i, @SafeParcelable.Param(m343id = 2) IBinder iBinder, @SafeParcelable.Param(m343id = 3) ConnectionResult connectionResult, @SafeParcelable.Param(m343id = 4) boolean z, @SafeParcelable.Param(m343id = 5) boolean z2) {
        this.zale = i;
        this.zanw = iBinder;
        this.zadh = connectionResult;
        this.zagf = z;
        this.zapb = z2;
    }

    public ResolveAccountResponse(ConnectionResult connectionResult) {
        this(1, null, connectionResult, false, false);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ResolveAccountResponse)) {
            return false;
        }
        ResolveAccountResponse resolveAccountResponse = (ResolveAccountResponse) obj;
        return this.zadh.equals(resolveAccountResponse.zadh) && getAccountAccessor().equals(resolveAccountResponse.getAccountAccessor());
    }

    public IAccountAccessor getAccountAccessor() {
        return IAccountAccessor.Stub.asInterface(this.zanw);
    }

    public ConnectionResult getConnectionResult() {
        return this.zadh;
    }

    public boolean getSaveDefaultAccount() {
        return this.zagf;
    }

    public boolean isFromCrossClientAuth() {
        return this.zapb;
    }

    public ResolveAccountResponse setAccountAccessor(IAccountAccessor iAccountAccessor) {
        this.zanw = iAccountAccessor == null ? null : iAccountAccessor.asBinder();
        return this;
    }

    public ResolveAccountResponse setIsFromCrossClientAuth(boolean z) {
        this.zapb = z;
        return this;
    }

    public ResolveAccountResponse setSaveDefaultAccount(boolean z) {
        this.zagf = z;
        return this;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.zale);
        SafeParcelWriter.writeIBinder(parcel, 2, this.zanw, false);
        SafeParcelWriter.writeParcelable(parcel, 3, getConnectionResult(), i, false);
        SafeParcelWriter.writeBoolean(parcel, 4, getSaveDefaultAccount());
        SafeParcelWriter.writeBoolean(parcel, 5, isFromCrossClientAuth());
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
