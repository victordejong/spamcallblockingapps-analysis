package com.google.firebase.iid;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcelable;
import android.support.p001v4.util.SimpleArrayMap;
import android.util.Log;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.iid.zzl;
import com.privacystar.core.service.googleplay.IABConstants;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import java.io.IOException;
import java.util.concurrent.ExecutionException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/zzat.class */
final class zzat {
    private static int zzcf;
    private static PendingIntent zzcr;
    private final zzan zzan;
    @GuardedBy("responseCallbacks")
    private final SimpleArrayMap<String, TaskCompletionSource<Bundle>> zzcs = new SimpleArrayMap<>();
    private Messenger zzct = new Messenger(new zzau(this, Looper.getMainLooper()));
    private Messenger zzcu;
    private zzl zzcv;
    private final Context zzx;

    public zzat(Context context, zzan zzanVar) {
        this.zzx = context;
        this.zzan = zzanVar;
    }

    private static void zza(Context context, Intent intent) {
        synchronized (zzat.class) {
            try {
                if (zzcr == null) {
                    Intent intent2 = new Intent();
                    intent2.setPackage("com.google.example.invalidpackage");
                    zzcr = PendingIntent.getBroadcast(context, 0, intent2, 0);
                }
                intent.putExtra(SettingsJsonConstants.APP_KEY, zzcr);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private final void zza(String str, Bundle bundle) {
        synchronized (this.zzcs) {
            TaskCompletionSource<Bundle> remove = this.zzcs.remove(str);
            if (remove == null) {
                String valueOf = String.valueOf(str);
                Log.w("FirebaseInstanceId", valueOf.length() != 0 ? "Missing callback for ".concat(valueOf) : new String("Missing callback for "));
                return;
            }
            remove.setResult(bundle);
        }
    }

    private static String zzah() {
        String num;
        synchronized (zzat.class) {
            try {
                int i = zzcf;
                zzcf = i + 1;
                num = Integer.toString(i);
            } catch (Throwable th) {
                throw th;
            }
        }
        return num;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzb(Message message) {
        if (message == null || !(message.obj instanceof Intent)) {
            Log.w("FirebaseInstanceId", "Dropping invalid message");
            return;
        }
        Intent intent = (Intent) message.obj;
        intent.setExtrasClassLoader(new zzl.zza());
        if (intent.hasExtra("google.messenger")) {
            Parcelable parcelableExtra = intent.getParcelableExtra("google.messenger");
            if (parcelableExtra instanceof zzl) {
                this.zzcv = (zzl) parcelableExtra;
            }
            if (parcelableExtra instanceof Messenger) {
                this.zzcu = (Messenger) parcelableExtra;
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
                String stringExtra2 = intent2.getStringExtra(IABConstants.EXTRA_ERROR);
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
                    zza(str2, intent2.putExtra(IABConstants.EXTRA_ERROR, str4).getExtras());
                    return;
                }
                synchronized (this.zzcs) {
                    for (int i = 0; i < this.zzcs.size(); i++) {
                        zza(this.zzcs.keyAt(i), intent2.getExtras());
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
                zza(group, extras);
            } else if (Log.isLoggable("FirebaseInstanceId", 3)) {
                String valueOf4 = String.valueOf(str);
                Log.d("FirebaseInstanceId", valueOf4.length() != 0 ? "Unexpected response string: ".concat(valueOf4) : new String("Unexpected response string: "));
            }
        } else if (Log.isLoggable("FirebaseInstanceId", 3)) {
            String valueOf5 = String.valueOf(action);
            Log.d("FirebaseInstanceId", valueOf5.length() != 0 ? "Unexpected response action: ".concat(valueOf5) : new String("Unexpected response action: "));
        }
    }

    private final Bundle zzd(Bundle bundle) throws IOException {
        Bundle zze = zze(bundle);
        Bundle bundle2 = zze;
        if (zze != null) {
            bundle2 = zze;
            if (zze.containsKey("google.messenger")) {
                Bundle zze2 = zze(bundle);
                bundle2 = zze2;
                if (zze2 != null) {
                    bundle2 = zze2;
                    if (zze2.containsKey("google.messenger")) {
                        bundle2 = null;
                    }
                }
            }
        }
        return bundle2;
    }

    /* JADX WARN: Removed duplicated region for block: B:76:0x0179 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final android.os.Bundle zze(android.os.Bundle r6) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 465
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.iid.zzat.zze(android.os.Bundle):android.os.Bundle");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Bundle zzc(Bundle bundle) throws IOException {
        if (this.zzan.zzaf() < 12000000) {
            return zzd(bundle);
        }
        try {
            return (Bundle) Tasks.await(zzab.zzc(this.zzx).zzb(1, bundle));
        } catch (InterruptedException | ExecutionException e) {
            if (Log.isLoggable("FirebaseInstanceId", 3)) {
                String valueOf = String.valueOf(e);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 22);
                sb.append("Error making request: ");
                sb.append(valueOf);
                Log.d("FirebaseInstanceId", sb.toString());
            }
            if (!(e.getCause() instanceof zzal) || ((zzal) e.getCause()).getErrorCode() != 4) {
                return null;
            }
            return zzd(bundle);
        }
    }
}
