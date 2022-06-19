package androidx.work;

import android.net.Uri;
import java.util.HashSet;
import java.util.Set;
/* renamed from: androidx.work.d */
/* loaded from: classes-dex2jar.jar:androidx/work/d.class */
public final class C0472d {

    /* renamed from: a */
    private final Set<C0473a> f2468a = new HashSet();

    /* renamed from: androidx.work.d$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/d$a.class */
    public static final class C0473a {

        /* renamed from: a */
        private final Uri f2469a;

        /* renamed from: b */
        private final boolean f2470b;

        C0473a(Uri uri, boolean z) {
            this.f2469a = uri;
            this.f2470b = z;
        }

        /* renamed from: a */
        public Uri m4510a() {
            return this.f2469a;
        }

        /* renamed from: b */
        public boolean m4509b() {
            return this.f2470b;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || C0473a.class != obj.getClass()) {
                return false;
            }
            C0473a c0473a = (C0473a) obj;
            if (this.f2470b != c0473a.f2470b || !this.f2469a.equals(c0473a.f2469a)) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            return (this.f2469a.hashCode() * 31) + (this.f2470b ? 1 : 0);
        }
    }

    /* renamed from: a */
    public void m4513a(Uri uri, boolean z) {
        this.f2468a.add(new C0473a(uri, z));
    }

    /* renamed from: b */
    public Set<C0473a> m4512b() {
        return this.f2468a;
    }

    /* renamed from: c */
    public int m4511c() {
        return this.f2468a.size();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C0472d.class == obj.getClass()) {
            return this.f2468a.equals(((C0472d) obj).f2468a);
        }
        return false;
    }

    public int hashCode() {
        return this.f2468a.hashCode();
    }
}
