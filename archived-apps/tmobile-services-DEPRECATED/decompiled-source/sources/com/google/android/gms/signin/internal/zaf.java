package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.base.zaa;
import com.google.android.gms.internal.base.zad;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/signin/internal/zaf.class */
public abstract class zaf extends zaa implements zac {
    public zaf() {
        super("com.google.android.gms.signin.internal.ISignInCallbacks");
    }

    @Override // com.google.android.gms.internal.base.zaa
    protected boolean dispatchTransaction(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 3) {
            mo10850C0((ConnectionResult) zad.m14112b(parcel, ConnectionResult.CREATOR), (zab) zad.m14112b(parcel, zab.CREATOR));
        } else if (i == 4) {
            mo10848Z((Status) zad.m14112b(parcel, Status.CREATOR));
        } else if (i == 6) {
            mo10847i0((Status) zad.m14112b(parcel, Status.CREATOR));
        } else if (i == 7) {
            mo10846k((Status) zad.m14112b(parcel, Status.CREATOR), (GoogleSignInAccount) zad.m14112b(parcel, GoogleSignInAccount.CREATOR));
        } else if (i != 8) {
            return false;
        } else {
            mo10849E((zak) zad.m14112b(parcel, zak.CREATOR));
        }
        parcel2.writeNoException();
        return true;
    }
}
