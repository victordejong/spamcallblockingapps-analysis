package p081h.p203i.p325c.p372x;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.PowerManager;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.io.IOException;
import p081h.p203i.p325c.p364t.C9873e0;
/* renamed from: h.i.c.x.z */
/* loaded from: classes2-dex2jar.jar:h/i/c/x/z.class */
public class RunnableC10007z implements Runnable {

    /* renamed from: f */
    public static final Object f22632f = new Object();
    @GuardedBy("TOPIC_SYNC_TASK_LOCK")

    /* renamed from: g */
    public static Boolean f22633g;
    @GuardedBy("TOPIC_SYNC_TASK_LOCK")

    /* renamed from: h */
    public static Boolean f22634h;

    /* renamed from: a */
    public final Context f22635a;

    /* renamed from: b */
    public final C9873e0 f22636b;

    /* renamed from: c */
    public final PowerManager.WakeLock f22637c;

    /* renamed from: d */
    public final C10006y f22638d;

    /* renamed from: e */
    public final long f22639e;

    @VisibleForTesting
    /* renamed from: h.i.c.x.z$a */
    /* loaded from: classes2-dex2jar.jar:h/i/c/x/z$a.class */
    public class C10008a extends BroadcastReceiver {
        @Nullable
        @GuardedBy("this")

        /* renamed from: a */
        public RunnableC10007z f22640a;

        public C10008a(RunnableC10007z zVar) {
            this.f22640a = zVar;
        }

        /* renamed from: a */
        public void m13635a() {
            RunnableC10007z.m13637c();
            RunnableC10007z.this.f22635a.registerReceiver(this, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            synchronized (this) {
                if (this.f22640a != null) {
                    if (this.f22640a.m13645a()) {
                        RunnableC10007z.m13637c();
                        this.f22640a.f22638d.m13658a(this.f22640a, 0L);
                        context.unregisterReceiver(this);
                        this.f22640a = null;
                    }
                }
            }
        }
    }

    public RunnableC10007z(C10006y yVar, Context context, C9873e0 e0Var, long j) {
        this.f22638d = yVar;
        this.f22635a = context;
        this.f22639e = j;
        this.f22636b = e0Var;
        this.f22637c = ((PowerManager) context.getSystemService("power")).newWakeLock(1, "wake:com.google.firebase.messaging");
    }

    /* renamed from: a */
    public static String m13641a(String str) {
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 142);
        sb.append("Missing Permission: ");
        sb.append(str);
        sb.append(". This permission should normally be included by the manifest merger, but may needed to be manually added to your manifest");
        return sb.toString();
    }

    /* renamed from: a */
    public static boolean m13644a(Context context) {
        boolean booleanValue;
        synchronized (f22632f) {
            Boolean valueOf = Boolean.valueOf(f22634h == null ? m13643a(context, "android.permission.ACCESS_NETWORK_STATE", f22634h) : f22634h.booleanValue());
            f22634h = valueOf;
            booleanValue = valueOf.booleanValue();
        }
        return booleanValue;
    }

    /* renamed from: a */
    public static boolean m13643a(Context context, String str, Boolean bool) {
        if (bool != null) {
            return bool.booleanValue();
        }
        boolean z = context.checkCallingOrSelfPermission(str) == 0;
        if (!z && Log.isLoggable("FirebaseMessaging", 3)) {
            m13641a(str);
        }
        return z;
    }

    /* renamed from: b */
    public static boolean m13639b(Context context) {
        boolean booleanValue;
        synchronized (f22632f) {
            Boolean valueOf = Boolean.valueOf(f22633g == null ? m13643a(context, "android.permission.WAKE_LOCK", f22633g) : f22633g.booleanValue());
            f22633g = valueOf;
            booleanValue = valueOf.booleanValue();
        }
        return booleanValue;
    }

    /* renamed from: c */
    public static boolean m13637c() {
        if (!Log.isLoggable("FirebaseMessaging", 3)) {
            return Build.VERSION.SDK_INT == 23 && Log.isLoggable("FirebaseMessaging", 3);
        }
        return true;
    }

    /* renamed from: a */
    public final boolean m13645a() {
        boolean z;
        synchronized (this) {
            ConnectivityManager connectivityManager = (ConnectivityManager) this.f22635a.getSystemService("connectivity");
            NetworkInfo activeNetworkInfo = connectivityManager != null ? connectivityManager.getActiveNetworkInfo() : null;
            if (activeNetworkInfo != null) {
                if (activeNetworkInfo.isConnected()) {
                    z = true;
                }
            }
            z = false;
        }
        return z;
    }

    @Override // java.lang.Runnable
    @SuppressLint({"Wakelock"})
    public void run() {
        if (m13639b(this.f22635a)) {
            this.f22637c.acquire(C9979b.f22579a);
        }
        try {
            try {
                this.f22638d.m13656a(true);
                if (!this.f22636b.m14059e()) {
                    this.f22638d.m13656a(false);
                    if (m13639b(this.f22635a)) {
                        try {
                            this.f22637c.release();
                        } catch (RuntimeException e) {
                        }
                    }
                } else if (!m13644a(this.f22635a) || m13645a()) {
                    if (this.f22638d.m13647e()) {
                        this.f22638d.m13656a(false);
                    } else {
                        this.f22638d.m13665a(this.f22639e);
                    }
                    if (m13639b(this.f22635a)) {
                        try {
                            this.f22637c.release();
                        } catch (RuntimeException e2) {
                        }
                    }
                } else {
                    new C10008a(this).m13635a();
                    if (m13639b(this.f22635a)) {
                        try {
                            this.f22637c.release();
                        } catch (RuntimeException e3) {
                        }
                    }
                }
            } catch (IOException e4) {
                String valueOf = String.valueOf(e4.getMessage());
                Log.e("FirebaseMessaging", valueOf.length() != 0 ? "Failed to sync topics. Won't retry sync. ".concat(valueOf) : new String("Failed to sync topics. Won't retry sync. "));
                this.f22638d.m13656a(false);
                if (m13639b(this.f22635a)) {
                    try {
                        this.f22637c.release();
                    } catch (RuntimeException e5) {
                    }
                }
            }
        } catch (Throwable th) {
            if (m13639b(this.f22635a)) {
                try {
                    this.f22637c.release();
                } catch (RuntimeException e6) {
                }
            }
            throw th;
        }
    }
}
