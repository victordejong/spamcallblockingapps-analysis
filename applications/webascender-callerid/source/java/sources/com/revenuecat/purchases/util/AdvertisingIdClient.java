package com.revenuecat.purchases.util;

import android.app.Application;
import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Parcel;
import android.os.RemoteException;
import android.util.Log;
import com.revenuecat.purchases.util.AdvertisingIdClient;
import java.util.Objects;
import java.util.concurrent.LinkedBlockingQueue;
import kotlin.r;
import kotlin.w.b.l;
import kotlin.w.c.k;
/* loaded from: classes2-dex2jar.jar:com/revenuecat/purchases/util/AdvertisingIdClient.class */
public final class AdvertisingIdClient {
    public static final AdvertisingIdClient INSTANCE = new AdvertisingIdClient();

    /* loaded from: classes2-dex2jar.jar:com/revenuecat/purchases/util/AdvertisingIdClient$AdInfo.class */
    public static final class AdInfo {

        /* renamed from: id */
        private final String f5054id;
        private final boolean isLimitAdTrackingEnabled;

        public AdInfo(String str, boolean z) {
            k.f(str, "id");
            this.f5054id = str;
            this.isLimitAdTrackingEnabled = z;
        }

        public static /* synthetic */ AdInfo copy$default(AdInfo adInfo, String str, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                str = adInfo.f5054id;
            }
            if ((i & 2) != 0) {
                z = adInfo.isLimitAdTrackingEnabled;
            }
            return adInfo.copy(str, z);
        }

        public final String component1() {
            return this.f5054id;
        }

        public final boolean component2() {
            return this.isLimitAdTrackingEnabled;
        }

        public final AdInfo copy(String str, boolean z) {
            k.f(str, "id");
            return new AdInfo(str, z);
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof AdInfo)) {
                    return false;
                }
                AdInfo adInfo = (AdInfo) obj;
                return k.b(this.f5054id, adInfo.f5054id) && this.isLimitAdTrackingEnabled == adInfo.isLimitAdTrackingEnabled;
            }
            return true;
        }

        public final String getId() {
            return this.f5054id;
        }

        public int hashCode() {
            String str = this.f5054id;
            int hashCode = str != null ? str.hashCode() : 0;
            boolean z = this.isLimitAdTrackingEnabled;
            int i = z ? 1 : 0;
            if (z) {
                i = 1;
            }
            return (hashCode * 31) + i;
        }

        public final boolean isLimitAdTrackingEnabled() {
            return this.isLimitAdTrackingEnabled;
        }

        public String toString() {
            return "AdInfo(id=" + this.f5054id + ", isLimitAdTrackingEnabled=" + this.isLimitAdTrackingEnabled + ")";
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/revenuecat/purchases/util/AdvertisingIdClient$AdvertisingConnection.class */
    public static final class AdvertisingConnection implements ServiceConnection {
        private final LinkedBlockingQueue<IBinder> queue = new LinkedBlockingQueue<>(1);
        private boolean retrieved;

        public final IBinder getBinder$purchases_release() throws InterruptedException {
            if (!this.retrieved) {
                this.retrieved = true;
                IBinder take = this.queue.take();
                Objects.requireNonNull(take, "null cannot be cast to non-null type android.os.IBinder");
                return take;
            }
            throw new IllegalStateException();
        }

        public final boolean getRetrieved$purchases_release() {
            return this.retrieved;
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            k.f(componentName, "name");
            k.f(iBinder, "service");
            try {
                this.queue.put(iBinder);
            } catch (InterruptedException e) {
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            k.f(componentName, "name");
        }

        public final void setRetrieved$purchases_release(boolean z) {
            this.retrieved = z;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/revenuecat/purchases/util/AdvertisingIdClient$AdvertisingInterface.class */
    public static final class AdvertisingInterface implements IInterface {
        private final IBinder binder;

        public AdvertisingInterface(IBinder iBinder) {
            k.f(iBinder, "binder");
            this.binder = iBinder;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this.binder;
        }

        public final String getId() throws RemoteException {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                this.binder.transact(1, obtain, obtain2, 0);
                obtain2.readException();
                return obtain2.readString();
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
        }

        /* JADX WARN: Finally extract failed */
        public final boolean isLimitAdTrackingEnabled() throws RemoteException {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                boolean z = true;
                obtain.writeInt(1);
                this.binder.transact(2, obtain, obtain2, 0);
                obtain2.readException();
                if (obtain2.readInt() == 0) {
                    z = false;
                }
                obtain2.recycle();
                obtain.recycle();
                return z;
            } catch (Throwable th) {
                obtain2.recycle();
                obtain.recycle();
                throw th;
            }
        }
    }

    private AdvertisingIdClient() {
    }

    public final void getAdvertisingIdInfo(final Application application, final l<? super AdInfo, r> lVar) throws IllegalStateException {
        k.f(application, "application");
        k.f(lVar, "completion");
        new Thread(new Runnable() { // from class: com.revenuecat.purchases.util.AdvertisingIdClient$getAdvertisingIdInfo$1
            @Override // java.lang.Runnable
            public final void run() {
                Handler handler;
                Runnable runnable;
                AdvertisingIdClient.AdvertisingInterface advertisingInterface;
                String id;
                if (!k.b(Looper.myLooper(), Looper.getMainLooper())) {
                    try {
                        application.getPackageManager().getPackageInfo("com.android.vending", 0);
                        final AdvertisingIdClient.AdvertisingConnection advertisingConnection = new AdvertisingIdClient.AdvertisingConnection();
                        Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
                        intent.setPackage("com.google.android.gms");
                        if (application.bindService(intent, advertisingConnection, 1)) {
                            try {
                                try {
                                    advertisingInterface = new AdvertisingIdClient.AdvertisingInterface(advertisingConnection.getBinder$purchases_release());
                                    id = advertisingInterface.getId();
                                } catch (Exception e) {
                                    Log.e("Purchases", "Error getting AdvertisingIdInfo", e);
                                    handler = new Handler(Looper.getMainLooper());
                                    runnable = new Runnable() { // from class: com.revenuecat.purchases.util.AdvertisingIdClient$getAdvertisingIdInfo$1.2
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            application.unbindService(advertisingConnection);
                                        }
                                    };
                                }
                                if (id != null) {
                                    lVar.invoke(new AdvertisingIdClient.AdInfo(id, advertisingInterface.isLimitAdTrackingEnabled()));
                                    return;
                                }
                                handler = new Handler(Looper.getMainLooper());
                                runnable = new Runnable() { // from class: com.revenuecat.purchases.util.AdvertisingIdClient$getAdvertisingIdInfo$1.2
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        application.unbindService(advertisingConnection);
                                    }
                                };
                                handler.post(runnable);
                            } finally {
                                new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.revenuecat.purchases.util.AdvertisingIdClient$getAdvertisingIdInfo$1.2
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        application.unbindService(advertisingConnection);
                                    }
                                });
                            }
                        }
                        lVar.invoke((Object) null);
                        return;
                    } catch (Exception e2) {
                        Log.e("Purchases", "Error getting AdvertisingIdInfo", e2);
                        lVar.invoke((Object) null);
                        return;
                    }
                }
                throw new IllegalStateException("Cannot be called from the main thread");
            }
        }).start();
    }
}
