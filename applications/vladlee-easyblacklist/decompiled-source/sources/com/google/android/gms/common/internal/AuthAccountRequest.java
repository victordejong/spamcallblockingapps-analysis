package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.IAccountAccessor;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
import javax.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/AuthAccountRequest.class */
public class AuthAccountRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<AuthAccountRequest> CREATOR = new zaa();

    /* renamed from: a */
    private final int f6678a;
    @Deprecated

    /* renamed from: b */
    private final IBinder f6679b;

    /* renamed from: c */
    private final Scope[] f6680c;

    /* renamed from: d */
    private Integer f6681d;

    /* renamed from: e */
    private Integer f6682e;

    /* renamed from: f */
    private Account f6683f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AuthAccountRequest(int i, IBinder iBinder, Scope[] scopeArr, Integer num, Integer num2, Account account) {
        this.f6678a = i;
        this.f6679b = iBinder;
        this.f6680c = scopeArr;
        this.f6681d = num;
        this.f6682e = num2;
        this.f6683f = account;
    }

    public AuthAccountRequest(Account account, Set<Scope> set) {
        this(3, null, (Scope[]) set.toArray(new Scope[set.size()]), null, null, (Account) Preconditions.checkNotNull(account));
    }

    @Deprecated
    public AuthAccountRequest(IAccountAccessor iAccountAccessor, Set<Scope> set) {
        this(3, iAccountAccessor.asBinder(), (Scope[]) set.toArray(new Scope[set.size()]), null, null, null);
    }

    public Account getAccount() {
        Account account = this.f6683f;
        if (account == null) {
            IBinder iBinder = this.f6679b;
            account = iBinder != null ? AccountAccessor.getAccountBinderSafe(IAccountAccessor.Stub.asInterface(iBinder)) : null;
        }
        return account;
    }

    @Nullable
    public Integer getOauthPolicy() {
        return this.f6681d;
    }

    @Nullable
    public Integer getPolicyAction() {
        return this.f6682e;
    }

    public Set<Scope> getScopes() {
        return new HashSet(Arrays.asList(this.f6680c));
    }

    public AuthAccountRequest setOauthPolicy(@Nullable Integer num) {
        this.f6681d = num;
        return this;
    }

    public AuthAccountRequest setPolicyAction(@Nullable Integer num) {
        this.f6682e = num;
        return this;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f6678a);
        SafeParcelWriter.writeIBinder(parcel, 2, this.f6679b, false);
        SafeParcelWriter.writeTypedArray(parcel, 3, this.f6680c, i, false);
        SafeParcelWriter.writeIntegerObject(parcel, 4, this.f6681d, false);
        SafeParcelWriter.writeIntegerObject(parcel, 5, this.f6682e, false);
        SafeParcelWriter.writeParcelable(parcel, 6, this.f6683f, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
