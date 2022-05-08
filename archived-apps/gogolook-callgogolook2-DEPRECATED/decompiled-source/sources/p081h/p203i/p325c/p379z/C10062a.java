package p081h.p203i.p325c.p379z;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.firebase.perf.metrics.Trace;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import p081h.p203i.p325c.C9435c;
/* renamed from: h.i.c.z.a */
/* loaded from: classes2-dex2jar.jar:h/i/c/z/a.class */
public class C10062a {

    /* renamed from: c */
    public static volatile C10062a f22756c;

    /* renamed from: a */
    public final Map<String, String> f22757a = new ConcurrentHashMap();
    @Nullable

    /* renamed from: b */
    public Boolean f22758b;

    public C10062a(C9435c cVar) {
        this.f22758b = null;
        if (cVar == null) {
            this.f22758b = false;
            return;
        }
        Context b = cVar.m15173b();
        this.f22758b = m13517a(b, b.getSharedPreferences("FirebasePerfSharedPrefs", 0));
    }

    @Nullable
    /* renamed from: a */
    public static Boolean m13518a(@NonNull Context context) {
        try {
            Bundle bundle = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData;
            if (bundle.containsKey("firebase_performance_collection_enabled")) {
                return Boolean.valueOf(bundle.getBoolean("firebase_performance_collection_enabled", true));
            }
            return null;
        } catch (PackageManager.NameNotFoundException | NullPointerException e) {
            String valueOf = String.valueOf(e.getMessage());
            if (valueOf.length() != 0) {
                "No perf enable meta data found ".concat(valueOf);
                return null;
            }
            new String("No perf enable meta data found ");
            return null;
        }
    }

    @Nullable
    /* renamed from: a */
    public static Boolean m13517a(@NonNull Context context, @NonNull SharedPreferences sharedPreferences) {
        if (m13513b(context)) {
            return false;
        }
        try {
            if (sharedPreferences.contains("isEnabled")) {
                return Boolean.valueOf(sharedPreferences.getBoolean("isEnabled", true));
            }
        } catch (ClassCastException e) {
            String valueOf = String.valueOf(e.getMessage());
            if (valueOf.length() != 0) {
                "Unable to access enable value: ".concat(valueOf);
            } else {
                new String("Unable to access enable value: ");
            }
        }
        return m13518a(context);
    }

    @NonNull
    /* renamed from: b */
    public static Trace m13512b(@NonNull String str) {
        Trace b = Trace.m31044b(str);
        b.start();
        return b;
    }

    /* renamed from: b */
    public static boolean m13513b(@NonNull Context context) {
        try {
            return context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData.getBoolean("firebase_performance_collection_deactivated", false);
        } catch (PackageManager.NameNotFoundException | NullPointerException e) {
            String valueOf = String.valueOf(e.getMessage());
            if (valueOf.length() != 0) {
                "No perf enable meta data found ".concat(valueOf);
                return false;
            }
            new String("No perf enable meta data found ");
            return false;
        }
    }

    /* renamed from: c */
    public static C10062a m13511c() {
        if (f22756c == null) {
            synchronized (C10062a.class) {
                try {
                    if (f22756c == null) {
                        f22756c = (C10062a) C9435c.m15163j().m15176a(C10062a.class);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f22756c;
    }

    @NonNull
    /* renamed from: a */
    public Trace m13516a(@NonNull String str) {
        return Trace.m31044b(str);
    }

    @NonNull
    /* renamed from: a */
    public final Map<String, String> m13519a() {
        return new HashMap(this.f22757a);
    }

    /* renamed from: a */
    public void m13515a(boolean z) {
        try {
            C9435c.m15163j();
            Context b = C9435c.m15163j().m15173b();
            SharedPreferences sharedPreferences = b.getSharedPreferences("FirebasePerfSharedPrefs", 0);
            if (!m13513b(b)) {
                sharedPreferences.edit().putBoolean("isEnabled", z).apply();
                this.f22758b = Boolean.valueOf(z);
                if (z) {
                }
            }
        } catch (IllegalStateException e) {
        }
    }

    /* renamed from: b */
    public boolean m13514b() {
        Boolean bool = this.f22758b;
        return bool != null ? bool.booleanValue() : C9435c.m15163j().m15166g();
    }
}
