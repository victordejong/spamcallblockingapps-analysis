package p081h.p203i.p204a.p224e.p258i;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.collection.ArrayMap;
import androidx.core.content.ContextCompat;
import com.google.android.gms.iid.InstanceIDListenerService;
import java.io.File;
import java.io.IOException;
import java.util.Map;
/* renamed from: h.i.a.e.i.h */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/i/h.class */
public final class C7152h {

    /* renamed from: a */
    public SharedPreferences f17251a;

    /* renamed from: b */
    public Context f17252b;
    @GuardedBy("this")

    /* renamed from: c */
    public final Map<String, Object> f17253c;

    public C7152h(Context context) {
        this(context, new C7161q());
    }

    public C7152h(Context context, C7161q qVar) {
        this.f17253c = new ArrayMap();
        this.f17252b = context;
        this.f17251a = context.getSharedPreferences("com.google.android.gms.appid", 0);
        File file = new File(ContextCompat.getNoBackupFilesDir(this.f17252b), "com.google.android.gms.appid-no-backup");
        if (!file.exists()) {
            try {
                if (file.createNewFile() && !m21027a()) {
                    InstanceIDListenerService.m31858a(this.f17252b, this);
                }
            } catch (IOException e) {
                if (Log.isLoggable("InstanceID/Store", 3)) {
                    String valueOf = String.valueOf(e.getMessage());
                    if (valueOf.length() != 0) {
                        "Error creating file in no backup dir: ".concat(valueOf);
                    } else {
                        new String("Error creating file in no backup dir: ");
                    }
                }
            }
        }
    }

    /* renamed from: a */
    public final void m21026a(String str) {
        synchronized (this) {
            SharedPreferences.Editor edit = this.f17251a.edit();
            for (String str2 : this.f17251a.getAll().keySet()) {
                if (str2.startsWith(str)) {
                    edit.remove(str2);
                }
            }
            edit.commit();
        }
    }

    /* renamed from: a */
    public final boolean m21027a() {
        return this.f17251a.getAll().isEmpty();
    }

    /* renamed from: b */
    public final void m21025b() {
        synchronized (this) {
            this.f17253c.clear();
            C7161q.m21018a(this.f17252b);
            this.f17251a.edit().clear().commit();
        }
    }

    /* renamed from: b */
    public final void m21024b(String str) {
        synchronized (this) {
            this.f17253c.remove(str);
        }
        C7161q.m21017a(this.f17252b, str);
        m21026a(String.valueOf(str).concat("|"));
    }
}
