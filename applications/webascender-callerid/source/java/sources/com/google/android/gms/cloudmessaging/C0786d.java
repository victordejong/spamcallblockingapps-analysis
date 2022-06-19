package com.google.android.gms.cloudmessaging;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcelable;
import android.os.RemoteException;
import android.util.Log;
import com.appsflyer.internal.referrer.Payload;
import com.google.android.gms.cloudmessaging.C0787e;
import com.google.android.gms.tasks.AbstractC1646g;
import com.google.android.gms.tasks.C1647h;
import com.google.android.gms.tasks.C1650j;
import f.e.g;
import java.io.IOException;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* renamed from: com.google.android.gms.cloudmessaging.d */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/cloudmessaging/d.class */
public class C0786d {

    /* renamed from: h */
    private static int f3274h;

    /* renamed from: i */
    private static PendingIntent f3275i;

    /* renamed from: j */
    private static final Executor f3276j = ExecutorC0785c0.f3273f;

    /* renamed from: b */
    private final Context f3278b;

    /* renamed from: c */
    private final C0803u f3279c;

    /* renamed from: d */
    private final ScheduledExecutorService f3280d;

    /* renamed from: f */
    private Messenger f3282f;

    /* renamed from: g */
    private C0787e f3283g;

    /* renamed from: a */
    private final g<String, C1647h<Bundle>> f3277a = new g<>();

    /* renamed from: e */
    private Messenger f3281e = new Messenger((Handler) new b0(this, Looper.getMainLooper()));

    public C0786d(Context context) {
        this.f3278b = context;
        this.f3279c = new C0803u(context);
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1);
        scheduledThreadPoolExecutor.setKeepAliveTime(60L, TimeUnit.SECONDS);
        scheduledThreadPoolExecutor.allowCoreThreadTimeOut(true);
        this.f3280d = scheduledThreadPoolExecutor;
    }

    /* renamed from: b */
    static final /* synthetic */ Bundle m3735b(AbstractC1646g abstractC1646g) throws Exception {
        if (abstractC1646g.m1452s()) {
            return (Bundle) abstractC1646g.m1456o();
        }
        if (Log.isLoggable("Rpc", 3)) {
            String valueOf = String.valueOf(abstractC1646g.m1457n());
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 22);
            sb.append("Error making request: ");
            sb.append(valueOf);
            Log.d("Rpc", sb.toString());
        }
        throw new IOException("SERVICE_NOT_AVAILABLE", abstractC1646g.m1457n());
    }

    /* renamed from: c */
    static final /* synthetic */ AbstractC1646g m3734c(Bundle bundle) throws Exception {
        return m3725l(bundle) ? C1650j.m1440e(null) : C1650j.m1440e(bundle);
    }

    /* renamed from: e */
    private static String m3732e() {
        String num;
        synchronized (C0786d.class) {
            try {
                int i = f3274h;
                f3274h = i + 1;
                num = Integer.toString(i);
            } catch (Throwable th) {
                throw th;
            }
        }
        return num;
    }

    /* renamed from: f */
    private static void m3731f(Context context, Intent intent) {
        synchronized (C0786d.class) {
            try {
                if (f3275i == null) {
                    Intent intent2 = new Intent();
                    intent2.setPackage("com.google.example.invalidpackage");
                    f3275i = PendingIntent.getBroadcast(context, 0, intent2, 0);
                }
                intent.putExtra("app", f3275i);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: g */
    public final void m3730g(Message message) {
        if (message != null) {
            Object obj = message.obj;
            if (obj instanceof Intent) {
                Intent intent = (Intent) obj;
                intent.setExtrasClassLoader(new C0787e.C0788a());
                if (intent.hasExtra("google.messenger")) {
                    Parcelable parcelableExtra = intent.getParcelableExtra("google.messenger");
                    if (parcelableExtra instanceof C0787e) {
                        this.f3283g = (C0787e) parcelableExtra;
                    }
                    if (parcelableExtra instanceof Messenger) {
                        this.f3282f = (Messenger) parcelableExtra;
                    }
                }
                Intent intent2 = (Intent) message.obj;
                String action = intent2.getAction();
                if (!"com.google.android.c2dm.intent.REGISTRATION".equals(action)) {
                    if (!Log.isLoggable("Rpc", 3)) {
                        return;
                    }
                    String valueOf = String.valueOf(action);
                    Log.d("Rpc", valueOf.length() != 0 ? "Unexpected response action: ".concat(valueOf) : new String("Unexpected response action: "));
                    return;
                }
                String stringExtra = intent2.getStringExtra("registration_id");
                String str = stringExtra;
                if (stringExtra == null) {
                    str = intent2.getStringExtra("unregistered");
                }
                if (str != null) {
                    Matcher matcher = Pattern.compile("\\|ID\\|([^|]+)\\|:?+(.*)").matcher(str);
                    if (!matcher.matches()) {
                        if (!Log.isLoggable("Rpc", 3)) {
                            return;
                        }
                        String valueOf2 = String.valueOf(str);
                        Log.d("Rpc", valueOf2.length() != 0 ? "Unexpected response string: ".concat(valueOf2) : new String("Unexpected response string: "));
                        return;
                    }
                    String group = matcher.group(1);
                    String group2 = matcher.group(2);
                    if (group == null) {
                        return;
                    }
                    Bundle extras = intent2.getExtras();
                    extras.putString("registration_id", group2);
                    m3727j(group, extras);
                    return;
                }
                String stringExtra2 = intent2.getStringExtra("error");
                if (stringExtra2 == null) {
                    String valueOf3 = String.valueOf(intent2.getExtras());
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf3).length() + 49);
                    sb.append("Unexpected response, no error or registration id ");
                    sb.append(valueOf3);
                    Log.w("Rpc", sb.toString());
                    return;
                }
                if (Log.isLoggable("Rpc", 3)) {
                    String valueOf4 = String.valueOf(stringExtra2);
                    Log.d("Rpc", valueOf4.length() != 0 ? "Received InstanceID error ".concat(valueOf4) : new String("Received InstanceID error "));
                }
                if (!stringExtra2.startsWith("|")) {
                    synchronized (this.f3277a) {
                        for (int i = 0; i < this.f3277a.size(); i++) {
                            m3727j((String) this.f3277a.j(i), intent2.getExtras());
                        }
                    }
                    return;
                }
                String[] split = stringExtra2.split("\\|");
                if (split.length <= 2 || !"ID".equals(split[1])) {
                    String valueOf5 = String.valueOf(stringExtra2);
                    Log.w("Rpc", valueOf5.length() != 0 ? "Unexpected structured response ".concat(valueOf5) : new String("Unexpected structured response "));
                    return;
                }
                String str2 = split[2];
                String str3 = split[3];
                String str4 = str3;
                if (str3.startsWith(":")) {
                    str4 = str3.substring(1);
                }
                m3727j(str2, intent2.putExtra("error", str4).getExtras());
                return;
            }
        }
        Log.w("Rpc", "Dropping invalid message");
    }

    /* renamed from: i */
    public static final /* synthetic */ void m3728i(C1647h c1647h) {
        if (c1647h.m1446d(new IOException(Payload.RESPONSE_TIMEOUT))) {
            Log.w("Rpc", "No response");
        }
    }

    /* renamed from: j */
    private final void m3727j(String str, Bundle bundle) {
        synchronized (this.f3277a) {
            C1647h c1647h = (C1647h) this.f3277a.remove(str);
            if (c1647h != null) {
                c1647h.m1447c(bundle);
                return;
            }
            String valueOf = String.valueOf(str);
            Log.w("Rpc", valueOf.length() != 0 ? "Missing callback for ".concat(valueOf) : new String("Missing callback for "));
        }
    }

    /* renamed from: l */
    private static boolean m3725l(Bundle bundle) {
        return bundle != null && bundle.containsKey("google.messenger");
    }

    /* renamed from: m */
    private final AbstractC1646g<Bundle> m3724m(Bundle bundle) {
        String m3732e = m3732e();
        C1647h c1647h = new C1647h();
        synchronized (this.f3277a) {
            this.f3277a.put(m3732e, c1647h);
        }
        Intent intent = new Intent();
        intent.setPackage("com.google.android.gms");
        if (this.f3279c.m3702a() == 2) {
            intent.setAction("com.google.iid.TOKEN_REQUEST");
        } else {
            intent.setAction("com.google.android.c2dm.intent.REGISTER");
        }
        intent.putExtras(bundle);
        m3731f(this.f3278b, intent);
        StringBuilder sb = new StringBuilder(String.valueOf(m3732e).length() + 5);
        sb.append("|ID|");
        sb.append(m3732e);
        sb.append("|");
        intent.putExtra("kid", sb.toString());
        if (Log.isLoggable("Rpc", 3)) {
            String valueOf = String.valueOf(intent.getExtras());
            StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf).length() + 8);
            sb2.append("Sending ");
            sb2.append(valueOf);
            Log.d("Rpc", sb2.toString());
        }
        intent.putExtra("google.messenger", this.f3281e);
        if (this.f3282f != null || this.f3283g != null) {
            Message obtain = Message.obtain();
            obtain.obj = intent;
            try {
                Messenger messenger = this.f3282f;
                if (messenger != null) {
                    messenger.send(obtain);
                } else {
                    this.f3283g.m3722b(obtain);
                }
            } catch (RemoteException e) {
                if (Log.isLoggable("Rpc", 3)) {
                    Log.d("Rpc", "Messenger failed, fallback to startService");
                }
            }
            c1647h.m1449a().m1466e(f3276j, new a0(this, m3732e, this.f3280d.schedule(new Runnable(c1647h) { // from class: com.google.android.gms.cloudmessaging.x

                /* renamed from: f */
                private final C1647h f3319f;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f3319f = c1647h;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    C0786d.m3728i(this.f3319f);
                }
            }, 30L, TimeUnit.SECONDS)));
            return c1647h.m1449a();
        }
        if (this.f3279c.m3702a() == 2) {
            this.f3278b.sendBroadcast(intent);
        } else {
            this.f3278b.startService(intent);
        }
        c1647h.m1449a().m1466e(f3276j, new a0(this, m3732e, this.f3280d.schedule(new Runnable(c1647h) { // from class: com.google.android.gms.cloudmessaging.x

            /* renamed from: f */
            private final C1647h f3319f;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f3319f = c1647h;
            }

            @Override // java.lang.Runnable
            public final void run() {
                C0786d.m3728i(this.f3319f);
            }
        }, 30L, TimeUnit.SECONDS)));
        return c1647h.m1449a();
    }

    /* renamed from: a */
    public AbstractC1646g<Bundle> m3736a(Bundle bundle) {
        boolean z = true;
        if (this.f3279c.m3700c() >= 12000000) {
            return C0792i.m3719c(this.f3278b).m3716f(1, bundle).m1460k(f3276j, w.a);
        }
        if (this.f3279c.m3702a() == 0) {
            z = false;
        }
        return !z ? C1650j.m1441d(new IOException("MISSING_INSTANCEID_SERVICE")) : m3724m(bundle).m1458m(f3276j, new y(this, bundle));
    }

    /* renamed from: d */
    final /* synthetic */ AbstractC1646g m3733d(Bundle bundle, AbstractC1646g abstractC1646g) throws Exception {
        if (abstractC1646g.m1452s() && m3725l((Bundle) abstractC1646g.m1456o())) {
            return m3724m(bundle).m1450u(f3276j, z.a);
        }
        return abstractC1646g;
    }

    /* renamed from: k */
    final /* synthetic */ void m3726k(String str, ScheduledFuture scheduledFuture, AbstractC1646g abstractC1646g) {
        synchronized (this.f3277a) {
            this.f3277a.remove(str);
        }
        scheduledFuture.cancel(false);
    }
}
