package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class(creator = "ResolveAccountRequestCreator")
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/ResolveAccountRequest.class */
public class ResolveAccountRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ResolveAccountRequest> CREATOR = new zam();
    @SafeParcelable.VersionField(m342id = 1)
    private final int zale;
    @SafeParcelable.Field(getter = "getSessionId", m344id = 3)
    private final int zaoz;
    @SafeParcelable.Field(getter = "getSignInAccountHint", m344id = 4)
    private final GoogleSignInAccount zapa;
    @SafeParcelable.Field(getter = "getAccount", m344id = 2)
    private final Account zax;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public ResolveAccountRequest(@SafeParcelable.Param(m343id = 1) int i, @SafeParcelable.Param(m343id = 2) Account account, @SafeParcelable.Param(m343id = 3) int i2, @SafeParcelable.Param(m343id = 4) GoogleSignInAccount googleSignInAccount) {
        this.zale = i;
        this.zax = account;
        this.zaoz = i2;
        this.zapa = googleSignInAccount;
    }

    public ResolveAccountRequest(Account account, int i, GoogleSignInAccount googleSignInAccount) {
        this(2, account, i, googleSignInAccount);
    }

    public Account getAccount() {
        return this.zax;
    }

    public int getSessionId() {
        return this.zaoz;
    }

    @Nullable
    public GoogleSignInAccount getSignInAccountHint() {
        return this.zapa;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.zale);
        SafeParcelWriter.writeParcelable(parcel, 2, getAccount(), i, false);
        SafeParcelWriter.writeInt(parcel, 3, getSessionId());
        SafeParcelWriter.writeParcelable(parcel, 4, getSignInAccountHint(), i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
