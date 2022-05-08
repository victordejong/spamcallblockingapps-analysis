package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.StrictMode;
import android.util.Log;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzck.class */
public final class zzck {
    /* renamed from: a */
    private static zzch m2327a(File file) {
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file)));
            HashMap hashMap = new HashMap();
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine != null) {
                    String[] split = readLine.split(" ", 3);
                    if (split.length != 3) {
                        String valueOf = String.valueOf(readLine);
                        Log.e("HermeticFileOverrides", valueOf.length() != 0 ? "Invalid: ".concat(valueOf) : new String("Invalid: "));
                    } else {
                        String str = split[0];
                        String decode = Uri.decode(split[1]);
                        String decode2 = Uri.decode(split[2]);
                        if (!hashMap.containsKey(str)) {
                            hashMap.put(str, new HashMap());
                        }
                        ((Map) hashMap.get(str)).put(decode, decode2);
                    }
                } else {
                    String valueOf2 = String.valueOf(file);
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf2).length() + 7);
                    sb.append("Parsed ");
                    sb.append(valueOf2);
                    Log.i("HermeticFileOverrides", sb.toString());
                    zzch zzchVar = new zzch(hashMap);
                    bufferedReader.close();
                    return zzchVar;
                }
            }
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: a */
    private static zzcy<File> m2328a(Context context) {
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            StrictMode.allowThreadDiskWrites();
            File file = new File(context.getDir("phenotype_hermetic", 0), "overrides.txt");
            return file.exists() ? zzcy.zza(file) : zzcy.zzc();
        } catch (RuntimeException e) {
            Log.e("HermeticFileOverrides", "no data dir", e);
            return zzcy.zzc();
        } finally {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
        }
    }

    public static zzcy<zzch> zza(Context context) {
        String str = Build.TYPE;
        String str2 = Build.TAGS;
        String str3 = Build.HARDWARE;
        boolean z = false;
        if ((str.equals("eng") || str.equals("userdebug")) && ((str3.equals("goldfish") || str3.equals("ranchu") || str3.equals("robolectric")) && (str2.contains("dev-keys") || str2.contains("test-keys")))) {
            z = true;
        }
        if (!z) {
            return zzcy.zzc();
        }
        Context context2 = context;
        if (zzby.zza()) {
            context2 = context.isDeviceProtectedStorage() ? context : context.createDeviceProtectedStorageContext();
        }
        zzcy<File> a = m2328a(context2);
        return a.zza() ? zzcy.zza(m2327a(a.zzb())) : zzcy.zzc();
    }
}
