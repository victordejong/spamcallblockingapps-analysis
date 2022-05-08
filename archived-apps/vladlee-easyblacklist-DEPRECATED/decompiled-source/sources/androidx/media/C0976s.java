package androidx.media;

import android.os.Build;
import android.util.Log;
import androidx.media.C0981u;
import androidx.media.C0983v;
/* renamed from: androidx.media.s */
/* loaded from: classes-dex2jar.jar:androidx/media/s.class */
public final class C0976s {

    /* renamed from: a */
    static final boolean f4010a = Log.isLoggable("MediaSessionManager", 3);

    /* renamed from: b */
    private static final Object f4011b = new Object();

    /* renamed from: androidx.media.s$a */
    /* loaded from: classes-dex2jar.jar:androidx/media/s$a.class */
    public static final class C0977a {

        /* renamed from: a */
        AbstractC0978b f4012a;

        public C0977a(String str, int i, int i2) {
            this.f4012a = Build.VERSION.SDK_INT >= 28 ? new C0981u.C0982a(str, i, i2) : new C0983v.C0984a(str, i, i2);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C0977a)) {
                return false;
            }
            return this.f4012a.equals(((C0977a) obj).f4012a);
        }

        public final int hashCode() {
            return this.f4012a.hashCode();
        }
    }

    /* renamed from: androidx.media.s$b */
    /* loaded from: classes-dex2jar.jar:androidx/media/s$b.class */
    interface AbstractC0978b {
    }
}
