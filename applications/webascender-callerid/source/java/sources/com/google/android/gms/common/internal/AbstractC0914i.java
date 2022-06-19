package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
/* renamed from: com.google.android.gms.common.internal.i */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/i.class */
public abstract class AbstractC0914i {

    /* renamed from: a */
    private static int f3543a = 129;

    /* renamed from: b */
    private static final Object f3544b = new Object();

    /* renamed from: c */
    private static AbstractC0914i f3545c;

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: com.google.android.gms.common.internal.i$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/i$a.class */
    public static final class C0915a {

        /* renamed from: f */
        private static final Uri f3546f = new Uri.Builder().scheme("content").authority("com.google.android.gms.chimera").build();

        /* renamed from: a */
        private final String f3547a;

        /* renamed from: b */
        private final String f3548b;

        /* renamed from: c */
        private final ComponentName f3549c = null;

        /* renamed from: d */
        private final int f3550d;

        /* renamed from: e */
        private final boolean f3551e;

        public C0915a(String str, String str2, int i, boolean z) {
            C0931r.m3312g(str);
            this.f3547a = str;
            C0931r.m3312g(str2);
            this.f3548b = str2;
            this.f3550d = i;
            this.f3551e = z;
        }

        /* renamed from: d */
        private final Intent m3341d(Context context) {
            Bundle bundle;
            Bundle bundle2 = new Bundle();
            bundle2.putString("serviceActionBundleKey", this.f3547a);
            try {
                bundle = context.getContentResolver().call(f3546f, "serviceIntentCall", (String) null, bundle2);
            } catch (IllegalArgumentException e) {
                String valueOf = String.valueOf(e);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 34);
                sb.append("Dynamic intent resolution failed: ");
                sb.append(valueOf);
                Log.w("ConnectionStatusConfig", sb.toString());
                bundle = null;
            }
            Intent intent = bundle == null ? null : (Intent) bundle.getParcelable("serviceResponseIntentKey");
            if (intent == null) {
                String valueOf2 = String.valueOf(this.f3547a);
                Log.w("ConnectionStatusConfig", valueOf2.length() != 0 ? "Dynamic lookup for intent failed for action: ".concat(valueOf2) : new String("Dynamic lookup for intent failed for action: "));
            }
            return intent;
        }

        /* renamed from: a */
        public final Intent m3344a(Context context) {
            Intent intent;
            if (this.f3547a != null) {
                Intent m3341d = this.f3551e ? m3341d(context) : null;
                intent = m3341d;
                if (m3341d == null) {
                    intent = new Intent(this.f3547a).setPackage(this.f3548b);
                }
            } else {
                intent = new Intent().setComponent(this.f3549c);
            }
            return intent;
        }

        /* renamed from: b */
        public final String m3343b() {
            return this.f3548b;
        }

        /* renamed from: c */
        public final ComponentName m3342c() {
            return this.f3549c;
        }

        /* renamed from: e */
        public final int m3340e() {
            return this.f3550d;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C0915a)) {
                return false;
            }
            C0915a c0915a = (C0915a) obj;
            return C0925p.m3327a(this.f3547a, c0915a.f3547a) && C0925p.m3327a(this.f3548b, c0915a.f3548b) && C0925p.m3327a(this.f3549c, c0915a.f3549c) && this.f3550d == c0915a.f3550d && this.f3551e == c0915a.f3551e;
        }

        public final int hashCode() {
            return C0925p.m3326b(this.f3547a, this.f3548b, this.f3549c, Integer.valueOf(this.f3550d), Boolean.valueOf(this.f3551e));
        }

        public final String toString() {
            String str = this.f3547a;
            String str2 = str;
            if (str == null) {
                C0931r.m3308k(this.f3549c);
                str2 = this.f3549c.flattenToString();
            }
            return str2;
        }
    }

    /* renamed from: a */
    public static int m3349a() {
        return f3543a;
    }

    /* renamed from: b */
    public static AbstractC0914i m3348b(Context context) {
        synchronized (f3544b) {
            if (f3545c == null) {
                f3545c = new q0(context.getApplicationContext());
            }
        }
        return f3545c;
    }

    /* renamed from: c */
    public final void m3347c(String str, String str2, int i, ServiceConnection serviceConnection, String str3, boolean z) {
        m3345e(new C0915a(str, str2, i, z), serviceConnection, str3);
    }

    /* renamed from: d */
    public abstract boolean m3346d(C0915a c0915a, ServiceConnection serviceConnection, String str);

    /* renamed from: e */
    protected abstract void m3345e(C0915a c0915a, ServiceConnection serviceConnection, String str);
}
