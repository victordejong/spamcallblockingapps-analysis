package com.google.android.gms.gcm;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import com.google.firebase.messaging.Constants;
import java.util.MissingFormatArgumentException;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONArray;
import org.json.JSONException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/gcm/zzd.class */
final class zzd {

    /* renamed from: d */
    static zzd f7745d;

    /* renamed from: a */
    private final Context f7746a;

    /* renamed from: b */
    private String f7747b;

    /* renamed from: c */
    private final AtomicInteger f7748c = new AtomicInteger((int) SystemClock.elapsedRealtime());

    private zzd(Context context) {
        this.f7746a = context.getApplicationContext();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static zzd m14170a(Context context) {
        zzd zzdVar;
        synchronized (zzd.class) {
            try {
                if (f7745d == null) {
                    f7745d = new zzd(context);
                }
                zzdVar = f7745d;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzdVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static String m14169b(Bundle bundle, String str) {
        String string = bundle.getString(str);
        String str2 = string;
        if (string == null) {
            str2 = bundle.getString(str.replace(Constants.MessageNotificationKeys.NOTIFICATION_PREFIX, Constants.MessageNotificationKeys.NOTIFICATION_PREFIX_OLD));
        }
        return str2;
    }

    /* renamed from: c */
    private final String m14168c(Bundle bundle, String str) {
        String b = m14169b(bundle, str);
        if (!TextUtils.isEmpty(b)) {
            return b;
        }
        String valueOf = String.valueOf(str);
        String b2 = m14169b(bundle, Constants.MessageNotificationKeys.TEXT_RESOURCE_SUFFIX.length() != 0 ? valueOf.concat(Constants.MessageNotificationKeys.TEXT_RESOURCE_SUFFIX) : new String(valueOf));
        if (TextUtils.isEmpty(b2)) {
            return null;
        }
        Resources resources = this.f7746a.getResources();
        int identifier = resources.getIdentifier(b2, "string", this.f7746a.getPackageName());
        if (identifier == 0) {
            String valueOf2 = String.valueOf(str);
            String substring = (Constants.MessageNotificationKeys.TEXT_RESOURCE_SUFFIX.length() != 0 ? valueOf2.concat(Constants.MessageNotificationKeys.TEXT_RESOURCE_SUFFIX) : new String(valueOf2)).substring(6);
            StringBuilder sb = new StringBuilder(String.valueOf(substring).length() + 49 + String.valueOf(b2).length());
            sb.append(substring);
            sb.append(" resource not found: ");
            sb.append(b2);
            sb.append(" Default value will be used.");
            Log.w("GcmNotification", sb.toString());
            return null;
        }
        String valueOf3 = String.valueOf(str);
        String b3 = m14169b(bundle, Constants.MessageNotificationKeys.TEXT_ARGS_SUFFIX.length() != 0 ? valueOf3.concat(Constants.MessageNotificationKeys.TEXT_ARGS_SUFFIX) : new String(valueOf3));
        if (TextUtils.isEmpty(b3)) {
            return resources.getString(identifier);
        }
        try {
            JSONArray jSONArray = new JSONArray(b3);
            int length = jSONArray.length();
            Object[] objArr = new String[length];
            for (int i = 0; i < length; i++) {
                objArr[i] = jSONArray.opt(i);
            }
            return resources.getString(identifier, objArr);
        } catch (MissingFormatArgumentException e) {
            StringBuilder sb2 = new StringBuilder(String.valueOf(b2).length() + 58 + String.valueOf(b3).length());
            sb2.append("Missing format argument for ");
            sb2.append(b2);
            sb2.append(": ");
            sb2.append(b3);
            sb2.append(" Default value will be used.");
            Log.w("GcmNotification", sb2.toString(), e);
            return null;
        } catch (JSONException e2) {
            String valueOf4 = String.valueOf(str);
            String substring2 = (Constants.MessageNotificationKeys.TEXT_ARGS_SUFFIX.length() != 0 ? valueOf4.concat(Constants.MessageNotificationKeys.TEXT_ARGS_SUFFIX) : new String(valueOf4)).substring(6);
            StringBuilder sb3 = new StringBuilder(String.valueOf(substring2).length() + 41 + String.valueOf(b3).length());
            sb3.append("Malformed ");
            sb3.append(substring2);
            sb3.append(": ");
            sb3.append(b3);
            sb3.append("  Default value will be used.");
            Log.w("GcmNotification", sb3.toString());
            return null;
        }
    }

    /* renamed from: e */
    private final Bundle m14166e() {
        ApplicationInfo applicationInfo;
        Bundle bundle;
        try {
            applicationInfo = this.f7746a.getPackageManager().getApplicationInfo(this.f7746a.getPackageName(), 128);
        } catch (PackageManager.NameNotFoundException e) {
            applicationInfo = null;
        }
        return (applicationInfo == null || (bundle = applicationInfo.metaData) == null) ? Bundle.EMPTY : bundle;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:17:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00e7  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x016a  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0189  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x01df  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x022e  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x033d  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x034c  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0372  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0382  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x038f  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x039b  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x03ba  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x03da  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m14167d(android.os.Bundle r8) {
        /*
            Method dump skipped, instructions count: 1031
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.gcm.zzd.m14167d(android.os.Bundle):boolean");
    }
}
