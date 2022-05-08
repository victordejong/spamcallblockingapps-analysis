package p000a.p001a.p002a.p003a.p004a.p006b;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Parcel;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import p000a.p001a.p002a.p003a.C0137d;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: a.a.a.a.a.b.f */
/* loaded from: classes-dex2jar.jar:a/a/a/a/a/b/f.class */
public final class C0020f implements AbstractC0023g {

    /* renamed from: a */
    private final Context f34a;

    /* renamed from: a.a.a.a.a.b.f$a */
    /* loaded from: classes-dex2jar.jar:a/a/a/a/a/b/f$a.class */
    private static final class ServiceConnectionC0021a implements ServiceConnection {

        /* renamed from: a */
        private boolean f35a;

        /* renamed from: b */
        private final LinkedBlockingQueue<IBinder> f36b;

        private ServiceConnectionC0021a() {
            this.f35a = false;
            this.f36b = new LinkedBlockingQueue<>(1);
        }

        /* synthetic */ ServiceConnectionC0021a(byte b) {
            this();
        }

        /* renamed from: a */
        public final IBinder m10364a() {
            if (this.f35a) {
                C0137d.m10155c().mo10128e("Fabric", "getBinder already called");
            }
            this.f35a = true;
            try {
                return this.f36b.poll(200L, TimeUnit.MILLISECONDS);
            } catch (InterruptedException e) {
                return null;
            }
        }

        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            try {
                this.f36b.put(iBinder);
            } catch (InterruptedException e) {
            }
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
            this.f36b.clear();
        }
    }

    /* renamed from: a.a.a.a.a.b.f$b */
    /* loaded from: classes-dex2jar.jar:a/a/a/a/a/b/f$b.class */
    private static final class C0022b implements IInterface {

        /* renamed from: a */
        private final IBinder f37a;

        public C0022b(IBinder iBinder) {
            this.f37a = iBinder;
        }

        /* JADX WARN: Finally extract failed */
        /* renamed from: a */
        public final String m10363a() {
            String str;
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                    this.f37a.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    str = obtain2.readString();
                    obtain2.recycle();
                    obtain.recycle();
                } catch (Exception e) {
                    C0137d.m10155c().mo10135a("Fabric", "Could not get parcel from Google Play Service to capture AdvertisingId");
                    obtain2.recycle();
                    obtain.recycle();
                    str = null;
                }
                return str;
            } catch (Throwable th) {
                obtain2.recycle();
                obtain.recycle();
                throw th;
            }
        }

        @Override // android.os.IInterface
        public final IBinder asBinder() {
            return this.f37a;
        }

        /* renamed from: b */
        public final boolean m10362b() {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            boolean z = false;
            try {
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                    obtain.writeInt(1);
                    this.f37a.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        z = true;
                    }
                } catch (Exception e) {
                    C0137d.m10155c().mo10135a("Fabric", "Could not get parcel from Google Play Service to capture Advertising limitAdTracking");
                }
                return z;
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
        }
    }

    public C0020f(Context context) {
        this.f34a = context.getApplicationContext();
    }

    @Override // p000a.p001a.p002a.p003a.p004a.p006b.AbstractC0023g
    /* renamed from: a */
    public final C0016b mo10361a() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            C0137d.m10155c().mo10135a("Fabric", "AdvertisingInfoServiceStrategy cannot be called on the main thread");
            return null;
        }
        try {
            this.f34a.getPackageManager().getPackageInfo("com.android.vending", 0);
            ServiceConnectionC0021a aVar = new ServiceConnectionC0021a((byte) 0);
            Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
            intent.setPackage("com.google.android.gms");
            try {
                if (this.f34a.bindService(intent, aVar, 1)) {
                    try {
                        C0022b bVar = new C0022b(aVar.m10364a());
                        C0016b bVar2 = new C0016b(bVar.m10363a(), bVar.m10362b());
                        this.f34a.unbindService(aVar);
                        return bVar2;
                    } catch (Exception e) {
                        C0137d.m10155c().mo10132b("Fabric", "Exception in binding to Google Play Service to capture AdvertisingId", e);
                        this.f34a.unbindService(aVar);
                        return null;
                    }
                } else {
                    C0137d.m10155c().mo10135a("Fabric", "Could not bind to Google Play Service to capture AdvertisingId");
                    return null;
                }
            } catch (Throwable th) {
                C0137d.m10155c().mo10134a("Fabric", "Could not bind to Google Play Service to capture AdvertisingId", th);
                return null;
            }
        } catch (PackageManager.NameNotFoundException e2) {
            C0137d.m10155c().mo10135a("Fabric", "Unable to find Google Play Services package name");
            return null;
        } catch (Exception e3) {
            C0137d.m10155c().mo10134a("Fabric", "Unable to determine if Google Play Services is available", e3);
            return null;
        }
    }
}
