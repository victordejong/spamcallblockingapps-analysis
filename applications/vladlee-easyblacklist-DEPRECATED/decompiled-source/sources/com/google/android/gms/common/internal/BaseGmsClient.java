package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.api.CommonStatusCodes;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.GmsClientSupervisor;
import com.google.android.gms.common.internal.IGmsCallbacks;
import com.google.android.gms.common.internal.IGmsServiceBroker;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/BaseGmsClient.class */
public abstract class BaseGmsClient<T extends IInterface> {
    public static final int CONNECT_STATE_CONNECTED = 4;
    public static final int CONNECT_STATE_DISCONNECTED = 1;
    public static final int CONNECT_STATE_DISCONNECTING = 5;
    public static final String DEFAULT_ACCOUNT = "<<default account>>";
    public static final String KEY_PENDING_INTENT = "pendingIntent";

    /* renamed from: A */
    private boolean f6685A;

    /* renamed from: B */
    private volatile zzb f6686B;

    /* renamed from: a */
    final Handler f6687a;

    /* renamed from: b */
    protected ConnectionProgressReportCallbacks f6688b;

    /* renamed from: c */
    protected AtomicInteger f6689c;

    /* renamed from: e */
    private int f6690e;

    /* renamed from: f */
    private long f6691f;

    /* renamed from: g */
    private long f6692g;

    /* renamed from: h */
    private int f6693h;

    /* renamed from: i */
    private long f6694i;

    /* renamed from: j */
    private zzh f6695j;

    /* renamed from: k */
    private final Context f6696k;

    /* renamed from: l */
    private final Looper f6697l;

    /* renamed from: m */
    private final GmsClientSupervisor f6698m;

    /* renamed from: n */
    private final GoogleApiAvailabilityLight f6699n;

    /* renamed from: o */
    private final Object f6700o;

    /* renamed from: p */
    private final Object f6701p;

    /* renamed from: q */
    private IGmsServiceBroker f6702q;

    /* renamed from: r */
    private T f6703r;

    /* renamed from: s */
    private final ArrayList<zzc<?>> f6704s;

    /* renamed from: t */
    private zze f6705t;

    /* renamed from: u */
    private int f6706u;

    /* renamed from: v */
    private final BaseConnectionCallbacks f6707v;

    /* renamed from: w */
    private final BaseOnConnectionFailedListener f6708w;

    /* renamed from: x */
    private final int f6709x;

    /* renamed from: y */
    private final String f6710y;

    /* renamed from: z */
    private ConnectionResult f6711z;

    /* renamed from: d */
    private static final Feature[] f6684d = new Feature[0];
    public static final String[] GOOGLE_PLUS_REQUIRED_FEATURES = {"service_esmobile", "service_googleme"};

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks.class */
    public interface BaseConnectionCallbacks {
        void onConnected(Bundle bundle);

        void onConnectionSuspended(int i);
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener.class */
    public interface BaseOnConnectionFailedListener {
        void onConnectionFailed(ConnectionResult connectionResult);
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks.class */
    public interface ConnectionProgressReportCallbacks {
        void onReportServiceBinding(ConnectionResult connectionResult);
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/BaseGmsClient$LegacyClientCallbackAdapter.class */
    protected class LegacyClientCallbackAdapter implements ConnectionProgressReportCallbacks {
        public LegacyClientCallbackAdapter() {
        }

        @Override // com.google.android.gms.common.internal.BaseGmsClient.ConnectionProgressReportCallbacks
        public void onReportServiceBinding(ConnectionResult connectionResult) {
            if (connectionResult.isSuccess()) {
                BaseGmsClient baseGmsClient = BaseGmsClient.this;
                baseGmsClient.getRemoteService(null, baseGmsClient.mo5698c());
            } else if (BaseGmsClient.this.f6708w != null) {
                BaseGmsClient.this.f6708w.onConnectionFailed(connectionResult);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/BaseGmsClient$SignOutCallbacks.class */
    public interface SignOutCallbacks {
        void onSignOutComplete();
    }

    /* renamed from: com.google.android.gms.common.internal.BaseGmsClient$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/BaseGmsClient$a.class */
    private abstract class AbstractC1656a extends zzc<Boolean> {

        /* renamed from: a */
        private final int f6713a;

        /* renamed from: b */
        private final Bundle f6714b;

        protected AbstractC1656a(int i, Bundle bundle) {
            super(Boolean.TRUE);
            this.f6713a = i;
            this.f6714b = bundle;
        }

        /* renamed from: a */
        protected abstract void mo5701a(ConnectionResult connectionResult);

        @Override // com.google.android.gms.common.internal.BaseGmsClient.zzc
        /* renamed from: a */
        protected final /* synthetic */ void mo5703a(Boolean bool) {
            if (bool == null) {
                BaseGmsClient.this.m5716b(1, null);
                return;
            }
            int i = this.f6713a;
            PendingIntent pendingIntent = null;
            if (i != 0) {
                if (i != 10) {
                    BaseGmsClient.this.m5716b(1, null);
                    Bundle bundle = this.f6714b;
                    if (bundle != null) {
                        pendingIntent = (PendingIntent) bundle.getParcelable(BaseGmsClient.KEY_PENDING_INTENT);
                    }
                    mo5701a(new ConnectionResult(this.f6713a, pendingIntent));
                    return;
                }
                BaseGmsClient.this.m5716b(1, null);
                throw new IllegalStateException(String.format("A fatal developer error has occurred. Class name: %s. Start service action: %s. Service Descriptor: %s. ", getClass().getSimpleName(), BaseGmsClient.this.getStartServiceAction(), BaseGmsClient.this.mo1590a()));
            } else if (!mo5702a()) {
                BaseGmsClient.this.m5716b(1, null);
                mo5701a(new ConnectionResult(8, null));
            }
        }

        /* renamed from: a */
        protected abstract boolean mo5702a();
    }

    /* renamed from: com.google.android.gms.common.internal.BaseGmsClient$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/BaseGmsClient$b.class */
    final class HandlerC1657b extends com.google.android.gms.internal.common.zze {
        public HandlerC1657b(Looper looper) {
            super(looper);
        }

        /* renamed from: a */
        private static void m5705a(Message message) {
            ((zzc) message.obj).unregister();
        }

        /* renamed from: b */
        private static boolean m5704b(Message message) {
            return message.what == 2 || message.what == 1 || message.what == 7;
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            if (BaseGmsClient.this.f6689c.get() != message.arg1) {
                if (m5704b(message)) {
                    m5705a(message);
                }
            } else if ((message.what == 1 || message.what == 7 || message.what == 4 || message.what == 5) && !BaseGmsClient.this.isConnecting()) {
                m5705a(message);
            } else if (message.what == 4) {
                BaseGmsClient.this.f6711z = new ConnectionResult(message.arg2);
                if (!BaseGmsClient.this.m5709f() || BaseGmsClient.this.f6685A) {
                    ConnectionResult connectionResult = BaseGmsClient.this.f6711z != null ? BaseGmsClient.this.f6711z : new ConnectionResult(8);
                    BaseGmsClient.this.f6688b.onReportServiceBinding(connectionResult);
                    BaseGmsClient.this.onConnectionFailed(connectionResult);
                    return;
                }
                BaseGmsClient.this.m5716b(3, null);
            } else if (message.what == 5) {
                ConnectionResult connectionResult2 = BaseGmsClient.this.f6711z != null ? BaseGmsClient.this.f6711z : new ConnectionResult(8);
                BaseGmsClient.this.f6688b.onReportServiceBinding(connectionResult2);
                BaseGmsClient.this.onConnectionFailed(connectionResult2);
            } else {
                PendingIntent pendingIntent = null;
                if (message.what == 3) {
                    if (message.obj instanceof PendingIntent) {
                        pendingIntent = (PendingIntent) message.obj;
                    }
                    ConnectionResult connectionResult3 = new ConnectionResult(message.arg2, pendingIntent);
                    BaseGmsClient.this.f6688b.onReportServiceBinding(connectionResult3);
                    BaseGmsClient.this.onConnectionFailed(connectionResult3);
                } else if (message.what == 6) {
                    BaseGmsClient.this.m5716b(5, null);
                    if (BaseGmsClient.this.f6707v != null) {
                        BaseGmsClient.this.f6707v.onConnectionSuspended(message.arg2);
                    }
                    BaseGmsClient.this.onConnectionSuspended(message.arg2);
                    BaseGmsClient.this.m5724a(5, 1, null);
                } else if (message.what == 2 && !BaseGmsClient.this.isConnected()) {
                    m5705a(message);
                } else if (m5704b(message)) {
                    ((zzc) message.obj).zzo();
                } else {
                    int i = message.what;
                    StringBuilder sb = new StringBuilder(45);
                    sb.append("Don't know how to handle message: ");
                    sb.append(i);
                    Log.wtf("GmsClient", sb.toString(), new Exception());
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/BaseGmsClient$zzc.class */
    public abstract class zzc<TListener> {

        /* renamed from: a */
        private TListener f6717a;

        /* renamed from: b */
        private boolean f6718b = false;

        public zzc(TListener tlistener) {
            this.f6717a = tlistener;
        }

        /* renamed from: a */
        protected abstract void mo5703a(TListener tlistener);

        public final void removeListener() {
            synchronized (this) {
                this.f6717a = null;
            }
        }

        public final void unregister() {
            removeListener();
            synchronized (BaseGmsClient.this.f6704s) {
                BaseGmsClient.this.f6704s.remove(this);
            }
        }

        public final void zzo() {
            TListener tlistener;
            synchronized (this) {
                tlistener = this.f6717a;
                if (this.f6718b) {
                    String valueOf = String.valueOf(this);
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 47);
                    sb.append("Callback proxy ");
                    sb.append(valueOf);
                    sb.append(" being reused. This is not safe.");
                    Log.w("GmsClient", sb.toString());
                }
            }
            if (tlistener != null) {
                try {
                    mo5703a(tlistener);
                } catch (RuntimeException e) {
                    throw e;
                }
            }
            synchronized (this) {
                this.f6718b = true;
            }
            unregister();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/BaseGmsClient$zzd.class */
    public static final class zzd extends IGmsCallbacks.zza {

        /* renamed from: a */
        private BaseGmsClient f6720a;

        /* renamed from: b */
        private final int f6721b;

        public zzd(BaseGmsClient baseGmsClient, int i) {
            this.f6720a = baseGmsClient;
            this.f6721b = i;
        }

        @Override // com.google.android.gms.common.internal.IGmsCallbacks
        public final void onPostInitComplete(int i, IBinder iBinder, Bundle bundle) {
            Preconditions.checkNotNull(this.f6720a, "onPostInitComplete can be called only once per call to getRemoteService");
            this.f6720a.m5723a(i, iBinder, bundle, this.f6721b);
            this.f6720a = null;
        }

        @Override // com.google.android.gms.common.internal.IGmsCallbacks
        public final void zza(int i, Bundle bundle) {
            Log.wtf("GmsClient", "received deprecated onAccountValidationComplete callback, ignoring", new Exception());
        }

        @Override // com.google.android.gms.common.internal.IGmsCallbacks
        public final void zza(int i, IBinder iBinder, zzb zzbVar) {
            Preconditions.checkNotNull(this.f6720a, "onPostInitCompleteWithConnectionInfo can be called only once per call togetRemoteService");
            Preconditions.checkNotNull(zzbVar);
            this.f6720a.f6686B = zzbVar;
            onPostInitComplete(i, iBinder, zzbVar.f6847a);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/BaseGmsClient$zze.class */
    public final class zze implements ServiceConnection {

        /* renamed from: a */
        private final int f6722a;

        public zze(int i) {
            this.f6722a = i;
        }

        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            IGmsServiceBroker iGmsServiceBroker;
            if (iBinder == null) {
                BaseGmsClient.m5722a(BaseGmsClient.this);
                return;
            }
            synchronized (BaseGmsClient.this.f6701p) {
                BaseGmsClient baseGmsClient = BaseGmsClient.this;
                if (iBinder == null) {
                    iGmsServiceBroker = null;
                } else {
                    IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    iGmsServiceBroker = (queryLocalInterface == null || !(queryLocalInterface instanceof IGmsServiceBroker)) ? new IGmsServiceBroker.Stub.C1658a(iBinder) : (IGmsServiceBroker) queryLocalInterface;
                }
                baseGmsClient.f6702q = iGmsServiceBroker;
            }
            BaseGmsClient.this.m5725a(0, this.f6722a);
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
            synchronized (BaseGmsClient.this.f6701p) {
                BaseGmsClient.this.f6702q = null;
            }
            BaseGmsClient.this.f6687a.sendMessage(BaseGmsClient.this.f6687a.obtainMessage(6, this.f6722a, 1));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/BaseGmsClient$zzf.class */
    public final class zzf extends AbstractC1656a {

        /* renamed from: a */
        private final IBinder f6724a;

        public zzf(int i, IBinder iBinder, Bundle bundle) {
            super(i, bundle);
            this.f6724a = iBinder;
        }

        @Override // com.google.android.gms.common.internal.BaseGmsClient.AbstractC1656a
        /* renamed from: a */
        protected final void mo5701a(ConnectionResult connectionResult) {
            if (BaseGmsClient.this.f6708w != null) {
                BaseGmsClient.this.f6708w.onConnectionFailed(connectionResult);
            }
            BaseGmsClient.this.onConnectionFailed(connectionResult);
        }

        @Override // com.google.android.gms.common.internal.BaseGmsClient.AbstractC1656a
        /* renamed from: a */
        protected final boolean mo5702a() {
            try {
                String interfaceDescriptor = this.f6724a.getInterfaceDescriptor();
                if (!BaseGmsClient.this.mo1590a().equals(interfaceDescriptor)) {
                    String a = BaseGmsClient.this.mo1590a();
                    StringBuilder sb = new StringBuilder(String.valueOf(a).length() + 34 + String.valueOf(interfaceDescriptor).length());
                    sb.append("service descriptor mismatch: ");
                    sb.append(a);
                    sb.append(" vs. ");
                    sb.append(interfaceDescriptor);
                    Log.e("GmsClient", sb.toString());
                    return false;
                }
                IInterface createServiceInterface = BaseGmsClient.this.createServiceInterface(this.f6724a);
                if (createServiceInterface == null) {
                    return false;
                }
                if (!BaseGmsClient.this.m5724a(2, 4, createServiceInterface) && !BaseGmsClient.this.m5724a(3, 4, createServiceInterface)) {
                    return false;
                }
                BaseGmsClient.this.f6711z = null;
                Bundle connectionHint = BaseGmsClient.this.getConnectionHint();
                if (BaseGmsClient.this.f6707v == null) {
                    return true;
                }
                BaseGmsClient.this.f6707v.onConnected(connectionHint);
                return true;
            } catch (RemoteException e) {
                Log.w("GmsClient", "service probably died");
                return false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/BaseGmsClient$zzg.class */
    public final class zzg extends AbstractC1656a {
        public zzg(int i, Bundle bundle) {
            super(i, null);
        }

        @Override // com.google.android.gms.common.internal.BaseGmsClient.AbstractC1656a
        /* renamed from: a */
        protected final void mo5701a(ConnectionResult connectionResult) {
            BaseGmsClient.this.f6688b.onReportServiceBinding(connectionResult);
            BaseGmsClient.this.onConnectionFailed(connectionResult);
        }

        @Override // com.google.android.gms.common.internal.BaseGmsClient.AbstractC1656a
        /* renamed from: a */
        protected final boolean mo5702a() {
            BaseGmsClient.this.f6688b.onReportServiceBinding(ConnectionResult.RESULT_SUCCESS);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public BaseGmsClient(Context context, Looper looper, int i, BaseConnectionCallbacks baseConnectionCallbacks, BaseOnConnectionFailedListener baseOnConnectionFailedListener) {
        this(context, looper, GmsClientSupervisor.getInstance(context), GoogleApiAvailabilityLight.getInstance(), i, (BaseConnectionCallbacks) Preconditions.checkNotNull(baseConnectionCallbacks), (BaseOnConnectionFailedListener) Preconditions.checkNotNull(baseOnConnectionFailedListener), null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public BaseGmsClient(Context context, Looper looper, GmsClientSupervisor gmsClientSupervisor, GoogleApiAvailabilityLight googleApiAvailabilityLight, int i, BaseConnectionCallbacks baseConnectionCallbacks, BaseOnConnectionFailedListener baseOnConnectionFailedListener, String str) {
        this.f6700o = new Object();
        this.f6701p = new Object();
        this.f6704s = new ArrayList<>();
        this.f6706u = 1;
        this.f6711z = null;
        this.f6685A = false;
        this.f6686B = null;
        this.f6689c = new AtomicInteger(0);
        this.f6696k = (Context) Preconditions.checkNotNull(context, "Context must not be null");
        this.f6697l = (Looper) Preconditions.checkNotNull(looper, "Looper must not be null");
        this.f6698m = (GmsClientSupervisor) Preconditions.checkNotNull(gmsClientSupervisor, "Supervisor must not be null");
        this.f6699n = (GoogleApiAvailabilityLight) Preconditions.checkNotNull(googleApiAvailabilityLight, "API availability must not be null");
        this.f6687a = new HandlerC1657b(looper);
        this.f6709x = i;
        this.f6707v = baseConnectionCallbacks;
        this.f6708w = baseOnConnectionFailedListener;
        this.f6710y = str;
    }

    /* renamed from: a */
    static /* synthetic */ void m5722a(BaseGmsClient baseGmsClient) {
        int i;
        if (baseGmsClient.m5711e()) {
            i = 5;
            baseGmsClient.f6685A = true;
        } else {
            i = 4;
        }
        Handler handler = baseGmsClient.f6687a;
        handler.sendMessage(handler.obtainMessage(i, baseGmsClient.f6689c.get(), 16));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public final boolean m5724a(int i, int i2, T t) {
        synchronized (this.f6700o) {
            if (this.f6706u != i) {
                return false;
            }
            m5716b(i2, t);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public final void m5716b(int i, T t) {
        Preconditions.checkArgument((i == 4) == (t != null));
        synchronized (this.f6700o) {
            this.f6706u = i;
            this.f6703r = t;
            mo5683a(i, (int) t);
            if (i != 1) {
                if (i == 2 || i == 3) {
                    if (!(this.f6705t == null || this.f6695j == null)) {
                        String a = this.f6695j.m5654a();
                        String b = this.f6695j.m5653b();
                        StringBuilder sb = new StringBuilder(String.valueOf(a).length() + 70 + String.valueOf(b).length());
                        sb.append("Calling connect() while still connected, missing disconnect() for ");
                        sb.append(a);
                        sb.append(" on ");
                        sb.append(b);
                        Log.e("GmsClient", sb.toString());
                        this.f6698m.zza(this.f6695j.m5654a(), this.f6695j.m5653b(), this.f6695j.m5652c(), this.f6705t, m5713d());
                        this.f6689c.incrementAndGet();
                    }
                    this.f6705t = new zze(this.f6689c.get());
                    this.f6695j = new zzh("com.google.android.gms", getStartServiceAction(), false, 129);
                    if (!this.f6698m.mo5680a(new GmsClientSupervisor.zza(this.f6695j.m5654a(), this.f6695j.m5653b(), this.f6695j.m5652c()), this.f6705t, m5713d())) {
                        String a2 = this.f6695j.m5654a();
                        String b2 = this.f6695j.m5653b();
                        StringBuilder sb2 = new StringBuilder(String.valueOf(a2).length() + 34 + String.valueOf(b2).length());
                        sb2.append("unable to connect to service: ");
                        sb2.append(a2);
                        sb2.append(" on ");
                        sb2.append(b2);
                        Log.e("GmsClient", sb2.toString());
                        m5725a(16, this.f6689c.get());
                    }
                } else if (i == 4) {
                    onConnectedLocked(t);
                }
            } else if (this.f6705t != null) {
                this.f6698m.zza(this.f6695j.m5654a(), this.f6695j.m5653b(), this.f6695j.m5652c(), this.f6705t, m5713d());
                this.f6705t = null;
            }
        }
    }

    /* renamed from: d */
    private final String m5713d() {
        String str = this.f6710y;
        return str == null ? this.f6696k.getClass().getName() : str;
    }

    /* renamed from: e */
    private final boolean m5711e() {
        boolean z;
        synchronized (this.f6700o) {
            z = this.f6706u == 3;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f */
    public final boolean m5709f() {
        if (this.f6685A || TextUtils.isEmpty(mo1590a()) || TextUtils.isEmpty(null)) {
            return false;
        }
        try {
            Class.forName(mo1590a());
            return true;
        } catch (ClassNotFoundException e) {
            return false;
        }
    }

    /* renamed from: a */
    protected abstract String mo1590a();

    /* renamed from: a */
    protected final void m5725a(int i, int i2) {
        Handler handler = this.f6687a;
        handler.sendMessage(handler.obtainMessage(7, i2, -1, new zzg(i, null)));
    }

    /* renamed from: a */
    protected final void m5723a(int i, IBinder iBinder, Bundle bundle, int i2) {
        Handler handler = this.f6687a;
        handler.sendMessage(handler.obtainMessage(1, i2, -1, new zzf(i, iBinder, bundle)));
    }

    /* renamed from: a */
    void mo5683a(int i, T t) {
    }

    /* renamed from: b */
    protected Bundle mo1589b() {
        return new Bundle();
    }

    /* renamed from: c */
    protected Set<Scope> mo5698c() {
        return Collections.EMPTY_SET;
    }

    public void checkAvailabilityAndConnect() {
        int isGooglePlayServicesAvailable = this.f6699n.isGooglePlayServicesAvailable(this.f6696k, getMinApkVersion());
        if (isGooglePlayServicesAvailable != 0) {
            m5716b(1, null);
            this.f6688b = (ConnectionProgressReportCallbacks) Preconditions.checkNotNull(new LegacyClientCallbackAdapter(), "Connection progress callbacks cannot be null.");
            Handler handler = this.f6687a;
            handler.sendMessage(handler.obtainMessage(3, this.f6689c.get(), isGooglePlayServicesAvailable, null));
            return;
        }
        connect(new LegacyClientCallbackAdapter());
    }

    public void connect(ConnectionProgressReportCallbacks connectionProgressReportCallbacks) {
        this.f6688b = (ConnectionProgressReportCallbacks) Preconditions.checkNotNull(connectionProgressReportCallbacks, "Connection progress callbacks cannot be null.");
        m5716b(2, null);
    }

    protected abstract T createServiceInterface(IBinder iBinder);

    public void disconnect() {
        this.f6689c.incrementAndGet();
        synchronized (this.f6704s) {
            int size = this.f6704s.size();
            for (int i = 0; i < size; i++) {
                this.f6704s.get(i).removeListener();
            }
            this.f6704s.clear();
        }
        synchronized (this.f6701p) {
            this.f6702q = null;
        }
        m5716b(1, null);
    }

    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int i;
        T t;
        IGmsServiceBroker iGmsServiceBroker;
        synchronized (this.f6700o) {
            i = this.f6706u;
            t = this.f6703r;
        }
        synchronized (this.f6701p) {
            iGmsServiceBroker = this.f6702q;
        }
        printWriter.append((CharSequence) str).append("mConnectState=");
        printWriter.print(i != 1 ? i != 2 ? i != 3 ? i != 4 ? i != 5 ? "UNKNOWN" : "DISCONNECTING" : "CONNECTED" : "LOCAL_CONNECTING" : "REMOTE_CONNECTING" : "DISCONNECTED");
        printWriter.append(" mService=");
        if (t == null) {
            printWriter.append("null");
        } else {
            printWriter.append((CharSequence) mo1590a()).append("@").append((CharSequence) Integer.toHexString(System.identityHashCode(t.asBinder())));
        }
        printWriter.append(" mServiceBroker=");
        if (iGmsServiceBroker == null) {
            printWriter.println("null");
        } else {
            printWriter.append("IGmsServiceBroker@").println(Integer.toHexString(System.identityHashCode(iGmsServiceBroker.asBinder())));
        }
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS", Locale.US);
        if (this.f6692g > 0) {
            PrintWriter append = printWriter.append((CharSequence) str).append("lastConnectedTime=");
            long j = this.f6692g;
            String format = simpleDateFormat.format(new Date(j));
            StringBuilder sb = new StringBuilder(String.valueOf(format).length() + 21);
            sb.append(j);
            sb.append(" ");
            sb.append(format);
            append.println(sb.toString());
        }
        if (this.f6691f > 0) {
            printWriter.append((CharSequence) str).append("lastSuspendedCause=");
            int i2 = this.f6690e;
            printWriter.append((CharSequence) (i2 != 1 ? i2 != 2 ? String.valueOf(i2) : "CAUSE_NETWORK_LOST" : "CAUSE_SERVICE_DISCONNECTED"));
            PrintWriter append2 = printWriter.append(" lastSuspendedTime=");
            long j2 = this.f6691f;
            String format2 = simpleDateFormat.format(new Date(j2));
            StringBuilder sb2 = new StringBuilder(String.valueOf(format2).length() + 21);
            sb2.append(j2);
            sb2.append(" ");
            sb2.append(format2);
            append2.println(sb2.toString());
        }
        if (this.f6694i > 0) {
            printWriter.append((CharSequence) str).append("lastFailedStatus=").append((CharSequence) CommonStatusCodes.getStatusCodeString(this.f6693h));
            PrintWriter append3 = printWriter.append(" lastFailedTime=");
            long j3 = this.f6694i;
            String format3 = simpleDateFormat.format(new Date(j3));
            StringBuilder sb3 = new StringBuilder(String.valueOf(format3).length() + 21);
            sb3.append(j3);
            sb3.append(" ");
            sb3.append(format3);
            append3.println(sb3.toString());
        }
    }

    public Account getAccount() {
        return null;
    }

    public Feature[] getApiFeatures() {
        return f6684d;
    }

    public final Feature[] getAvailableFeatures() {
        zzb zzbVar = this.f6686B;
        if (zzbVar == null) {
            return null;
        }
        return zzbVar.f6848b;
    }

    public Bundle getConnectionHint() {
        return null;
    }

    public final Context getContext() {
        return this.f6696k;
    }

    public String getEndpointPackageName() {
        zzh zzhVar;
        if (isConnected() && (zzhVar = this.f6695j) != null) {
            return zzhVar.m5653b();
        }
        throw new RuntimeException("Failed to connect when checking package");
    }

    public final Looper getLooper() {
        return this.f6697l;
    }

    public int getMinApkVersion() {
        return GoogleApiAvailabilityLight.GOOGLE_PLAY_SERVICES_VERSION_CODE;
    }

    public void getRemoteService(IAccountAccessor iAccountAccessor, Set<Scope> set) {
        Bundle b = mo1589b();
        GetServiceRequest getServiceRequest = new GetServiceRequest(this.f6709x);
        getServiceRequest.f6755a = this.f6696k.getPackageName();
        getServiceRequest.f6758d = b;
        if (set != null) {
            getServiceRequest.f6757c = (Scope[]) set.toArray(new Scope[set.size()]);
        }
        if (requiresSignIn()) {
            getServiceRequest.f6759e = getAccount() != null ? getAccount() : new Account("<<default account>>", AccountType.GOOGLE);
            if (iAccountAccessor != null) {
                getServiceRequest.f6756b = iAccountAccessor.asBinder();
            }
        } else if (requiresAccount()) {
            getServiceRequest.f6759e = getAccount();
        }
        getServiceRequest.f6760f = f6684d;
        getServiceRequest.f6761g = getApiFeatures();
        try {
            try {
                synchronized (this.f6701p) {
                    if (this.f6702q != null) {
                        this.f6702q.getService(new zzd(this, this.f6689c.get()), getServiceRequest);
                    } else {
                        Log.w("GmsClient", "mServiceBroker is null, client disconnected");
                    }
                }
            } catch (RemoteException | RuntimeException e) {
                Log.w("GmsClient", "IGmsServiceBroker.getService failed", e);
                m5723a(8, (IBinder) null, (Bundle) null, this.f6689c.get());
            }
        } catch (DeadObjectException e2) {
            Log.w("GmsClient", "IGmsServiceBroker.getService failed", e2);
            triggerConnectionSuspended(1);
        } catch (SecurityException e3) {
            throw e3;
        }
    }

    public final T getService() {
        T t;
        synchronized (this.f6700o) {
            if (this.f6706u == 5) {
                throw new DeadObjectException();
            } else if (isConnected()) {
                Preconditions.checkState(this.f6703r != null, "Client is connected but service is null");
                t = this.f6703r;
            } else {
                throw new IllegalStateException("Not connected. Call connect() and wait for onConnected() to be called.");
            }
        }
        return t;
    }

    public IBinder getServiceBrokerBinder() {
        synchronized (this.f6701p) {
            if (this.f6702q == null) {
                return null;
            }
            return this.f6702q.asBinder();
        }
    }

    public Intent getSignInIntent() {
        throw new UnsupportedOperationException("Not a sign in API");
    }

    protected abstract String getStartServiceAction();

    public boolean isConnected() {
        boolean z;
        synchronized (this.f6700o) {
            z = this.f6706u == 4;
        }
        return z;
    }

    public boolean isConnecting() {
        boolean z;
        synchronized (this.f6700o) {
            if (!(this.f6706u == 2 || this.f6706u == 3)) {
                z = false;
            }
            z = true;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onConnectedLocked(T t) {
        this.f6692g = System.currentTimeMillis();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onConnectionFailed(ConnectionResult connectionResult) {
        this.f6693h = connectionResult.getErrorCode();
        this.f6694i = System.currentTimeMillis();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onConnectionSuspended(int i) {
        this.f6690e = i;
        this.f6691f = System.currentTimeMillis();
    }

    public void onUserSignOut(SignOutCallbacks signOutCallbacks) {
        signOutCallbacks.onSignOutComplete();
    }

    public boolean providesSignIn() {
        return false;
    }

    public boolean requiresAccount() {
        return false;
    }

    public boolean requiresGooglePlayServices() {
        return true;
    }

    public boolean requiresSignIn() {
        return false;
    }

    public void triggerConnectionSuspended(int i) {
        Handler handler = this.f6687a;
        handler.sendMessage(handler.obtainMessage(6, this.f6689c.get(), i));
    }
}
