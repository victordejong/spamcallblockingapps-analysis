package p000a.p001a.p002a.p003a.p004a.p006b;

import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.hardware.SensorManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Debug;
import android.os.StatFs;
import android.provider.Settings;
import android.text.TextUtils;
import java.io.Closeable;
import java.io.File;
import java.io.Flushable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Scanner;
import p000a.p001a.p002a.p003a.AbstractC0150o;
import p000a.p001a.p002a.p003a.C0137d;
/* renamed from: a.a.a.a.a.b.j */
/* loaded from: classes-dex2jar.jar:a/a/a/a/a/b/j.class */
public final class C0026j {

    /* renamed from: b */
    private static Boolean f39b;

    /* renamed from: c */
    private static final char[] f40c = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* renamed from: d */
    private static long f41d = -1;

    /* renamed from: a */
    public static final Comparator<File> f38a = new C0028k();

    /* renamed from: a.a.a.a.a.b.j$a */
    /* loaded from: classes-dex2jar.jar:a/a/a/a/a/b/j$a.class */
    enum EnumC0027a {
        X86_32,
        X86_64,
        ARM_UNKNOWN,
        PPC,
        PPC64,
        ARMV6,
        ARMV7,
        UNKNOWN,
        ARMV7S,
        ARM64;
        

        /* renamed from: k */
        private static final Map<String, EnumC0027a> f52k;

        static {
            HashMap hashMap = new HashMap(4);
            f52k = hashMap;
            hashMap.put("armeabi-v7a", ARMV7);
            f52k.put("armeabi", ARMV6);
            f52k.put("arm64-v8a", ARM64);
            f52k.put("x86", X86_32);
        }

        /* renamed from: a */
        static EnumC0027a m10313a() {
            String str = Build.CPU_ABI;
            if (TextUtils.isEmpty(str)) {
                C0137d.m10155c().mo10135a("Fabric", "Architecture#getValue()::Build.CPU_ABI returned null or empty");
                return UNKNOWN;
            }
            EnumC0027a aVar = f52k.get(str.toLowerCase(Locale.US));
            EnumC0027a aVar2 = aVar;
            if (aVar == null) {
                aVar2 = UNKNOWN;
            }
            return aVar2;
        }
    }

    /* renamed from: a */
    public static int m10357a() {
        return EnumC0027a.m10313a().ordinal();
    }

    /* renamed from: a */
    public static int m10353a(Context context, String str, String str2) {
        return context.getResources().getIdentifier(str, str2, m10314o(context));
    }

    /* renamed from: a */
    public static int m10351a(Context context, boolean z) {
        Float c = m10330c(context);
        if (!z || c == null) {
            return 1;
        }
        if (c.floatValue() >= 99.0d) {
            return 3;
        }
        return ((double) c.floatValue()) < 99.0d ? 2 : 0;
    }

    /* renamed from: a */
    private static long m10340a(String str, String str2, int i) {
        return Long.parseLong(str.split(str2)[0].trim()) * i;
    }

    /* renamed from: a */
    public static ActivityManager.RunningAppProcessInfo m10342a(String str, Context context) {
        ActivityManager.RunningAppProcessInfo runningAppProcessInfo;
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses();
        if (runningAppProcesses != null) {
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo2 : runningAppProcesses) {
                if (runningAppProcessInfo2.processName.equals(str)) {
                    runningAppProcessInfo = runningAppProcessInfo2;
                    break;
                }
            }
        }
        runningAppProcessInfo = null;
        return runningAppProcessInfo;
    }

    /* renamed from: a */
    public static SharedPreferences m10355a(Context context) {
        return context.getSharedPreferences("com.crashlytics.prefs", 0);
    }

    /* renamed from: a */
    public static String m10356a(int i) {
        if (i >= 0) {
            return String.format(Locale.US, "%1$10s", Integer.valueOf(i)).replace(' ', '0');
        }
        throw new IllegalArgumentException("value must be zero or greater");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r8v10 */
    /* JADX WARN: Type inference failed for: r8v14 */
    /* JADX WARN: Type inference failed for: r8v15, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r8v16 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Type inference failed for: r8v6 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String m10348a(java.io.File r5, java.lang.String r6) {
        /*
            r0 = r5
            boolean r0 = r0.exists()
            r7 = r0
            r0 = 0
            r8 = r0
            r0 = 0
            r9 = r0
            r0 = r7
            if (r0 == 0) goto L_0x00b3
            java.io.BufferedReader r0 = new java.io.BufferedReader     // Catch: all -> 0x0080, Exception -> 0x0086
            r10 = r0
            java.io.FileReader r0 = new java.io.FileReader     // Catch: all -> 0x0080, Exception -> 0x0086
            r8 = r0
            r0 = r8
            r1 = r5
            r0.<init>(r1)     // Catch: all -> 0x0080, Exception -> 0x0086
            r0 = r10
            r1 = r8
            r2 = 1024(0x400, float:1.435E-42)
            r0.<init>(r1, r2)     // Catch: all -> 0x0080, Exception -> 0x0086
        L_0x0025:
            r0 = r10
            r8 = r0
            r0 = r10
            java.lang.String r0 = r0.readLine()     // Catch: Exception -> 0x0076, all -> 0x00aa
            r11 = r0
            r0 = r10
            r12 = r0
            r0 = r9
            r8 = r0
            r0 = r11
            if (r0 == 0) goto L_0x006c
            r0 = r10
            r8 = r0
            java.lang.String r0 = "\\s*:\\s*"
            java.util.regex.Pattern r0 = java.util.regex.Pattern.compile(r0)     // Catch: Exception -> 0x0076, all -> 0x00aa
            r1 = r11
            r2 = 2
            java.lang.String[] r0 = r0.split(r1, r2)     // Catch: Exception -> 0x0076, all -> 0x00aa
            r12 = r0
            r0 = r10
            r8 = r0
            r0 = r12
            int r0 = r0.length     // Catch: Exception -> 0x0076, all -> 0x00aa
            r1 = 1
            if (r0 <= r1) goto L_0x0025
            r0 = r10
            r8 = r0
            r0 = r12
            r1 = 0
            r0 = r0[r1]     // Catch: Exception -> 0x0076, all -> 0x00aa
            r1 = r6
            boolean r0 = r0.equals(r1)     // Catch: Exception -> 0x0076, all -> 0x00aa
            if (r0 == 0) goto L_0x0025
            r0 = r12
            r1 = 1
            r0 = r0[r1]
            r8 = r0
            r0 = r10
            r12 = r0
        L_0x006c:
            r0 = r12
            java.lang.String r1 = "Failed to close system file reader."
            m10349a(r0, r1)
            goto L_0x00b3
        L_0x0076:
            r8 = move-exception
            r0 = r10
            r6 = r0
            r0 = r8
            r10 = r0
            goto L_0x008a
        L_0x0080:
            r5 = move-exception
            r0 = 0
            r8 = r0
            goto L_0x00ab
        L_0x0086:
            r10 = move-exception
            r0 = 0
            r6 = r0
        L_0x008a:
            r0 = r6
            r8 = r0
            a.a.a.a.o r0 = p000a.p001a.p002a.p003a.C0137d.m10155c()     // Catch: all -> 0x00aa
            java.lang.String r1 = "Fabric"
            java.lang.String r2 = "Error parsing "
            r3 = r5
            java.lang.String r3 = java.lang.String.valueOf(r3)     // Catch: all -> 0x00aa
            java.lang.String r2 = r2.concat(r3)     // Catch: all -> 0x00aa
            r3 = r10
            r0.mo10130c(r1, r2, r3)     // Catch: all -> 0x00aa
            r0 = r6
            r12 = r0
            r0 = r9
            r8 = r0
            goto L_0x006c
        L_0x00aa:
            r5 = move-exception
        L_0x00ab:
            r0 = r8
            java.lang.String r1 = "Failed to close system file reader."
            m10349a(r0, r1)
            r0 = r5
            throw r0
        L_0x00b3:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p000a.p001a.p002a.p003a.p004a.p006b.C0026j.m10348a(java.io.File, java.lang.String):java.lang.String");
    }

    /* renamed from: a */
    public static String m10346a(InputStream inputStream) {
        Scanner useDelimiter = new Scanner(inputStream).useDelimiter("\\A");
        return useDelimiter.hasNext() ? useDelimiter.next() : "";
    }

    /* renamed from: a */
    private static String m10344a(InputStream inputStream, String str) {
        try {
            MessageDigest instance = MessageDigest.getInstance(str);
            byte[] bArr = new byte[1024];
            while (true) {
                int read = inputStream.read(bArr);
                if (read == -1) {
                    return m10339a(instance.digest());
                }
                instance.update(bArr, 0, read);
            }
        } catch (Exception e) {
            C0137d.m10155c().mo10130c("Fabric", "Could not calculate hash for app icon.", e);
            return "";
        }
    }

    /* renamed from: a */
    public static String m10343a(String str) {
        return m10341a(str, "SHA-1");
    }

    /* renamed from: a */
    private static String m10341a(String str, String str2) {
        return m10338a(str.getBytes(), str2);
    }

    /* renamed from: a */
    public static String m10339a(byte[] bArr) {
        char[] cArr = new char[bArr.length * 2];
        for (int i = 0; i < bArr.length; i++) {
            int i2 = bArr[i] & 255;
            int i3 = i * 2;
            char[] cArr2 = f40c;
            cArr[i3] = cArr2[i2 >>> 4];
            cArr[i3 + 1] = cArr2[i2 & 15];
        }
        return new String(cArr);
    }

    /* renamed from: a */
    private static String m10338a(byte[] bArr, String str) {
        try {
            MessageDigest instance = MessageDigest.getInstance(str);
            instance.update(bArr);
            return m10339a(instance.digest());
        } catch (NoSuchAlgorithmException e) {
            AbstractC0150o c = C0137d.m10155c();
            c.mo10130c("Fabric", "Could not create hashing algorithm: " + str + ", returning empty string.", e);
            return "";
        }
    }

    /* renamed from: a */
    public static String m10337a(String... strArr) {
        ArrayList<String> arrayList = new ArrayList();
        for (int i = 0; i <= 0; i++) {
            String str = strArr[0];
            if (str != null) {
                arrayList.add(str.replace("-", "").toLowerCase(Locale.US));
            }
        }
        Collections.sort(arrayList);
        StringBuilder sb = new StringBuilder();
        for (String str2 : arrayList) {
            sb.append(str2);
        }
        String sb2 = sb.toString();
        if (sb2.length() > 0) {
            return m10341a(sb2, "SHA-1");
        }
        return null;
    }

    /* renamed from: a */
    public static void m10354a(Context context, String str) {
        if (m10315n(context)) {
            C0137d.m10155c().mo10135a("Fabric", str);
        }
    }

    /* renamed from: a */
    public static void m10350a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception e2) {
            }
        }
    }

    /* renamed from: a */
    public static void m10349a(Closeable closeable, String str) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
                C0137d.m10155c().mo10130c("Fabric", str, e);
            }
        }
    }

    /* renamed from: a */
    public static void m10347a(Flushable flushable, String str) {
        if (flushable != null) {
            try {
                flushable.flush();
            } catch (IOException e) {
                C0137d.m10155c().mo10130c("Fabric", str, e);
            }
        }
    }

    /* renamed from: a */
    public static void m10345a(InputStream inputStream, OutputStream outputStream, byte[] bArr) {
        while (true) {
            int read = inputStream.read(bArr);
            if (read != -1) {
                outputStream.write(bArr, 0, read);
            } else {
                return;
            }
        }
    }

    /* renamed from: a */
    public static boolean m10352a(Context context, String str, boolean z) {
        Resources resources;
        if (!(context == null || (resources = context.getResources()) == null)) {
            int a = m10353a(context, str, "bool");
            if (a > 0) {
                return resources.getBoolean(a);
            }
            int a2 = m10353a(context, str, "string");
            if (a2 > 0) {
                return Boolean.parseBoolean(context.getString(a2));
            }
        }
        return z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v12 */
    /* JADX WARN: Type inference failed for: r8v13 */
    /* JADX WARN: Type inference failed for: r8v14 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long m10336b() {
        /*
            java.lang.Class<a.a.a.a.a.b.j> r0 = p000a.p001a.p002a.p003a.p004a.p006b.C0026j.class
            monitor-enter(r0)
            long r0 = p000a.p001a.p002a.p003a.p004a.p006b.C0026j.f41d     // Catch: all -> 0x00bb
            r1 = -1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x00b2
            r0 = 0
            r5 = r0
            java.io.File r0 = new java.io.File     // Catch: all -> 0x00bb
            r7 = r0
            r0 = r7
            java.lang.String r1 = "/proc/meminfo"
            r0.<init>(r1)     // Catch: all -> 0x00bb
            r0 = r7
            java.lang.String r1 = "MemTotal"
            java.lang.String r0 = m10348a(r0, r1)     // Catch: all -> 0x00bb
            r7 = r0
            r0 = r5
            r8 = r0
            r0 = r7
            boolean r0 = android.text.TextUtils.isEmpty(r0)     // Catch: all -> 0x00bb
            if (r0 != 0) goto L_0x00ae
            r0 = r7
            java.util.Locale r1 = java.util.Locale.US     // Catch: all -> 0x00bb
            java.lang.String r0 = r0.toUpperCase(r1)     // Catch: all -> 0x00bb
            r7 = r0
            r0 = r7
            java.lang.String r1 = "KB"
            boolean r0 = r0.endsWith(r1)     // Catch: NumberFormatException -> 0x0094, all -> 0x00bb
            if (r0 == 0) goto L_0x004b
            r0 = r7
            java.lang.String r1 = "KB"
            r2 = 1024(0x400, float:1.435E-42)
            long r0 = m10340a(r0, r1, r2)     // Catch: NumberFormatException -> 0x0094, all -> 0x00bb
            r8 = r0
            goto L_0x00ae
        L_0x004b:
            r0 = r7
            java.lang.String r1 = "MB"
            boolean r0 = r0.endsWith(r1)     // Catch: NumberFormatException -> 0x0094, all -> 0x00bb
            if (r0 == 0) goto L_0x0063
            r0 = r7
            java.lang.String r1 = "MB"
            r2 = 1048576(0x100000, float:1.469368E-39)
            long r0 = m10340a(r0, r1, r2)     // Catch: NumberFormatException -> 0x0094, all -> 0x00bb
            r8 = r0
            goto L_0x00ae
        L_0x0063:
            r0 = r7
            java.lang.String r1 = "GB"
            boolean r0 = r0.endsWith(r1)     // Catch: NumberFormatException -> 0x0094, all -> 0x00bb
            if (r0 == 0) goto L_0x007b
            r0 = r7
            java.lang.String r1 = "GB"
            r2 = 1073741824(0x40000000, float:2.0)
            long r0 = m10340a(r0, r1, r2)     // Catch: NumberFormatException -> 0x0094, all -> 0x00bb
            r8 = r0
            goto L_0x00ae
        L_0x007b:
            a.a.a.a.o r0 = p000a.p001a.p002a.p003a.C0137d.m10155c()     // Catch: NumberFormatException -> 0x0094, all -> 0x00bb
            java.lang.String r1 = "Fabric"
            java.lang.String r2 = "Unexpected meminfo format while computing RAM: "
            r3 = r7
            java.lang.String r3 = java.lang.String.valueOf(r3)     // Catch: NumberFormatException -> 0x0094, all -> 0x00bb
            java.lang.String r2 = r2.concat(r3)     // Catch: NumberFormatException -> 0x0094, all -> 0x00bb
            r0.mo10135a(r1, r2)     // Catch: NumberFormatException -> 0x0094, all -> 0x00bb
            r0 = r5
            r8 = r0
            goto L_0x00ae
        L_0x0094:
            r10 = move-exception
            a.a.a.a.o r0 = p000a.p001a.p002a.p003a.C0137d.m10155c()     // Catch: all -> 0x00bb
            java.lang.String r1 = "Fabric"
            java.lang.String r2 = "Unexpected meminfo format while computing RAM: "
            r3 = r7
            java.lang.String r3 = java.lang.String.valueOf(r3)     // Catch: all -> 0x00bb
            java.lang.String r2 = r2.concat(r3)     // Catch: all -> 0x00bb
            r3 = r10
            r0.mo10130c(r1, r2, r3)     // Catch: all -> 0x00bb
            r0 = r5
            r8 = r0
        L_0x00ae:
            r0 = r8
            p000a.p001a.p002a.p003a.p004a.p006b.C0026j.f41d = r0     // Catch: all -> 0x00bb
        L_0x00b2:
            long r0 = p000a.p001a.p002a.p003a.p004a.p006b.C0026j.f41d     // Catch: all -> 0x00bb, all -> 0x00bb
            r8 = r0
            java.lang.Class<a.a.a.a.a.b.j> r0 = p000a.p001a.p002a.p003a.p004a.p006b.C0026j.class
            monitor-exit(r0)
            r0 = r8
            return r0
        L_0x00bb:
            r7 = move-exception
            java.lang.Class<a.a.a.a.a.b.j> r0 = p000a.p001a.p002a.p003a.p004a.p006b.C0026j.class
            monitor-exit(r0)
            r0 = r7
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p000a.p001a.p002a.p003a.p004a.p006b.C0026j.m10336b():long");
    }

    /* renamed from: b */
    public static long m10334b(Context context) {
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        ((ActivityManager) context.getSystemService("activity")).getMemoryInfo(memoryInfo);
        return memoryInfo.availMem;
    }

    /* renamed from: b */
    public static String m10335b(int i) {
        switch (i) {
            case 2:
                return "V";
            case 3:
                return "D";
            case 4:
                return "I";
            case 5:
                return "W";
            case 6:
                return "E";
            case 7:
                return "A";
            default:
                return "?";
        }
    }

    /* renamed from: b */
    public static String m10332b(InputStream inputStream) {
        return m10344a(inputStream, "SHA-1");
    }

    /* renamed from: b */
    public static String m10331b(String str) {
        return m10341a(str, "SHA-256");
    }

    /* renamed from: b */
    public static void m10333b(Context context, String str) {
        if (m10315n(context)) {
            C0137d.m10155c().mo10128e("Fabric", str);
        }
    }

    /* renamed from: c */
    public static long m10328c(String str) {
        StatFs statFs;
        long blockSize = new StatFs(str).getBlockSize();
        return (statFs.getBlockCount() * blockSize) - (blockSize * statFs.getAvailableBlocks());
    }

    /* renamed from: c */
    public static Float m10330c(Context context) {
        Intent registerReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        if (registerReceiver == null) {
            return null;
        }
        return Float.valueOf(registerReceiver.getIntExtra("level", -1) / registerReceiver.getIntExtra("scale", -1));
    }

    /* renamed from: c */
    public static void m10329c(Context context, String str) {
        if (m10315n(context)) {
            C0137d.m10155c().mo10138a(4, "Fabric", str);
        }
    }

    /* renamed from: d */
    public static String m10326d(Context context, String str) {
        int a = m10353a(context, str, "string");
        return a > 0 ? context.getString(a) : "";
    }

    /* renamed from: d */
    public static boolean m10327d(Context context) {
        return !m10324e(context) && ((SensorManager) context.getSystemService("sensor")).getDefaultSensor(8) != null;
    }

    /* renamed from: d */
    public static boolean m10325d(String str) {
        return str == null || str.length() == 0;
    }

    /* renamed from: e */
    public static boolean m10324e(Context context) {
        return "sdk".equals(Build.PRODUCT) || "google_sdk".equals(Build.PRODUCT) || Settings.Secure.getString(context.getContentResolver(), "android_id") == null;
    }

    /* renamed from: f */
    public static boolean m10323f(Context context) {
        boolean e = m10324e(context);
        String str = Build.TAGS;
        if ((!e && str != null && str.contains("test-keys")) || new File("/system/app/Superuser.apk").exists()) {
            return true;
        }
        return !e && new File("/system/xbin/su").exists();
    }

    /* renamed from: g */
    public static int m10322g(Context context) {
        boolean e = m10324e(context);
        int i = e ? 1 : 0;
        if (m10323f(context)) {
            i = (e ? 1 : 0) | 2;
        }
        int i2 = i;
        if (Debug.isDebuggerConnected() || Debug.waitingForDebugger()) {
            i2 = i | 4;
        }
        return i2;
    }

    /* renamed from: h */
    public static boolean m10321h(Context context) {
        return (context.getApplicationInfo().flags & 2) != 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [android.content.Context] */
    /* JADX WARN: Type inference failed for: r5v1, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* renamed from: i */
    public static String m10320i(Context context) {
        Throwable th;
        InputStream inputStream;
        Exception e;
        String str = null;
        try {
            try {
                inputStream = context.getResources().openRawResource(m10319j(context));
                try {
                    String a = m10344a(inputStream, "SHA-1");
                    if (!m10325d(a)) {
                        str = a;
                    }
                    m10349a((Closeable) inputStream, "Failed to close icon input stream.");
                    return str;
                } catch (Exception e2) {
                    e = e2;
                    C0137d.m10155c().mo10130c("Fabric", "Could not calculate hash for app icon.", e);
                    m10349a((Closeable) inputStream, "Failed to close icon input stream.");
                    return null;
                }
            } catch (Throwable th2) {
                th = th2;
                m10349a((Closeable) context, "Failed to close icon input stream.");
                throw th;
            }
        } catch (Exception e3) {
            e = e3;
            inputStream = null;
        } catch (Throwable th3) {
            th = th3;
            context = 0;
            m10349a((Closeable) context, "Failed to close icon input stream.");
            throw th;
        }
    }

    /* renamed from: j */
    public static int m10319j(Context context) {
        return context.getApplicationContext().getApplicationInfo().icon;
    }

    /* renamed from: k */
    public static String m10318k(Context context) {
        String str;
        int a = m10353a(context, "io.fabric.android.build_id", "string");
        int i = a;
        if (a == 0) {
            i = m10353a(context, "com.crashlytics.android.build_id", "string");
        }
        if (i != 0) {
            str = context.getResources().getString(i);
            C0137d.m10155c().mo10135a("Fabric", "Build ID is: ".concat(String.valueOf(str)));
        } else {
            str = null;
        }
        return str;
    }

    /* renamed from: l */
    public static String m10317l(Context context) {
        String str;
        int a = m10353a(context, "com.google.firebase.crashlytics.unity_version", "string");
        if (a != 0) {
            str = context.getResources().getString(a);
            C0137d.m10155c().mo10135a("Fabric", "Unity Editor version is: ".concat(String.valueOf(str)));
        } else {
            str = null;
        }
        return str;
    }

    /* renamed from: m */
    public static boolean m10316m(Context context) {
        if (!(context.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") == 0)) {
            return true;
        }
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnectedOrConnecting();
    }

    /* renamed from: n */
    private static boolean m10315n(Context context) {
        if (f39b == null) {
            f39b = Boolean.valueOf(m10352a(context, "com.crashlytics.Trace", false));
        }
        return f39b.booleanValue();
    }

    /* renamed from: o */
    private static String m10314o(Context context) {
        int i = context.getApplicationContext().getApplicationInfo().icon;
        return i > 0 ? context.getResources().getResourcePackageName(i) : context.getPackageName();
    }
}
