package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.base.zaa;
import com.google.android.gms.internal.base.zad;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/signin/internal/zaf.class */
public abstract class zaf extends zaa implements zac {
    public zaf() {
        super("com.google.android.gms.signin.internal.ISignInCallbacks");
    }

    @Override // com.google.android.gms.internal.base.zaa
    /* renamed from: a */
    public final boolean mo8633a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 3:
                mo8639a((ConnectionResult) zad.m10886a(parcel, ConnectionResult.CREATOR), (zab) zad.m10886a(parcel, zab.CREATOR));
                break;
            case 4:
                mo8635c((Status) zad.m10886a(parcel, Status.CREATOR));
                break;
            case 5:
            default:
                return false;
            case 6:
                mo8634e((Status) zad.m10886a(parcel, Status.CREATOR));
                break;
            case 7:
                mo8638a((Status) zad.m10886a(parcel, Status.CREATOR), (GoogleSignInAccount) zad.m10886a(parcel, GoogleSignInAccount.CREATOR));
                break;
            case 8:
                mo8636a((zam) zad.m10886a(parcel, zam.CREATOR));
                break;
            case 9:
                mo8637a((zag) zad.m10886a(parcel, zag.CREATOR));
                break;
        }
        parcel2.writeNoException();
        return true;
    }
}
