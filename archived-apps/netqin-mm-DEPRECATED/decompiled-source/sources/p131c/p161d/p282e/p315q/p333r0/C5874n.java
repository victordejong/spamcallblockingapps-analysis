package p131c.p161d.p282e.p315q.p333r0;

import android.text.TextUtils;
/* renamed from: c.d.e.q.r0.n */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/r0/n.class */
public class C5874n {

    /* renamed from: a */
    public final String f19175a;

    /* renamed from: b */
    public final String f19176b;

    /* renamed from: c.d.e.q.r0.n$b */
    /* loaded from: classes2-dex2jar.jar:c/d/e/q/r0/n$b.class */
    public static class C5876b {

        /* renamed from: a */
        public String f19177a;

        /* renamed from: b */
        public String f19178b;

        /* renamed from: a */
        public C5876b m22826a(String str) {
            this.f19178b = str;
            return this;
        }

        /* renamed from: a */
        public C5874n m22827a() {
            if (!TextUtils.isEmpty(this.f19178b)) {
                return new C5874n(this.f19177a, this.f19178b);
            }
            throw new IllegalArgumentException("Text model must have a color");
        }

        /* renamed from: b */
        public C5876b m22825b(String str) {
            this.f19177a = str;
            return this;
        }
    }

    public C5874n(String str, String str2) {
        this.f19175a = str;
        this.f19176b = str2;
    }

    /* renamed from: c */
    public static C5876b m22828c() {
        return new C5876b();
    }

    /* renamed from: a */
    public String m22830a() {
        return this.f19176b;
    }

    /* renamed from: b */
    public String m22829b() {
        return this.f19175a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C5874n)) {
            return false;
        }
        C5874n nVar = (C5874n) obj;
        if (hashCode() != nVar.hashCode()) {
            return false;
        }
        if (this.f19175a == null && nVar.f19175a != null) {
            return false;
        }
        String str = this.f19175a;
        return (str == null || str.equals(nVar.f19175a)) && this.f19176b.equals(nVar.f19176b);
    }

    public int hashCode() {
        String str = this.f19175a;
        return str != null ? str.hashCode() + this.f19176b.hashCode() : this.f19176b.hashCode();
    }
}
