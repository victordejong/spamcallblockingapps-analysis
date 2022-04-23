package com.google.android.gms.signin.internal;

import android.os.IInterface;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Status;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/signin/internal/zac.class */
public interface zac extends IInterface {
    void zaa(ConnectionResult connectionResult, zab zabVar);

    void zaa(Status status, GoogleSignInAccount googleSignInAccount);

    void zab(zak zakVar);

    void zag(Status status);

    void zah(Status status);
}
