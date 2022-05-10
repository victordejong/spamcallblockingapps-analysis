package p012b.p076s.p078b.p079a.p083p0;

import android.media.AudioAttributes;
/* renamed from: b.s.b.a.p0.c */
/* loaded from: classes-dex2jar.jar:b/s/b/a/p0/c.class */
public final class C1271c {

    /* renamed from: e */
    public static final C1271c f5062e = new C1273b().m33934a();

    /* renamed from: a */
    public final int f5063a;

    /* renamed from: b */
    public final int f5064b;

    /* renamed from: c */
    public final int f5065c;

    /* renamed from: d */
    public AudioAttributes f5066d;

    /* renamed from: b.s.b.a.p0.c$b */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/p0/c$b.class */
    public static final class C1273b {

        /* renamed from: a */
        public int f5067a = 0;

        /* renamed from: b */
        public int f5068b = 0;

        /* renamed from: c */
        public int f5069c = 1;

        /* renamed from: a */
        public C1273b m33933a(int i) {
            this.f5067a = i;
            return this;
        }

        /* renamed from: a */
        public C1271c m33934a() {
            return new C1271c(this.f5067a, this.f5068b, this.f5069c);
        }

        /* renamed from: b */
        public C1273b m33932b(int i) {
            this.f5068b = i;
            return this;
        }

        /* renamed from: c */
        public C1273b m33931c(int i) {
            this.f5069c = i;
            return this;
        }
    }

    public C1271c(int i, int i2, int i3) {
        this.f5063a = i;
        this.f5064b = i2;
        this.f5065c = i3;
    }

    /* renamed from: a */
    public AudioAttributes m33935a() {
        if (this.f5066d == null) {
            this.f5066d = new AudioAttributes.Builder().setContentType(this.f5063a).setFlags(this.f5064b).setUsage(this.f5065c).build();
        }
        return this.f5066d;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || C1271c.class != obj.getClass()) {
            return false;
        }
        C1271c cVar = (C1271c) obj;
        if (!(this.f5063a == cVar.f5063a && this.f5064b == cVar.f5064b && this.f5065c == cVar.f5065c)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((((527 + this.f5063a) * 31) + this.f5064b) * 31) + this.f5065c;
    }
}
