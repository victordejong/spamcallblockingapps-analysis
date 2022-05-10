package com.google.android.gms.common.internal;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.annotation.KeepForSdk;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/IGmsServiceBroker.class */
public interface IGmsServiceBroker extends IInterface {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/IGmsServiceBroker$Stub.class */
    public static abstract class Stub extends Binder implements IGmsServiceBroker {

        /* renamed from: com.google.android.gms.common.internal.IGmsServiceBroker$Stub$a */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/IGmsServiceBroker$Stub$a.class */
        public static final class C7239a implements IGmsServiceBroker {

            /* renamed from: a */
            public final IBinder f23452a;

            public C7239a(IBinder iBinder) {
                this.f23452a = iBinder;
            }

            @Override // com.google.android.gms.common.internal.IGmsServiceBroker
            /* renamed from: a */
            public final void mo17297a(IGmsCallbacks iGmsCallbacks, GetServiceRequest getServiceRequest) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                    obtain.writeStrongBinder(iGmsCallbacks != null ? iGmsCallbacks.asBinder() : null);
                    if (getServiceRequest != null) {
                        obtain.writeInt(1);
                        getServiceRequest.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f23452a.transact(46, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.f23452a;
            }
        }

        public Stub() {
            attachInterface(this, "com.google.android.gms.common.internal.IGmsServiceBroker");
        }

        @Override // android.os.IInterface
        @KeepForSdk
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            IGmsCallbacks iGmsCallbacks;
            if (i > 16777215) {
                return super.onTransact(i, parcel, parcel2, i2);
            }
            parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
            IBinder readStrongBinder = parcel.readStrongBinder();
            GetServiceRequest getServiceRequest = null;
            if (readStrongBinder == null) {
                iGmsCallbacks = null;
            } else {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.common.internal.IGmsCallbacks");
                iGmsCallbacks = queryLocalInterface instanceof IGmsCallbacks ? (IGmsCallbacks) queryLocalInterface : new zzo(readStrongBinder);
            }
            if (i == 46) {
                if (parcel.readInt() != 0) {
                    getServiceRequest = GetServiceRequest.CREATOR.createFromParcel(parcel);
                }
                mo17297a(iGmsCallbacks, getServiceRequest);
                parcel2.writeNoException();
                return true;
            } else if (i == 47) {
                if (parcel.readInt() != 0) {
                    zzv.CREATOR.createFromParcel(parcel);
                }
                throw new UnsupportedOperationException();
            } else {
                parcel.readInt();
                if (i != 4) {
                    parcel.readString();
                }
                if (i != 1) {
                    if (!(i == 2 || i == 23 || i == 25 || i == 27)) {
                        if (i != 30) {
                            if (i != 34) {
                                if (!(i == 41 || i == 43 || i == 37 || i == 38)) {
                                    switch (i) {
                                        case 9:
                                            parcel.readString();
                                            parcel.createStringArray();
                                            parcel.readString();
                                            parcel.readStrongBinder();
                                            parcel.readString();
                                            if (parcel.readInt() != 0) {
                                                Bundle bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                                                break;
                                            }
                                            break;
                                        case 10:
                                            parcel.readString();
                                            parcel.createStringArray();
                                            break;
                                        case 19:
                                            parcel.readStrongBinder();
                                            if (parcel.readInt() != 0) {
                                                Bundle bundle2 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                                                break;
                                            }
                                            break;
                                    }
                                }
                            } else {
                                parcel.readString();
                            }
                        }
                        parcel.createStringArray();
                        parcel.readString();
                        if (parcel.readInt() != 0) {
                            Bundle bundle3 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                        }
                    }
                    if (parcel.readInt() != 0) {
                        Bundle bundle4 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    }
                } else {
                    parcel.readString();
                    parcel.createStringArray();
                    parcel.readString();
                    if (parcel.readInt() != 0) {
                        Bundle bundle5 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    }
                }
                throw new UnsupportedOperationException();
            }
        }
    }

    @KeepForSdk
    /* renamed from: a */
    void mo17297a(IGmsCallbacks iGmsCallbacks, GetServiceRequest getServiceRequest) throws RemoteException;
}
