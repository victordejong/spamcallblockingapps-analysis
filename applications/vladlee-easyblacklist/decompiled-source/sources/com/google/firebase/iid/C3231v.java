package com.google.firebase.iid;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcelable;
import android.util.Log;
import androidx.p026b.C0542i;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.iid.zzm;
import java.util.concurrent.ExecutionException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* renamed from: com.google.firebase.iid.v */
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/v.class */
final class C3231v {

    /* renamed from: a */
    private static int f19140a;

    /* renamed from: b */
    private static PendingIntent f19141b;

    /* renamed from: d */
    private final Context f19143d;

    /* renamed from: e */
    private final C3224o f19144e;

    /* renamed from: g */
    private Messenger f19146g;

    /* renamed from: h */
    private zzm f19147h;

    /* renamed from: c */
    private final C0542i<String, TaskCompletionSource<Bundle>> f19142c = new C0542i<>();

    /* renamed from: f */
    private Messenger f19145f = new Messenger(new HandlerC3230u(this, Looper.getMainLooper()));

    public C3231v(Context context, C3224o oVar) {
        this.f19143d = context;
        this.f19144e = oVar;
    }

    /* renamed from: a */
    private static String m456a() {
        String num;
        synchronized (C3231v.class) {
            try {
                int i = f19140a;
                f19140a = i + 1;
                num = Integer.toString(i);
            } catch (Throwable th) {
                throw th;
            }
        }
        return num;
    }

    /* renamed from: a */
    private static void m455a(Context context, Intent intent) {
        synchronized (C3231v.class) {
            try {
                if (f19141b == null) {
                    Intent intent2 = new Intent();
                    intent2.setPackage("com.google.example.invalidpackage");
                    f19141b = PendingIntent.getBroadcast(context, 0, intent2, 0);
                }
                intent.putExtra("app", f19141b);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static /* synthetic */ void m453a(C3231v vVar, Message message) {
        if (message == null || !(message.obj instanceof Intent)) {
            Log.w("FirebaseInstanceId", "Dropping invalid message");
            return;
        }
        Intent intent = (Intent) message.obj;
        intent.setExtrasClassLoader(new zzm.C3236a());
        if (intent.hasExtra("google.messenger")) {
            Parcelable parcelableExtra = intent.getParcelableExtra("google.messenger");
            if (parcelableExtra instanceof zzm) {
                vVar.f19147h = (zzm) parcelableExtra;
            }
            if (parcelableExtra instanceof Messenger) {
                vVar.f19146g = (Messenger) parcelableExtra;
            }
        }
        Intent intent2 = (Intent) message.obj;
        String action = intent2.getAction();
        if ("com.google.android.c2dm.intent.REGISTRATION".equals(action)) {
            String stringExtra = intent2.getStringExtra("registration_id");
            String str = stringExtra;
            if (stringExtra == null) {
                str = intent2.getStringExtra("unregistered");
            }
            if (str == null) {
                String stringExtra2 = intent2.getStringExtra("error");
                if (stringExtra2 == null) {
                    String valueOf = String.valueOf(intent2.getExtras());
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 49);
                    sb.append("Unexpected response, no error or registration id ");
                    sb.append(valueOf);
                    Log.w("FirebaseInstanceId", sb.toString());
                    return;
                }
                if (Log.isLoggable("FirebaseInstanceId", 3)) {
                    String valueOf2 = String.valueOf(stringExtra2);
                    Log.d("FirebaseInstanceId", valueOf2.length() != 0 ? "Received InstanceID error ".concat(valueOf2) : new String("Received InstanceID error "));
                }
                if (stringExtra2.startsWith("|")) {
                    String[] split = stringExtra2.split("\\|");
                    if (split.length <= 2 || !"ID".equals(split[1])) {
                        String valueOf3 = String.valueOf(stringExtra2);
                        Log.w("FirebaseInstanceId", valueOf3.length() != 0 ? "Unexpected structured response ".concat(valueOf3) : new String("Unexpected structured response "));
                        return;
                    }
                    String str2 = split[2];
                    String str3 = split[3];
                    String str4 = str3;
                    if (str3.startsWith(":")) {
                        str4 = str3.substring(1);
                    }
                    vVar.m452a(str2, intent2.putExtra("error", str4).getExtras());
                    return;
                }
                synchronized (vVar.f19142c) {
                    for (int i = 0; i < vVar.f19142c.size(); i++) {
                        vVar.m452a(vVar.f19142c.m8905b(i), intent2.getExtras());
                    }
                }
                return;
            }
            Matcher matcher = Pattern.compile("\\|ID\\|([^|]+)\\|:?+(.*)").matcher(str);
            if (matcher.matches()) {
                String group = matcher.group(1);
                String group2 = matcher.group(2);
                Bundle extras = intent2.getExtras();
                extras.putString("registration_id", group2);
                vVar.m452a(group, extras);
            } else if (Log.isLoggable("FirebaseInstanceId", 3)) {
                String valueOf4 = String.valueOf(str);
                Log.d("FirebaseInstanceId", valueOf4.length() != 0 ? "Unexpected response string: ".concat(valueOf4) : new String("Unexpected response string: "));
            }
        } else if (Log.isLoggable("FirebaseInstanceId", 3)) {
            String valueOf5 = String.valueOf(action);
            Log.d("FirebaseInstanceId", valueOf5.length() != 0 ? "Unexpected response action: ".concat(valueOf5) : new String("Unexpected response action: "));
        }
    }

    /* renamed from: a */
    private final void m452a(String str, Bundle bundle) {
        synchronized (this.f19142c) {
            TaskCompletionSource<Bundle> remove = this.f19142c.remove(str);
            if (remove == null) {
                String valueOf = String.valueOf(str);
                Log.w("FirebaseInstanceId", valueOf.length() != 0 ? "Missing callback for ".concat(valueOf) : new String("Missing callback for "));
                return;
            }
            remove.setResult(bundle);
        }
    }

    /* renamed from: b */
    private final Bundle m451b(Bundle bundle) {
        Bundle c = m450c(bundle);
        Bundle bundle2 = c;
        if (c != null) {
            bundle2 = c;
            if (c.containsKey("google.messenger")) {
                Bundle c2 = m450c(bundle);
                bundle2 = c2;
                if (c2 != null) {
                    bundle2 = c2;
                    if (c2.containsKey("google.messenger")) {
                        bundle2 = null;
                    }
                }
            }
        }
        return bundle2;
    }

    /* JADX WARN: Removed duplicated region for block: B:79:0x016e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final android.os.Bundle m450c(android.os.Bundle r6) {
        /*
            Method dump skipped, instructions count: 475
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.iid.C3231v.m450c(android.os.Bundle):android.os.Bundle");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final Bundle m454a(Bundle bundle) {
        if (this.f19144e.m462d() < 12000000) {
            return m451b(bundle);
        }
        try {
            return (Bundle) Tasks.await(C3214e.m484a(this.f19143d).m483a(bundle));
        } catch (InterruptedException | ExecutionException e) {
            if (Log.isLoggable("FirebaseInstanceId", 3)) {
                String valueOf = String.valueOf(e);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 22);
                sb.append("Error making request: ");
                sb.append(valueOf);
                Log.d("FirebaseInstanceId", sb.toString());
            }
            if (!(e.getCause() instanceof C3223n) || ((C3223n) e.getCause()).m469a() != 4) {
                return null;
            }
            return m451b(bundle);
        }
    }
}
