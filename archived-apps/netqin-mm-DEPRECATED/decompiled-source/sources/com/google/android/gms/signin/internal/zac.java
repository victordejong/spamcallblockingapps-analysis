package com.google.android.gms.signin.internal;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Status;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/signin/internal/zac.class */
public interface zac extends IInterface {
    /* renamed from: a */
    void mo8639a(ConnectionResult connectionResult, zab zabVar) throws RemoteException;

    /* renamed from: a */
    void mo8638a(Status status, GoogleSignInAccount googleSignInAccount) throws RemoteException;

    /* renamed from: a */
    void mo8637a(zag zagVar) throws RemoteException;

    /* renamed from: a */
    void mo8636a(zam zamVar) throws RemoteException;

    /* renamed from: c */
    void mo8635c(Status status) throws RemoteException;

    /* renamed from: e */
    void mo8634e(Status status) throws RemoteException;
}
