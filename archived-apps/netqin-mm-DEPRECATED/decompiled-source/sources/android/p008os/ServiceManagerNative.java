package android.p008os;

import android.p008os.IPermissionController;
/* renamed from: android.os.ServiceManagerNative */
/* loaded from: classes-dex2jar.jar:android/os/ServiceManagerNative.class */
public abstract class ServiceManagerNative extends Binder implements IServiceManager {
    public ServiceManagerNative() {
        attachInterface(this, IServiceManager.descriptor);
    }

    public static IServiceManager asInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IServiceManager iServiceManager = (IServiceManager) iBinder.queryLocalInterface(IServiceManager.descriptor);
        return iServiceManager != null ? iServiceManager : new ServiceManagerProxy(iBinder);
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this;
    }

    @Override // android.os.Binder
    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
        try {
            if (i == 1) {
                parcel.enforceInterface(IServiceManager.descriptor);
                parcel2.writeStrongBinder(getService(parcel.readString()));
                return true;
            } else if (i == 2) {
                parcel.enforceInterface(IServiceManager.descriptor);
                parcel2.writeStrongBinder(checkService(parcel.readString()));
                return true;
            } else if (i == 3) {
                parcel.enforceInterface(IServiceManager.descriptor);
                addService(parcel.readString(), parcel.readStrongBinder());
                return true;
            } else if (i == 4) {
                parcel.enforceInterface(IServiceManager.descriptor);
                parcel2.writeStringArray(listServices());
                return true;
            } else if (i != 6) {
                return false;
            } else {
                parcel.enforceInterface(IServiceManager.descriptor);
                setPermissionController(IPermissionController.Stub.asInterface(parcel.readStrongBinder()));
                return true;
            }
        } catch (RemoteException e) {
            return false;
        }
    }
}
