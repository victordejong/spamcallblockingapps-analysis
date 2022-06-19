package com.appsflyer.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Parcel;
import android.os.RemoteException;
import java.io.IOException;
import java.util.concurrent.LinkedBlockingQueue;
/* renamed from: com.appsflyer.internal.v */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/v.class */
final class C0688v {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.appsflyer.internal.v$a */
    /* loaded from: classes-dex2jar.jar:com/appsflyer/internal/v$a.class */
    public static final class C0689a implements IInterface {

        /* renamed from: Ι */
        private IBinder f3086;

        C0689a(IBinder iBinder) {
            this.f3086 = iBinder;
        }

        @Override // android.os.IInterface
        public final IBinder asBinder() {
            return this.f3086;
        }

        /* JADX WARN: Finally extract failed */
        /* renamed from: ı */
        final boolean m4017() throws RemoteException {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                boolean z = true;
                obtain.writeInt(1);
                this.f3086.transact(2, obtain, obtain2, 0);
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

        /* renamed from: ǃ */
        public final String m4016() throws RemoteException {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                this.f3086.transact(1, obtain, obtain2, 0);
                obtain2.readException();
                return obtain2.readString();
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.appsflyer.internal.v$b */
    /* loaded from: classes-dex2jar.jar:com/appsflyer/internal/v$b.class */
    public static final class ServiceConnectionC0690b implements ServiceConnection {

        /* renamed from: Ι */
        boolean f3087;

        /* renamed from: ι */
        final LinkedBlockingQueue<IBinder> f3088;

        private ServiceConnectionC0690b() {
            this.f3088 = new LinkedBlockingQueue<>(1);
            this.f3087 = false;
        }

        /* synthetic */ ServiceConnectionC0690b(byte b) {
            this();
        }

        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            try {
                this.f3088.put(iBinder);
            } catch (InterruptedException e) {
            }
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.appsflyer.internal.v$c */
    /* loaded from: classes-dex2jar.jar:com/appsflyer/internal/v$c.class */
    public static final class C0691c {

        /* renamed from: ɩ */
        private final boolean f3089;

        /* renamed from: Ι */
        final String f3090;

        C0691c(String str, boolean z) {
            this.f3090 = str;
            this.f3089 = z;
        }

        /* renamed from: Ι */
        public final boolean m4015() {
            return this.f3089;
        }
    }

    C0688v() {
    }

    /* renamed from: ǃ */
    public static C0691c m4018(Context context) throws Exception {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            try {
                context.getPackageManager().getPackageInfo("com.android.vending", 0);
                ServiceConnectionC0690b serviceConnectionC0690b = new ServiceConnectionC0690b((byte) 0);
                Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
                intent.setPackage("com.google.android.gms");
                try {
                    try {
                        if (!context.bindService(intent, serviceConnectionC0690b, 1)) {
                            if (context != null) {
                                context.unbindService(serviceConnectionC0690b);
                            }
                            throw new IOException("Google Play connection failed");
                        } else if (serviceConnectionC0690b.f3087) {
                            throw new IllegalStateException();
                        } else {
                            serviceConnectionC0690b.f3087 = true;
                            C0689a c0689a = new C0689a(serviceConnectionC0690b.f3088.take());
                            C0691c c0691c = new C0691c(c0689a.m4016(), c0689a.m4017());
                            if (context != null) {
                                context.unbindService(serviceConnectionC0690b);
                            }
                            return c0691c;
                        }
                    } catch (Exception e) {
                        throw e;
                    }
                } catch (Throwable th) {
                    if (context != null) {
                        context.unbindService(serviceConnectionC0690b);
                    }
                    throw th;
                }
            } catch (Exception e2) {
                throw e2;
            }
        }
        throw new IllegalStateException("Cannot be called from the main thread");
    }
}
