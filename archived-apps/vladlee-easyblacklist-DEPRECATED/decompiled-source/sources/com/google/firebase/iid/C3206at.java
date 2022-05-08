package com.google.firebase.iid;

import android.os.IBinder;
import android.os.Message;
import android.os.Parcel;
/* renamed from: com.google.firebase.iid.at */
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/at.class */
public final class C3206at implements AbstractC3207au {

    /* renamed from: a */
    private final IBinder f19100a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3206at(IBinder iBinder) {
        this.f19100a = iBinder;
    }

    @Override // com.google.firebase.iid.AbstractC3207au
    /* renamed from: a */
    public final void mo513a(Message message) {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken("com.google.android.gms.iid.IMessengerCompat");
        obtain.writeInt(1);
        message.writeToParcel(obtain, 0);
        try {
            this.f19100a.transact(1, obtain, null, 1);
        } finally {
            obtain.recycle();
        }
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f19100a;
    }
}
