package p012b.p074r;

import android.content.Context;
import android.os.Build;
import android.util.Log;
import p012b.p074r.C1146e;
import p012b.p074r.C1148f;
/* renamed from: b.r.c */
/* loaded from: classes-dex2jar.jar:b/r/c.class */
public final class C1141c {

    /* renamed from: b */
    public static final boolean f4652b = Log.isLoggable("MediaSessionManager", 3);

    /* renamed from: c */
    public static final Object f4653c = new Object();

    /* renamed from: d */
    public static volatile C1141c f4654d;

    /* renamed from: a */
    public AbstractC1142a f4655a;

    /* renamed from: b.r.c$a */
    /* loaded from: classes-dex2jar.jar:b/r/c$a.class */
    public interface AbstractC1142a {
        /* renamed from: a */
        boolean mo34580a(AbstractC1144c cVar);
    }

    /* renamed from: b.r.c$b */
    /* loaded from: classes-dex2jar.jar:b/r/c$b.class */
    public static final class C1143b {

        /* renamed from: a */
        public AbstractC1144c f4656a;

        public C1143b(String str, int i, int i2) {
            if (Build.VERSION.SDK_INT >= 28) {
                this.f4656a = new C1146e.C1147a(str, i, i2);
            } else {
                this.f4656a = new C1148f.C1149a(str, i, i2);
            }
        }

        /* renamed from: a */
        public String m34584a() {
            return this.f4656a.mo34575c();
        }

        /* renamed from: b */
        public int m34583b() {
            return this.f4656a.mo34577a();
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C1143b)) {
                return false;
            }
            return this.f4656a.equals(((C1143b) obj).f4656a);
        }

        public int hashCode() {
            return this.f4656a.hashCode();
        }
    }

    /* renamed from: b.r.c$c */
    /* loaded from: classes-dex2jar.jar:b/r/c$c.class */
    public interface AbstractC1144c {
        /* renamed from: a */
        int mo34577a();

        /* renamed from: b */
        int mo34576b();

        /* renamed from: c */
        String mo34575c();
    }

    public C1141c(Context context) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 28) {
            this.f4655a = new C1146e(context);
        } else if (i >= 21) {
            this.f4655a = new C1145d(context);
        } else {
            this.f4655a = new C1148f(context);
        }
    }

    /* renamed from: a */
    public static C1141c m34586a(Context context) {
        C1141c cVar;
        if (context != null) {
            synchronized (f4653c) {
                if (f4654d == null) {
                    f4654d = new C1141c(context.getApplicationContext());
                }
                cVar = f4654d;
            }
            return cVar;
        }
        throw new IllegalArgumentException("context cannot be null");
    }

    /* renamed from: a */
    public boolean m34585a(C1143b bVar) {
        if (bVar != null) {
            return this.f4655a.mo34580a(bVar.f4656a);
        }
        throw new IllegalArgumentException("userInfo should not be null");
    }
}
