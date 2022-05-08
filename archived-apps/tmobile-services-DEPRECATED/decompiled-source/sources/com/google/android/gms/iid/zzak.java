package com.google.android.gms.iid;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.collection.ArrayMap;
import androidx.core.content.ContextCompat;
import com.google.android.gms.common.util.VisibleForTesting;
import java.io.File;
import java.io.IOException;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/iid/zzak.class */
public final class zzak {

    /* renamed from: a */
    private SharedPreferences f7768a;

    /* renamed from: b */
    private Context f7769b;
    @GuardedBy

    /* renamed from: c */
    private final Map<String, zzo> f7770c;

    public zzak(Context context) {
        this(context, new zzn());
    }

    @VisibleForTesting
    private zzak(Context context, zzn zznVar) {
        this.f7770c = new ArrayMap();
        this.f7769b = context;
        this.f7768a = context.getSharedPreferences("com.google.android.gms.appid", 0);
        File file = new File(ContextCompat.m19670i(this.f7769b), "com.google.android.gms.appid-no-backup");
        if (!file.exists()) {
            try {
                if (file.createNewFile() && !m14150a()) {
                    Log.i("InstanceID/Store", "App restored, clearing state");
                    InstanceIDListenerService.m14159d(this.f7769b, this);
                }
            } catch (IOException e) {
                if (Log.isLoggable("InstanceID/Store", 3)) {
                    String valueOf = String.valueOf(e.getMessage());
                    Log.d("InstanceID/Store", valueOf.length() != 0 ? "Error creating file in no backup dir: ".concat(valueOf) : new String("Error creating file in no backup dir: "));
                }
            }
        }
    }

    /* renamed from: a */
    public final boolean m14150a() {
        return this.f7768a.getAll().isEmpty();
    }

    /* renamed from: b */
    public final void m14149b(String str) {
        synchronized (this) {
            SharedPreferences.Editor edit = this.f7768a.edit();
            for (String str2 : this.f7768a.getAll().keySet()) {
                if (str2.startsWith(str)) {
                    edit.remove(str2);
                }
            }
            edit.commit();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final void m14148c(String str) {
        synchronized (this) {
            this.f7770c.remove(str);
        }
        zzn.m14138a(this.f7769b, str);
        m14149b(String.valueOf(str).concat("|"));
    }

    /* renamed from: d */
    public final void m14147d() {
        synchronized (this) {
            this.f7770c.clear();
            zzn.m14137b(this.f7769b);
            this.f7768a.edit().clear().commit();
        }
    }
}
