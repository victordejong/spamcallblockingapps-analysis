package com.google.firebase.iid;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.util.Base64;
import android.util.Log;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.firebase.FirebaseApp;
import java.security.KeyPair;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.List;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/zzan.class */
public final class zzan {
    @GuardedBy("this")
    private String zzci;
    @GuardedBy("this")
    private String zzcj;
    @GuardedBy("this")
    private int zzck;
    @GuardedBy("this")
    private int zzcl = 0;
    private final Context zzx;

    public zzan(Context context) {
        this.zzx = context;
    }

    public static String zza(FirebaseApp firebaseApp) {
        String gcmSenderId = firebaseApp.getOptions().getGcmSenderId();
        if (gcmSenderId != null) {
            return gcmSenderId;
        }
        String applicationId = firebaseApp.getOptions().getApplicationId();
        if (!applicationId.startsWith("1:")) {
            return applicationId;
        }
        String[] split = applicationId.split(":");
        if (split.length < 2) {
            return null;
        }
        String str = split[1];
        if (str.isEmpty()) {
            return null;
        }
        return str;
    }

    public static String zza(KeyPair keyPair) {
        try {
            byte[] digest = MessageDigest.getInstance("SHA1").digest(keyPair.getPublic().getEncoded());
            digest[0] = (byte) ((digest[0] & 15) + 112);
            return Base64.encodeToString(digest, 0, 8, 11);
        } catch (NoSuchAlgorithmException e) {
            Log.w("FirebaseInstanceId", "Unexpected error, device missing required algorithms");
            return null;
        }
    }

    private final void zzag() {
        synchronized (this) {
            PackageInfo zze = zze(this.zzx.getPackageName());
            if (zze != null) {
                this.zzci = Integer.toString(zze.versionCode);
                this.zzcj = zze.versionName;
            }
        }
    }

    private final PackageInfo zze(String str) {
        try {
            return this.zzx.getPackageManager().getPackageInfo(str, 0);
        } catch (PackageManager.NameNotFoundException e) {
            String valueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 23);
            sb.append("Failed to find package ");
            sb.append(valueOf);
            Log.w("FirebaseInstanceId", sb.toString());
            return null;
        }
    }

    public final int zzac() {
        synchronized (this) {
            if (this.zzcl != 0) {
                return this.zzcl;
            }
            PackageManager packageManager = this.zzx.getPackageManager();
            if (packageManager.checkPermission("com.google.android.c2dm.permission.SEND", "com.google.android.gms") == -1) {
                Log.e("FirebaseInstanceId", "Google Play services missing or without correct permission.");
                return 0;
            }
            if (!PlatformVersion.isAtLeastO()) {
                Intent intent = new Intent("com.google.android.c2dm.intent.REGISTER");
                intent.setPackage("com.google.android.gms");
                List<ResolveInfo> queryIntentServices = packageManager.queryIntentServices(intent, 0);
                if (queryIntentServices != null && queryIntentServices.size() > 0) {
                    this.zzcl = 1;
                    return this.zzcl;
                }
            }
            Intent intent2 = new Intent("com.google.iid.TOKEN_REQUEST");
            intent2.setPackage("com.google.android.gms");
            List<ResolveInfo> queryBroadcastReceivers = packageManager.queryBroadcastReceivers(intent2, 0);
            if (queryBroadcastReceivers == null || queryBroadcastReceivers.size() <= 0) {
                Log.w("FirebaseInstanceId", "Failed to resolve IID implementation package, falling back");
                if (PlatformVersion.isAtLeastO()) {
                    this.zzcl = 2;
                } else {
                    this.zzcl = 1;
                }
                return this.zzcl;
            }
            this.zzcl = 2;
            return this.zzcl;
        }
    }

    public final String zzad() {
        String str;
        synchronized (this) {
            if (this.zzci == null) {
                zzag();
            }
            str = this.zzci;
        }
        return str;
    }

    public final String zzae() {
        String str;
        synchronized (this) {
            if (this.zzcj == null) {
                zzag();
            }
            str = this.zzcj;
        }
        return str;
    }

    public final int zzaf() {
        int i;
        PackageInfo zze;
        synchronized (this) {
            if (this.zzck == 0 && (zze = zze("com.google.android.gms")) != null) {
                this.zzck = zze.versionCode;
            }
            i = this.zzck;
        }
        return i;
    }
}
