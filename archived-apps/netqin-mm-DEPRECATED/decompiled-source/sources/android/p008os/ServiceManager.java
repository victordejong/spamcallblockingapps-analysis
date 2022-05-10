package android.p008os;

import android.util.Log;
import java.util.HashMap;
import java.util.Map;
/* renamed from: android.os.ServiceManager */
/* loaded from: classes-dex2jar.jar:android/os/ServiceManager.class */
public final class ServiceManager {
    public static final String TAG = "ServiceManager";
    public static HashMap<String, IBinder> sCache = new HashMap<>();
    public static IServiceManager sServiceManager;

    public static void addService(String str, IBinder iBinder) {
        try {
            getIServiceManager().addService(str, iBinder);
        } catch (RemoteException e) {
            Log.e(TAG, "error in addService", e);
        }
    }

    public static IBinder checkService(String str) {
        try {
            IBinder iBinder = sCache.get(str);
            return iBinder != null ? iBinder : getIServiceManager().checkService(str);
        } catch (RemoteException e) {
            Log.e(TAG, "error in checkService", e);
            return null;
        }
    }

    public static IServiceManager getIServiceManager() {
        IServiceManager iServiceManager = sServiceManager;
        if (iServiceManager != null) {
            return iServiceManager;
        }
        IServiceManager asInterface = ServiceManagerNative.asInterface(BinderInternal.getContextObject());
        sServiceManager = asInterface;
        return asInterface;
    }

    public static IBinder getService(String str) {
        try {
            IBinder iBinder = sCache.get(str);
            return iBinder != null ? iBinder : getIServiceManager().getService(str);
        } catch (RemoteException e) {
            Log.e(TAG, "error in getService", e);
            return null;
        }
    }

    public static void initServiceCache(Map<String, IBinder> map) {
        if (sCache.size() == 0 || !Process.supportsProcesses()) {
            sCache.putAll(map);
            return;
        }
        throw new IllegalStateException("setServiceCache may only be called once");
    }

    public static String[] listServices() throws RemoteException {
        try {
            return getIServiceManager().listServices();
        } catch (RemoteException e) {
            Log.e(TAG, "error in listServices", e);
            return null;
        }
    }
}
