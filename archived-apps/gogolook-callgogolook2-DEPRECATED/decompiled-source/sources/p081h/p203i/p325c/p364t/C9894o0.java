package p081h.p203i.p325c.p364t;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcelable;
import android.os.RemoteException;
import android.util.Log;
import androidx.annotation.AnyThread;
import androidx.collection.SimpleArrayMap;
import com.appsflyer.internal.referrer.Payload;
import com.google.firebase.iid.FirebaseIidMessengerCompat;
import java.io.IOException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.annotation.concurrent.GuardedBy;
import p081h.p203i.p204a.p224e.p259j.p268i.HandlerC7754e;
import p081h.p203i.p204a.p224e.p293r.AbstractC9128a;
import p081h.p203i.p204a.p224e.p293r.AbstractC9132c;
import p081h.p203i.p204a.p224e.p293r.AbstractC9143h;
import p081h.p203i.p204a.p224e.p293r.C9145i;
import p081h.p203i.p204a.p224e.p293r.C9148k;
/* renamed from: h.i.c.t.o0 */
/* loaded from: classes2-dex2jar.jar:h/i/c/t/o0.class */
public class C9894o0 {

    /* renamed from: h */
    public static int f22394h;

    /* renamed from: i */
    public static PendingIntent f22395i;

    /* renamed from: b */
    public final Context f22397b;

    /* renamed from: c */
    public final C9873e0 f22398c;

    /* renamed from: d */
    public final ScheduledExecutorService f22399d;

    /* renamed from: f */
    public Messenger f22401f;

    /* renamed from: g */
    public FirebaseIidMessengerCompat f22402g;
    @GuardedBy("responseCallbacks")

    /* renamed from: a */
    public final SimpleArrayMap<String, C9145i<Bundle>> f22396a = new SimpleArrayMap<>();

    /* renamed from: e */
    public Messenger f22400e = new Messenger(new HandlerC9895a(Looper.getMainLooper()));

    /* renamed from: h.i.c.t.o0$a */
    /* loaded from: classes2-dex2jar.jar:h/i/c/t/o0$a.class */
    public class HandlerC9895a extends HandlerC7754e {
        public HandlerC9895a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            C9894o0.this.m14038a(message);
        }
    }

    public C9894o0(Context context, C9873e0 e0Var) {
        this.f22397b = context;
        this.f22398c = e0Var;
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1);
        scheduledThreadPoolExecutor.setKeepAliveTime(60L, TimeUnit.SECONDS);
        scheduledThreadPoolExecutor.allowCoreThreadTimeOut(true);
        this.f22399d = scheduledThreadPoolExecutor;
    }

    /* renamed from: a */
    public static final /* synthetic */ Bundle m14037a(AbstractC9143h hVar) throws Exception {
        if (hVar.mo16009e()) {
            return (Bundle) hVar.mo16014b();
        }
        if (Log.isLoggable("FirebaseInstanceId", 3)) {
            String valueOf = String.valueOf(hVar.mo16030a());
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 22);
            sb.append("Error making request: ");
            sb.append(valueOf);
            sb.toString();
        }
        throw new IOException("SERVICE_NOT_AVAILABLE");
    }

    /* renamed from: a */
    public static String m14045a() {
        String num;
        synchronized (C9894o0.class) {
            try {
                int i = f22394h;
                f22394h = i + 1;
                num = Integer.toString(i);
            } catch (Throwable th) {
                throw th;
            }
        }
        return num;
    }

    /* renamed from: a */
    public static void m14044a(Context context, Intent intent) {
        synchronized (C9894o0.class) {
            try {
                if (f22395i == null) {
                    Intent intent2 = new Intent();
                    intent2.setPackage("com.google.example.invalidpackage");
                    f22395i = PendingIntent.getBroadcast(context, 0, intent2, 0);
                }
                intent.putExtra("app", f22395i);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: d */
    public static boolean m14029d(Bundle bundle) {
        return bundle != null && bundle.containsKey("google.messenger");
    }

    /* renamed from: e */
    public static final /* synthetic */ AbstractC9143h m14028e(Bundle bundle) throws Exception {
        return m14029d(bundle) ? C9148k.m15999a((Object) null) : C9148k.m15999a(bundle);
    }

    /* renamed from: a */
    public AbstractC9143h<Bundle> m14041a(Bundle bundle) {
        return this.f22398c.m14061c() >= 12000000 ? C9916x.m13966a(this.f22397b).m13963b(1, bundle).mo16020a(C9878h.m14050a(), C9884j0.f22375a) : m14030c(bundle);
    }

    /* renamed from: a */
    public final /* synthetic */ AbstractC9143h m14040a(Bundle bundle, AbstractC9143h hVar) throws Exception {
        if (hVar.mo16009e() && m14029d((Bundle) hVar.mo16014b())) {
            return m14031b(bundle).mo16015a(C9878h.m14050a(), C9892n0.f22392a);
        }
        return hVar;
    }

    /* renamed from: a */
    public final void m14043a(Intent intent) {
        String action = intent.getAction();
        if ("com.google.android.c2dm.intent.REGISTRATION".equals(action)) {
            String stringExtra = intent.getStringExtra("registration_id");
            String str = stringExtra;
            if (stringExtra == null) {
                str = intent.getStringExtra("unregistered");
            }
            if (str == null) {
                m14032b(intent);
                return;
            }
            Matcher matcher = Pattern.compile("\\|ID\\|([^|]+)\\|:?+(.*)").matcher(str);
            if (matcher.matches()) {
                String group = matcher.group(1);
                String group2 = matcher.group(2);
                Bundle extras = intent.getExtras();
                extras.putString("registration_id", group2);
                m14034a(group, extras);
            } else if (Log.isLoggable("FirebaseInstanceId", 3)) {
                String valueOf = String.valueOf(str);
                if (valueOf.length() != 0) {
                    "Unexpected response string: ".concat(valueOf);
                } else {
                    new String("Unexpected response string: ");
                }
            }
        } else if (Log.isLoggable("FirebaseInstanceId", 3)) {
            String valueOf2 = String.valueOf(action);
            if (valueOf2.length() != 0) {
                "Unexpected response action: ".concat(valueOf2);
            } else {
                new String("Unexpected response action: ");
            }
        }
    }

    /* renamed from: a */
    public void m14042a(Intent intent, String str) {
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 5);
        sb.append("|ID|");
        sb.append(str);
        sb.append("|");
        intent.putExtra("kid", sb.toString());
        if (Log.isLoggable("FirebaseInstanceId", 3)) {
            String valueOf = String.valueOf(intent.getExtras());
            StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf).length() + 8);
            sb2.append("Sending ");
            sb2.append(valueOf);
            sb2.toString();
        }
        intent.putExtra("google.messenger", this.f22400e);
        if (!(this.f22401f == null && this.f22402g == null)) {
            Message obtain = Message.obtain();
            obtain.obj = intent;
            try {
                if (this.f22401f != null) {
                    this.f22401f.send(obtain);
                    return;
                } else {
                    this.f22402g.m31108a(obtain);
                    return;
                }
            } catch (RemoteException e) {
                Log.isLoggable("FirebaseInstanceId", 3);
            }
        }
        if (this.f22398c.m14060d() == 2) {
            this.f22397b.sendBroadcast(intent);
        } else {
            this.f22397b.startService(intent);
        }
    }

    /* renamed from: a */
    public final void m14039a(Bundle bundle, String str) {
        Intent intent = new Intent();
        intent.setPackage("com.google.android.gms");
        if (this.f22398c.m14060d() == 2) {
            intent.setAction("com.google.iid.TOKEN_REQUEST");
        } else {
            intent.setAction("com.google.android.c2dm.intent.REGISTER");
        }
        intent.putExtras(bundle);
        m14044a(this.f22397b, intent);
        m14042a(intent, str);
    }

    /* renamed from: a */
    public final void m14038a(Message message) {
        if (message != null) {
            Object obj = message.obj;
            if (obj instanceof Intent) {
                Intent intent = (Intent) obj;
                intent.setExtrasClassLoader(new FirebaseIidMessengerCompat.C3671b());
                if (intent.hasExtra("google.messenger")) {
                    Parcelable parcelableExtra = intent.getParcelableExtra("google.messenger");
                    if (parcelableExtra instanceof FirebaseIidMessengerCompat) {
                        this.f22402g = (FirebaseIidMessengerCompat) parcelableExtra;
                    }
                    if (parcelableExtra instanceof Messenger) {
                        this.f22401f = (Messenger) parcelableExtra;
                    }
                }
                m14043a((Intent) message.obj);
            }
        }
    }

    /* renamed from: a */
    public final void m14034a(String str, Bundle bundle) {
        synchronized (this.f22396a) {
            C9145i<Bundle> remove = this.f22396a.remove(str);
            if (remove == null) {
                String valueOf = String.valueOf(str);
                if (valueOf.length() != 0) {
                    "Missing callback for ".concat(valueOf);
                } else {
                    new String("Missing callback for ");
                }
                return;
            }
            remove.m16006a((C9145i<Bundle>) bundle);
        }
    }

    /* renamed from: a */
    public final /* synthetic */ void m14033a(String str, ScheduledFuture scheduledFuture, AbstractC9143h hVar) {
        synchronized (this.f22396a) {
            this.f22396a.remove(str);
        }
        scheduledFuture.cancel(false);
    }

    @AnyThread
    /* renamed from: b */
    public final AbstractC9143h<Bundle> m14031b(Bundle bundle) {
        final String a = m14045a();
        final C9145i<Bundle> iVar = new C9145i<>();
        synchronized (this.f22396a) {
            this.f22396a.put(a, iVar);
        }
        m14039a(bundle, a);
        final ScheduledFuture<?> schedule = this.f22399d.schedule(new Runnable(iVar) { // from class: h.i.c.t.l0

            /* renamed from: a */
            public final C9145i f22380a;

            {
                this.f22380a = iVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f22380a.m16005b((Exception) new IOException(Payload.RESPONSE_TIMEOUT));
            }
        }, 30L, TimeUnit.SECONDS);
        iVar.m16008a().mo16018a(C9878h.m14050a(), new AbstractC9132c(this, a, schedule) { // from class: h.i.c.t.m0

            /* renamed from: a */
            public final C9894o0 f22385a;

            /* renamed from: b */
            public final String f22386b;

            /* renamed from: c */
            public final ScheduledFuture f22387c;

            {
                this.f22385a = this;
                this.f22386b = a;
                this.f22387c = schedule;
            }

            @Override // p081h.p203i.p204a.p224e.p293r.AbstractC9132c
            /* renamed from: a */
            public final void mo3743a(AbstractC9143h hVar) {
                this.f22385a.m14033a(this.f22386b, this.f22387c, hVar);
            }
        });
        return iVar.m16008a();
    }

    /* renamed from: b */
    public void m14032b(Intent intent) {
        String stringExtra = intent.getStringExtra("error");
        if (stringExtra == null) {
            String valueOf = String.valueOf(intent.getExtras());
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 49);
            sb.append("Unexpected response, no error or registration id ");
            sb.append(valueOf);
            sb.toString();
            return;
        }
        if (Log.isLoggable("FirebaseInstanceId", 3)) {
            String valueOf2 = String.valueOf(stringExtra);
            if (valueOf2.length() != 0) {
                "Received InstanceID error ".concat(valueOf2);
            } else {
                new String("Received InstanceID error ");
            }
        }
        if (stringExtra.startsWith("|")) {
            String[] split = stringExtra.split("\\|");
            if (split.length <= 2 || !"ID".equals(split[1])) {
                String valueOf3 = String.valueOf(stringExtra);
                if (valueOf3.length() != 0) {
                    "Unexpected structured response ".concat(valueOf3);
                } else {
                    new String("Unexpected structured response ");
                }
            } else {
                String str = split[2];
                String str2 = split[3];
                String str3 = str2;
                if (str2.startsWith(":")) {
                    str3 = str2.substring(1);
                }
                m14034a(str, intent.putExtra("error", str3).getExtras());
            }
        } else {
            synchronized (this.f22396a) {
                for (int i = 0; i < this.f22396a.size(); i++) {
                    m14034a(this.f22396a.keyAt(i), intent.getExtras());
                }
            }
        }
    }

    /* renamed from: c */
    public final AbstractC9143h<Bundle> m14030c(final Bundle bundle) {
        return !this.f22398c.m14059e() ? C9148k.m16000a((Exception) new IOException("MISSING_INSTANCEID_SERVICE")) : m14031b(bundle).mo16012b(C9878h.m14050a(), new AbstractC9128a(this, bundle) { // from class: h.i.c.t.k0

            /* renamed from: a */
            public final C9894o0 f22377a;

            /* renamed from: b */
            public final Bundle f22378b;

            {
                this.f22377a = this;
                this.f22378b = bundle;
            }

            @Override // p081h.p203i.p204a.p224e.p293r.AbstractC9128a
            /* renamed from: a */
            public final Object mo14017a(AbstractC9143h hVar) {
                return this.f22377a.m14040a(this.f22378b, hVar);
            }
        });
    }
}
