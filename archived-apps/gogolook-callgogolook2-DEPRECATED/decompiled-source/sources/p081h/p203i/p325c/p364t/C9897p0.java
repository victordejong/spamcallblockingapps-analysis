package p081h.p203i.p325c.p364t;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Parcelable;
import android.util.Log;
import androidx.annotation.MainThread;
import androidx.annotation.Nullable;
import androidx.media2.session.MediaSessionImplBase;
import com.google.firebase.iid.FirebaseInstanceIdReceiver;
import java.util.ArrayDeque;
import java.util.Queue;
import javax.annotation.concurrent.GuardedBy;
/* renamed from: h.i.c.t.p0 */
/* loaded from: classes2-dex2jar.jar:h/i/c/t/p0.class */
public class C9897p0 {

    /* renamed from: e */
    public static C9897p0 f22406e;
    @Nullable
    @GuardedBy("this")

    /* renamed from: a */
    public String f22407a = null;

    /* renamed from: b */
    public Boolean f22408b = null;

    /* renamed from: c */
    public Boolean f22409c = null;

    /* renamed from: d */
    public final Queue<Intent> f22410d = new ArrayDeque();

    /* renamed from: a */
    public static Intent m14024a(Context context, String str, Intent intent) {
        Intent intent2 = new Intent(context, FirebaseInstanceIdReceiver.class);
        intent2.setAction(str);
        intent2.putExtra("wrapped_intent", intent);
        return intent2;
    }

    @Nullable
    /* renamed from: a */
    public static Intent m14023a(Intent intent) {
        Parcelable parcelableExtra = intent.getParcelableExtra("wrapped_intent");
        if (parcelableExtra instanceof Intent) {
            return (Intent) parcelableExtra;
        }
        return null;
    }

    /* renamed from: b */
    public static C9897p0 m14022b() {
        C9897p0 p0Var;
        synchronized (C9897p0.class) {
            try {
                if (f22406e == null) {
                    f22406e = new C9897p0();
                }
                p0Var = f22406e;
            } catch (Throwable th) {
                throw th;
            }
        }
        return p0Var;
    }

    /* renamed from: d */
    public static void m14018d(Context context, Intent intent) {
        context.sendBroadcast(m14024a(context, "com.google.firebase.MESSAGING_EVENT", intent));
    }

    /* renamed from: a */
    public final int m14025a(Context context, Intent intent) {
        String b = m14020b(context, intent);
        if (b != null) {
            if (Log.isLoggable("FirebaseInstanceId", 3)) {
                String valueOf = String.valueOf(b);
                if (valueOf.length() != 0) {
                    "Restricting intent to a specific service: ".concat(valueOf);
                } else {
                    new String("Restricting intent to a specific service: ");
                }
            }
            intent.setClassName(context.getPackageName(), b);
        }
        try {
            if ((m14021b(context) ? C9906s0.m13978a(context, intent) : context.startService(intent)) != null) {
                return -1;
            }
            Log.e("FirebaseInstanceId", "Error while delivering the message: ServiceIntent not found.");
            return 404;
        } catch (IllegalStateException e) {
            String valueOf2 = String.valueOf(e);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf2).length() + 45);
            sb.append("Failed to start service while in background: ");
            sb.append(valueOf2);
            Log.e("FirebaseInstanceId", sb.toString());
            return 402;
        } catch (SecurityException e2) {
            Log.e("FirebaseInstanceId", "Error while delivering the message to the serviceIntent", e2);
            return 401;
        }
    }

    @MainThread
    /* renamed from: a */
    public Intent m14027a() {
        return this.f22410d.poll();
    }

    /* renamed from: a */
    public boolean m14026a(Context context) {
        if (this.f22409c == null) {
            this.f22409c = Boolean.valueOf(context.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") == 0);
        }
        if (!this.f22408b.booleanValue()) {
            Log.isLoggable("FirebaseInstanceId", 3);
        }
        return this.f22409c.booleanValue();
    }

    @Nullable
    /* renamed from: b */
    public final String m14020b(Context context, Intent intent) {
        synchronized (this) {
            if (this.f22407a != null) {
                return this.f22407a;
            }
            ResolveInfo resolveService = context.getPackageManager().resolveService(intent, 0);
            if (!(resolveService == null || resolveService.serviceInfo == null)) {
                ServiceInfo serviceInfo = resolveService.serviceInfo;
                if (context.getPackageName().equals(serviceInfo.packageName) && serviceInfo.name != null) {
                    if (serviceInfo.name.startsWith(MediaSessionImplBase.DEFAULT_MEDIA_SESSION_TAG_DELIM)) {
                        String valueOf = String.valueOf(context.getPackageName());
                        String valueOf2 = String.valueOf(serviceInfo.name);
                        this.f22407a = valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
                    } else {
                        this.f22407a = serviceInfo.name;
                    }
                    return this.f22407a;
                }
                String str = serviceInfo.packageName;
                String str2 = serviceInfo.name;
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 94 + String.valueOf(str2).length());
                sb.append("Error resolving target intent service, skipping classname enforcement. Resolved service was: ");
                sb.append(str);
                sb.append("/");
                sb.append(str2);
                Log.e("FirebaseInstanceId", sb.toString());
                return null;
            }
            Log.e("FirebaseInstanceId", "Failed to resolve target intent service, skipping classname enforcement");
            return null;
        }
    }

    /* renamed from: b */
    public boolean m14021b(Context context) {
        if (this.f22408b == null) {
            this.f22408b = Boolean.valueOf(context.checkCallingOrSelfPermission("android.permission.WAKE_LOCK") == 0);
        }
        if (!this.f22408b.booleanValue()) {
            Log.isLoggable("FirebaseInstanceId", 3);
        }
        return this.f22408b.booleanValue();
    }

    @MainThread
    /* renamed from: c */
    public int m14019c(Context context, Intent intent) {
        Log.isLoggable("FirebaseInstanceId", 3);
        this.f22410d.offer(intent);
        Intent intent2 = new Intent("com.google.firebase.MESSAGING_EVENT");
        intent2.setPackage(context.getPackageName());
        return m14025a(context, intent2);
    }
}
