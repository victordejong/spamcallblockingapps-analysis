package com.google.firebase.iid;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import androidx.core.content.C0646b;
import com.google.android.gms.internal.firebase_messaging.zzn;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.io.UnsupportedEncodingException;
import java.nio.channels.Channels;
import java.nio.channels.FileChannel;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import java.util.Properties;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.firebase.iid.ax */
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/ax.class */
public final class C3210ax {
    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static C3209aw m506a(Context context, String str) {
        C3209aw c = m493c(context, str);
        return c != null ? c : m495b(context, str);
    }

    /* renamed from: a */
    private static C3209aw m504a(Context context, String str, C3209aw awVar, boolean z) {
        String encodeToString;
        String encodeToString2;
        long j;
        if (Log.isLoggable("FirebaseInstanceId", 3)) {
            Log.d("FirebaseInstanceId", "Writing key to properties file");
        }
        Properties properties = new Properties();
        encodeToString = Base64.encodeToString(awVar.f19103a.getPublic().getEncoded(), 11);
        properties.setProperty("pub", encodeToString);
        encodeToString2 = Base64.encodeToString(awVar.f19103a.getPrivate().getEncoded(), 11);
        properties.setProperty("pri", encodeToString2);
        j = awVar.f19104b;
        properties.setProperty("cre", String.valueOf(j));
        File e = m491e(context, str);
        try {
            e.createNewFile();
            RandomAccessFile randomAccessFile = new RandomAccessFile(e, "rw");
            FileChannel channel = randomAccessFile.getChannel();
            channel.lock();
            if (z && channel.size() > 0) {
                try {
                    channel.position(0L);
                    C3209aw a = m497a(channel);
                    if (channel != null) {
                        m498a((Throwable) null, channel);
                    }
                    m499a((Throwable) null, randomAccessFile);
                    return a;
                } catch (C3213d | IOException e2) {
                    if (Log.isLoggable("FirebaseInstanceId", 3)) {
                        String valueOf = String.valueOf(e2);
                        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 64);
                        sb.append("Tried reading key pair before writing new one, but failed with: ");
                        sb.append(valueOf);
                        Log.d("FirebaseInstanceId", sb.toString());
                    }
                }
            }
            channel.position(0L);
            properties.store(Channels.newOutputStream(channel), (String) null);
            if (channel != null) {
                m498a((Throwable) null, channel);
            }
            m499a((Throwable) null, randomAccessFile);
            return awVar;
        } catch (IOException e3) {
            String valueOf2 = String.valueOf(e3);
            StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf2).length() + 21);
            sb2.append("Failed to write key: ");
            sb2.append(valueOf2);
            Log.w("FirebaseInstanceId", sb2.toString());
            return null;
        }
    }

    /* renamed from: a */
    private static C3209aw m503a(SharedPreferences sharedPreferences, String str) {
        String string = sharedPreferences.getString(C3232w.m447a(str, "|P|"), null);
        String string2 = sharedPreferences.getString(C3232w.m447a(str, "|K|"), null);
        C3209aw awVar = null;
        if (string != null) {
            awVar = string2 == null ? null : new C3209aw(m501a(string, string2), m494b(sharedPreferences, str));
        }
        return awVar;
    }

    /* renamed from: a */
    private static C3209aw m502a(File file) {
        try {
            FileChannel channel = new FileInputStream(file).getChannel();
            channel.lock(0L, Long.MAX_VALUE, true);
            C3209aw a = m497a(channel);
            if (channel != null) {
                m498a((Throwable) null, channel);
            }
            th = null;
            return a;
        } finally {
            try {
                throw th;
            } finally {
            }
        }
    }

    /* renamed from: a */
    private static C3209aw m497a(FileChannel fileChannel) {
        Properties properties = new Properties();
        properties.load(Channels.newInputStream(fileChannel));
        String property = properties.getProperty("pub");
        String property2 = properties.getProperty("pri");
        if (property == null || property2 == null) {
            throw new C3213d("Invalid properties file");
        }
        try {
            return new C3209aw(m501a(property, property2), Long.parseLong(properties.getProperty("cre")));
        } catch (NumberFormatException e) {
            throw new C3213d(e);
        }
    }

    /* renamed from: a */
    private static KeyPair m501a(String str, String str2) {
        try {
            byte[] decode = Base64.decode(str, 8);
            byte[] decode2 = Base64.decode(str2, 8);
            try {
                KeyFactory instance = KeyFactory.getInstance("RSA");
                return new KeyPair(instance.generatePublic(new X509EncodedKeySpec(decode)), instance.generatePrivate(new PKCS8EncodedKeySpec(decode2)));
            } catch (NoSuchAlgorithmException | InvalidKeySpecException e) {
                String valueOf = String.valueOf(e);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 19);
                sb.append("Invalid key stored ");
                sb.append(valueOf);
                Log.w("FirebaseInstanceId", sb.toString());
                throw new C3213d(e);
            }
        } catch (IllegalArgumentException e2) {
            throw new C3213d(e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m507a(Context context) {
        File[] listFiles;
        for (File file : m496b(context).listFiles()) {
            if (file.getName().startsWith("com.google.InstanceId")) {
                file.delete();
            }
        }
    }

    /* renamed from: a */
    private static void m505a(Context context, String str, C3209aw awVar) {
        String encodeToString;
        String encodeToString2;
        long j;
        SharedPreferences sharedPreferences = context.getSharedPreferences("com.google.android.gms.appid", 0);
        try {
            if (awVar.equals(m503a(sharedPreferences, str))) {
                return;
            }
        } catch (C3213d e) {
        }
        if (Log.isLoggable("FirebaseInstanceId", 3)) {
            Log.d("FirebaseInstanceId", "Writing key to shared preferences");
        }
        SharedPreferences.Editor edit = sharedPreferences.edit();
        String a = C3232w.m447a(str, "|P|");
        encodeToString = Base64.encodeToString(awVar.f19103a.getPublic().getEncoded(), 11);
        edit.putString(a, encodeToString);
        String a2 = C3232w.m447a(str, "|K|");
        encodeToString2 = Base64.encodeToString(awVar.f19103a.getPrivate().getEncoded(), 11);
        edit.putString(a2, encodeToString2);
        String a3 = C3232w.m447a(str, "cre");
        j = awVar.f19104b;
        edit.putString(a3, String.valueOf(j));
        edit.commit();
    }

    /* renamed from: a */
    private static /* synthetic */ void m500a(Throwable th, FileInputStream fileInputStream) {
        if (th != null) {
            try {
                fileInputStream.close();
            } catch (Throwable th2) {
                zzn.zza(th, th2);
            }
        } else {
            fileInputStream.close();
        }
    }

    /* renamed from: a */
    private static /* synthetic */ void m499a(Throwable th, RandomAccessFile randomAccessFile) {
        if (th != null) {
            try {
                randomAccessFile.close();
            } catch (Throwable th2) {
                zzn.zza(th, th2);
            }
        } else {
            randomAccessFile.close();
        }
    }

    /* renamed from: a */
    private static /* synthetic */ void m498a(Throwable th, FileChannel fileChannel) {
        if (th != null) {
            try {
                fileChannel.close();
            } catch (Throwable th2) {
                zzn.zza(th, th2);
            }
        } else {
            fileChannel.close();
        }
    }

    /* renamed from: b */
    private static long m494b(SharedPreferences sharedPreferences, String str) {
        String string = sharedPreferences.getString(C3232w.m447a(str, "cre"), null);
        if (string == null) {
            return 0L;
        }
        try {
            return Long.parseLong(string);
        } catch (NumberFormatException e) {
            return 0L;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static C3209aw m495b(Context context, String str) {
        C3209aw awVar = new C3209aw(C3212c.m486a(), System.currentTimeMillis());
        C3209aw a = m504a(context, str, awVar, true);
        if (a == null || a.equals(awVar)) {
            if (Log.isLoggable("FirebaseInstanceId", 3)) {
                Log.d("FirebaseInstanceId", "Generated new key");
            }
            m505a(context, str, awVar);
            return awVar;
        }
        if (Log.isLoggable("FirebaseInstanceId", 3)) {
            Log.d("FirebaseInstanceId", "Loaded key after generating new one, using loaded one");
        }
        return a;
    }

    /* renamed from: b */
    private static File m496b(Context context) {
        File c = C0646b.m8613c(context);
        if (c != null && c.isDirectory()) {
            return c;
        }
        Log.w("FirebaseInstanceId", "noBackupFilesDir doesn't exist, using regular files directory instead");
        return context.getFilesDir();
    }

    /* renamed from: c */
    private static C3209aw m493c(Context context, String str) {
        C3213d e;
        C3209aw d;
        try {
            d = m492d(context, str);
        } catch (C3213d e2) {
            e = e2;
        }
        if (d != null) {
            m505a(context, str, d);
            return d;
        }
        e = null;
        try {
            C3209aw a = m503a(context.getSharedPreferences("com.google.android.gms.appid", 0), str);
            if (a != null) {
                m504a(context, str, a, false);
                return a;
            }
        } catch (C3213d e3) {
            e = e3;
        }
        if (e == null) {
            return null;
        }
        throw e;
    }

    /* renamed from: d */
    private static C3209aw m492d(Context context, String str) {
        File e = m491e(context, str);
        if (!e.exists()) {
            return null;
        }
        try {
            return m502a(e);
        } catch (C3213d | IOException e2) {
            if (Log.isLoggable("FirebaseInstanceId", 3)) {
                String valueOf = String.valueOf(e2);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 40);
                sb.append("Failed to read key from file, retrying: ");
                sb.append(valueOf);
                Log.d("FirebaseInstanceId", sb.toString());
            }
            try {
                return m502a(e);
            } catch (IOException e3) {
                String valueOf2 = String.valueOf(e3);
                StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf2).length() + 45);
                sb2.append("IID file exists, but failed to read from it: ");
                sb2.append(valueOf2);
                Log.w("FirebaseInstanceId", sb2.toString());
                throw new C3213d(e3);
            }
        }
    }

    /* renamed from: e */
    private static File m491e(Context context, String str) {
        String sb;
        if (TextUtils.isEmpty(str)) {
            sb = "com.google.InstanceId.properties";
        } else {
            try {
                String encodeToString = Base64.encodeToString(str.getBytes("UTF-8"), 11);
                StringBuilder sb2 = new StringBuilder(String.valueOf(encodeToString).length() + 33);
                sb2.append("com.google.InstanceId_");
                sb2.append(encodeToString);
                sb2.append(".properties");
                sb = sb2.toString();
            } catch (UnsupportedEncodingException e) {
                throw new AssertionError(e);
            }
        }
        return new File(m496b(context), sb);
    }
}
