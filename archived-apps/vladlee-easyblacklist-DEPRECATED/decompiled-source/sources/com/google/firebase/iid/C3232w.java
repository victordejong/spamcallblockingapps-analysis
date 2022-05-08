package com.google.firebase.iid;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import androidx.core.content.C0646b;
import androidx.p026b.C0529a;
import java.io.File;
import java.io.IOException;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.firebase.iid.w */
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/w.class */
public final class C3232w {

    /* renamed from: a */
    private final SharedPreferences f19148a;

    /* renamed from: b */
    private final Context f19149b;

    /* renamed from: c */
    private final C3210ax f19150c;

    /* renamed from: d */
    private final Map<String, C3209aw> f19151d;

    public C3232w(Context context) {
        this(context, new C3210ax());
    }

    private C3232w(Context context, C3210ax axVar) {
        this.f19151d = new C0529a();
        this.f19149b = context;
        this.f19148a = context.getSharedPreferences("com.google.android.gms.appid", 0);
        this.f19150c = axVar;
        File file = new File(C0646b.m8613c(this.f19149b), "com.google.android.gms.appid-no-backup");
        if (!file.exists()) {
            try {
                if (file.createNewFile() && !m441c()) {
                    Log.i("FirebaseInstanceId", "App restored, clearing state");
                    m444b();
                    FirebaseInstanceId.m567a().m548g();
                }
            } catch (IOException e) {
                if (Log.isLoggable("FirebaseInstanceId", 3)) {
                    String valueOf = String.valueOf(e.getMessage());
                    Log.d("FirebaseInstanceId", valueOf.length() != 0 ? "Error creating file in no backup dir: ".concat(valueOf) : new String("Error creating file in no backup dir: "));
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static String m447a(String str, String str2) {
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 3 + String.valueOf(str2).length());
        sb.append(str);
        sb.append("|S|");
        sb.append(str2);
        return sb.toString();
    }

    /* renamed from: b */
    private static String m442b(String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 4 + String.valueOf(str2).length() + String.valueOf(str3).length());
        sb.append(str);
        sb.append("|T|");
        sb.append(str2);
        sb.append("|");
        sb.append(str3);
        return sb.toString();
    }

    /* renamed from: c */
    private final boolean m441c() {
        boolean isEmpty;
        synchronized (this) {
            isEmpty = this.f19148a.getAll().isEmpty();
        }
        return isEmpty;
    }

    /* renamed from: a */
    public final C3235z m446a(String str, String str2, String str3) {
        C3235z a;
        synchronized (this) {
            a = C3235z.m429a(this.f19148a.getString(m442b(str, str2, str3), null));
        }
        return a;
    }

    /* renamed from: a */
    public final String m449a() {
        String string;
        synchronized (this) {
            string = this.f19148a.getString("topic_operation_queue", "");
        }
        return string;
    }

    /* renamed from: a */
    public final void m448a(String str) {
        synchronized (this) {
            this.f19148a.edit().putString("topic_operation_queue", str).apply();
        }
    }

    /* renamed from: a */
    public final void m445a(String str, String str2, String str3, String str4, String str5) {
        synchronized (this) {
            String a = C3235z.m428a(str4, str5, System.currentTimeMillis());
            if (a != null) {
                SharedPreferences.Editor edit = this.f19148a.edit();
                edit.putString(m442b(str, str2, str3), a);
                edit.commit();
            }
        }
    }

    /* renamed from: b */
    public final C3209aw m443b(String str) {
        C3209aw awVar;
        synchronized (this) {
            C3209aw awVar2 = this.f19151d.get(str);
            if (awVar2 != null) {
                return awVar2;
            }
            try {
                awVar = C3210ax.m506a(this.f19149b, str);
            } catch (C3213d e) {
                Log.w("FirebaseInstanceId", "Stored data is corrupt, generating new identity");
                FirebaseInstanceId.m567a().m548g();
                awVar = C3210ax.m495b(this.f19149b, str);
            }
            this.f19151d.put(str, awVar);
            return awVar;
        }
    }

    /* renamed from: b */
    public final void m444b() {
        synchronized (this) {
            this.f19151d.clear();
            C3210ax.m507a(this.f19149b);
            this.f19148a.edit().clear().commit();
        }
    }

    /* renamed from: c */
    public final void m440c(String str) {
        synchronized (this) {
            String concat = String.valueOf(str).concat("|T|");
            SharedPreferences.Editor edit = this.f19148a.edit();
            for (String str2 : this.f19148a.getAll().keySet()) {
                if (str2.startsWith(concat)) {
                    edit.remove(str2);
                }
            }
            edit.commit();
        }
    }
}
