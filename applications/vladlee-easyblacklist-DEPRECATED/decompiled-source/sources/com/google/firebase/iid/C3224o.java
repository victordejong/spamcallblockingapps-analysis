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
/* renamed from: com.google.firebase.iid.o */
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/o.class */
public final class C3224o {

    /* renamed from: a */
    private final Context f19128a;

    /* renamed from: b */
    private String f19129b;

    /* renamed from: c */
    private String f19130c;

    /* renamed from: d */
    private int f19131d;

    /* renamed from: e */
    private int f19132e = 0;

    public C3224o(Context context) {
        this.f19128a = context;
    }

    /* renamed from: a */
    private final PackageInfo m466a(String str) {
        try {
            return this.f19128a.getPackageManager().getPackageInfo(str, 0);
        } catch (PackageManager.NameNotFoundException e) {
            String valueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 23);
            sb.append("Failed to find package ");
            sb.append(valueOf);
            Log.w("FirebaseInstanceId", sb.toString());
            return null;
        }
    }

    /* renamed from: a */
    public static String m467a(FirebaseApp firebaseApp) {
        String b = firebaseApp.m658b().m640b();
        if (b != null) {
            return b;
        }
        String a = firebaseApp.m658b().m642a();
        if (!a.startsWith("1:")) {
            return a;
        }
        String[] split = a.split(":");
        if (split.length < 2) {
            return null;
        }
        String str = split[1];
        if (str.isEmpty()) {
            return null;
        }
        return str;
    }

    /* renamed from: a */
    public static String m465a(KeyPair keyPair) {
        try {
            byte[] digest = MessageDigest.getInstance("SHA1").digest(keyPair.getPublic().getEncoded());
            digest[0] = (byte) ((digest[0] & 15) + 112);
            return Base64.encodeToString(digest, 0, 8, 11);
        } catch (NoSuchAlgorithmException e) {
            Log.w("FirebaseInstanceId", "Unexpected error, device missing required algorithms");
            return null;
        }
    }

    /* renamed from: e */
    private final void m461e() {
        synchronized (this) {
            PackageInfo a = m466a(this.f19128a.getPackageName());
            if (a != null) {
                this.f19129b = Integer.toString(a.versionCode);
                this.f19130c = a.versionName;
            }
        }
    }

    /* renamed from: a */
    public final int m468a() {
        synchronized (this) {
            if (this.f19132e != 0) {
                return this.f19132e;
            }
            PackageManager packageManager = this.f19128a.getPackageManager();
            if (packageManager.checkPermission("com.google.android.c2dm.permission.SEND", "com.google.android.gms") == -1) {
                Log.e("FirebaseInstanceId", "Google Play services missing or without correct permission.");
                return 0;
            }
            if (!PlatformVersion.isAtLeastO()) {
                Intent intent = new Intent("com.google.android.c2dm.intent.REGISTER");
                intent.setPackage("com.google.android.gms");
                List<ResolveInfo> queryIntentServices = packageManager.queryIntentServices(intent, 0);
                if (queryIntentServices != null && queryIntentServices.size() > 0) {
                    this.f19132e = 1;
                    return this.f19132e;
                }
            }
            Intent intent2 = new Intent("com.google.iid.TOKEN_REQUEST");
            intent2.setPackage("com.google.android.gms");
            List<ResolveInfo> queryBroadcastReceivers = packageManager.queryBroadcastReceivers(intent2, 0);
            if (queryBroadcastReceivers == null || queryBroadcastReceivers.size() <= 0) {
                Log.w("FirebaseInstanceId", "Failed to resolve IID implementation package, falling back");
                if (PlatformVersion.isAtLeastO()) {
                    this.f19132e = 2;
                } else {
                    this.f19132e = 1;
                }
                return this.f19132e;
            }
            this.f19132e = 2;
            return this.f19132e;
        }
    }

    /* renamed from: b */
    public final String m464b() {
        String str;
        synchronized (this) {
            if (this.f19129b == null) {
                m461e();
            }
            str = this.f19129b;
        }
        return str;
    }

    /* renamed from: c */
    public final String m463c() {
        String str;
        synchronized (this) {
            if (this.f19130c == null) {
                m461e();
            }
            str = this.f19130c;
        }
        return str;
    }

    /* renamed from: d */
    public final int m462d() {
        int i;
        PackageInfo a;
        synchronized (this) {
            if (this.f19131d == 0 && (a = m466a("com.google.android.gms")) != null) {
                this.f19131d = a.versionCode;
            }
            i = this.f19131d;
        }
        return i;
    }
}
