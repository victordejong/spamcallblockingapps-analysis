package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Binder;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.internal.v;
import com.google.android.gms.common.l;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/a.class */
public final class a extends v.a {

    /* renamed from: a  reason: collision with root package name */
    int f3996a;

    /* JADX WARN: Finally extract failed */
    public static Account a(v vVar) {
        Account account = null;
        if (vVar != null) {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                try {
                    account = vVar.a();
                    Binder.restoreCallingIdentity(clearCallingIdentity);
                } catch (RemoteException e) {
                    Log.w("AccountAccessor", "Remote account accessor probably died");
                    Binder.restoreCallingIdentity(clearCallingIdentity);
                    account = null;
                }
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(clearCallingIdentity);
                throw th;
            }
        }
        return account;
    }

    @Override // com.google.android.gms.common.internal.v
    public final Account a() {
        int callingUid = Binder.getCallingUid();
        if (callingUid == this.f3996a) {
            return null;
        }
        if (l.a(callingUid)) {
            this.f3996a = callingUid;
            return null;
        }
        throw new SecurityException("Caller is not GooglePlayServices");
    }

    public final boolean equals(Object obj) {
        boolean z;
        if (this == obj) {
            z = true;
        } else if (!(obj instanceof a)) {
            z = false;
        } else {
            throw new NullPointerException();
        }
        return z;
    }
}
