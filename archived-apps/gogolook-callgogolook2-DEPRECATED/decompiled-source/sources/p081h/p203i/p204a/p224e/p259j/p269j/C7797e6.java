package p081h.p203i.p204a.p224e.p259j.p269j;

import android.content.Context;
import android.content.pm.PackageManager;
import android.provider.Settings;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: h.i.a.e.j.j.e6 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/e6.class */
public final class C7797e6 {

    /* renamed from: g */
    public static boolean f18236g = true;

    /* renamed from: h */
    public static boolean f18237h = false;

    /* renamed from: a */
    public final int f18238a;

    /* renamed from: b */
    public final int f18239b;

    /* renamed from: c */
    public final boolean f18240c;

    /* renamed from: d */
    public boolean f18241d;

    /* renamed from: e */
    public C7814g6 f18242e;

    /* renamed from: f */
    public C7814g6 f18243f;

    public C7797e6(long j, long j2, C7831i6 i6Var, int i, @Nullable List<String> list) {
        this.f18241d = false;
        this.f18242e = null;
        this.f18243f = null;
        this.f18238a = i;
        Map<String, Long> a = m19430a(list);
        if (a.containsKey("sampling")) {
            this.f18239b = a.get("sampling").intValue();
        } else {
            this.f18239b = 100;
        }
        int i2 = this.f18239b;
        if (i2 != 100) {
            int i3 = this.f18238a;
            StringBuilder sb = new StringBuilder(59);
            sb.append("RateLimiter sampling rate:");
            sb.append(i2);
            sb.append(" bucketId: ");
            sb.append(i3);
            sb.toString();
        }
        boolean z = true;
        this.f18240c = this.f18238a <= this.f18239b;
        if (this.f18240c) {
            this.f18242e = new C7814g6(100L, 500L, i6Var, a, EnumC7806f6.TRACE, this.f18241d);
            this.f18243f = new C7814g6(100L, 500L, i6Var, a, EnumC7806f6.NETWORK, this.f18241d);
        }
        if (a.containsKey("enable_screen_trace")) {
            f18236g = a.get("enable_screen_trace").intValue() != 0;
            if (this.f18241d) {
                boolean z2 = f18236g;
                StringBuilder sb2 = new StringBuilder(25);
                sb2.append("enable_screen_trace:");
                sb2.append(z2);
                sb2.toString();
            }
        }
        if (a.containsKey("sessions_feature_enabled")) {
            if (a.get("sessions_feature_enabled").intValue() == 0) {
                z = false;
            }
            f18237h = z;
            if (this.f18241d) {
                boolean z3 = f18237h;
                StringBuilder sb3 = new StringBuilder(30);
                sb3.append("sessions_feature_enabled:");
                sb3.append(z3);
                sb3.toString();
            }
        }
    }

    public C7797e6(@NonNull Context context, @NonNull String str, long j, long j2) {
        this(100L, 500L, new C7831i6(), m19431a(Settings.Secure.getString(context.getContentResolver(), "android_id")), m19433a(context, str));
        this.f18241d = C7790e.m19481a(context);
    }

    /* renamed from: a */
    public static int m19434a(@NonNull Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (PackageManager.NameNotFoundException e) {
            return 0;
        }
    }

    /* renamed from: a */
    public static int m19431a(@NonNull String str) {
        int i;
        try {
            i = C7790e.m19478a(MessageDigest.getInstance("SHA-1").digest(str.getBytes()));
        } catch (NoSuchAlgorithmException e) {
            i = C7790e.m19478a(str.getBytes());
        }
        return (((i % 100) + 100) % 100) + 1;
    }

    @NonNull
    /* renamed from: a */
    public static List<String> m19433a(@NonNull Context context, @NonNull String str) {
        ArrayList arrayList = new ArrayList();
        int a = m19434a(context);
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 12);
        sb.append(str);
        sb.append(":");
        sb.append(a);
        String sb2 = sb.toString();
        for (int i = 0; i < 3; i++) {
            String valueOf = String.valueOf(new String[]{sb2, str, "1.0.0.206222422"}[i]);
            String b = m19427b(valueOf.length() != 0 ? "_fireperf1:".concat(valueOf) : new String("_fireperf1:"));
            StringBuilder sb3 = new StringBuilder(String.valueOf(b).length() + 16);
            sb3.append("fireperf:");
            sb3.append(b);
            sb3.append("_limits");
            String str2 = null;
            try {
                str2 = C7757a.m19581a(context.getContentResolver(), sb3.toString(), (String) null);
            } catch (SecurityException e) {
                String valueOf2 = String.valueOf(e.getMessage());
                Log.e("FirebasePerformance", valueOf2.length() != 0 ? "Failed to fetch Gservices flag. SecurityException: ".concat(valueOf2) : new String("Failed to fetch Gservices flag. SecurityException: "));
            }
            if (str2 != null) {
                arrayList.add(str2);
            }
        }
        return arrayList;
    }

    @NonNull
    /* renamed from: a */
    public static Map<String, Long> m19430a(@Nullable List<String> list) {
        HashMap hashMap = new HashMap();
        if (list == null) {
            return hashMap;
        }
        for (String str : list) {
            for (String str2 : str.split(",")) {
                String[] split = str2.split(":");
                if (split.length >= 2) {
                    String trim = split[0].trim();
                    if (!trim.isEmpty() && !hashMap.containsKey(trim)) {
                        try {
                            long parseLong = Long.parseLong(split[1].trim());
                            if (parseLong >= 0) {
                                hashMap.put(trim, Long.valueOf(parseLong));
                            }
                        } catch (NumberFormatException e) {
                        }
                    }
                }
            }
        }
        return hashMap;
    }

    /* renamed from: a */
    public static boolean m19435a() {
        return f18237h;
    }

    @Nullable
    /* renamed from: b */
    public static String m19427b(@Nullable String str) {
        if (str == null) {
            return null;
        }
        try {
            byte[] digest = MessageDigest.getInstance("SHA-1").digest(str.getBytes());
            StringBuilder sb = new StringBuilder();
            int length = digest.length;
            for (int i = 0; i < length; i++) {
                sb.append(String.format("%02x", Byte.valueOf(digest[i])));
            }
            return sb.toString();
        } catch (NoSuchAlgorithmException e) {
            return null;
        }
    }

    /* renamed from: b */
    public static boolean m19428b() {
        return f18236g;
    }

    /* renamed from: a */
    public final void m19429a(boolean z) {
        if (this.f18240c) {
            this.f18242e.m19367a(z);
            this.f18243f.m19367a(z);
        }
    }

    /* renamed from: a */
    public final boolean m19432a(@NonNull C7903r rVar) {
        String str;
        String str2;
        C7929u[] uVarArr;
        if (!this.f18240c) {
            return false;
        }
        C7917t tVar = rVar.f18525d;
        boolean z = true;
        if (!(tVar == null || (str2 = tVar.f18568c) == null || (!str2.equals(EnumC7852k6.FOREGROUND_TRACE_NAME.toString()) && !rVar.f18525d.f18568c.equals(EnumC7852k6.BACKGROUND_TRACE_NAME.toString())) || (uVarArr = rVar.f18525d.f18572g) == null || uVarArr.length <= 0)) {
            return true;
        }
        C7917t tVar2 = rVar.f18525d;
        if (tVar2 == null || (str = tVar2.f18568c) == null || !str.startsWith("_st_") || f18236g) {
            z = false;
        }
        if (z) {
            boolean z2 = this.f18241d;
            return false;
        } else if (rVar.f18526e != null) {
            return this.f18243f.m19368a(rVar);
        } else {
            if (rVar.f18525d != null) {
                return this.f18242e.m19368a(rVar);
            }
            return false;
        }
    }
}
