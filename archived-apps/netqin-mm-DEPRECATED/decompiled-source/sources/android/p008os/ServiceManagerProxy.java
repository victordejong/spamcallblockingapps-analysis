package android.p008os;
/* renamed from: android.os.ServiceManagerProxy */
/* loaded from: classes-dex2jar.jar:android/os/ServiceManagerProxy.class */
public class ServiceManagerProxy implements IServiceManager {
    public IBinder mRemote;

    public ServiceManagerProxy(IBinder iBinder) {
        this.mRemote = iBinder;
    }

    @Override // android.p008os.IServiceManager
    public void addService(String str, IBinder iBinder) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        obtain.writeInterfaceToken(IServiceManager.descriptor);
        obtain.writeString(str);
        obtain.writeStrongBinder(iBinder);
        this.mRemote.transact(3, obtain, obtain2, 0);
        obtain2.recycle();
        obtain.recycle();
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.mRemote;
    }

    @Override // android.p008os.IServiceManager
    public IBinder checkService(String str) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        obtain.writeInterfaceToken(IServiceManager.descriptor);
        obtain.writeString(str);
        this.mRemote.transact(2, obtain, obtain2, 0);
        IBinder readStrongBinder = obtain2.readStrongBinder();
        obtain2.recycle();
        obtain.recycle();
        return readStrongBinder;
    }

    @Override // android.p008os.IServiceManager
    public IBinder getService(String str) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        obtain.writeInterfaceToken(IServiceManager.descriptor);
        obtain.writeString(str);
        this.mRemote.transact(1, obtain, obtain2, 0);
        IBinder readStrongBinder = obtain2.readStrongBinder();
        obtain2.recycle();
        obtain.recycle();
        return readStrongBinder;
    }

    @Override // android.p008os.IServiceManager
    public String[] listServices() throws RemoteException {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        obtain.writeInterfaceToken(IServiceManager.descriptor);
        this.mRemote.transact(4, obtain, obtain2, 0);
        obtain2.readStringArray(null);
        obtain2.recycle();
        obtain.recycle();
        return null;
    }

    @Override // android.p008os.IServiceManager
    public void setPermissionController(IPermissionController iPermissionController) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        obtain.writeInterfaceToken(IServiceManager.descriptor);
        obtain.writeStrongBinder(iPermissionController.asBinder());
        this.mRemote.transact(6, obtain, obtain2, 0);
        obtain2.recycle();
        obtain.recycle();
    }
}
