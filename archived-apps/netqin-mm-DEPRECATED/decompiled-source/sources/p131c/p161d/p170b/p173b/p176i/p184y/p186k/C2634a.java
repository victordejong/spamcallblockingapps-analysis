package p131c.p161d.p170b.p173b.p176i.p184y.p186k;

import p131c.p161d.p170b.p173b.p176i.p184y.p186k.AbstractC2646d;
/* renamed from: c.d.b.b.i.y.k.a */
/* loaded from: classes-dex2jar.jar:c/d/b/b/i/y/k/a.class */
public final class C2634a extends AbstractC2646d {

    /* renamed from: b */
    public final long f9747b;

    /* renamed from: c */
    public final int f9748c;

    /* renamed from: d */
    public final int f9749d;

    /* renamed from: e */
    public final long f9750e;

    /* renamed from: f */
    public final int f9751f;

    /* renamed from: c.d.b.b.i.y.k.a$b */
    /* loaded from: classes-dex2jar.jar:c/d/b/b/i/y/k/a$b.class */
    public static final class C2636b extends AbstractC2646d.AbstractC2647a {

        /* renamed from: a */
        public Long f9752a;

        /* renamed from: b */
        public Integer f9753b;

        /* renamed from: c */
        public Integer f9754c;

        /* renamed from: d */
        public Long f9755d;

        /* renamed from: e */
        public Integer f9756e;

        @Override // p131c.p161d.p170b.p173b.p176i.p184y.p186k.AbstractC2646d.AbstractC2647a
        /* renamed from: a */
        public AbstractC2646d.AbstractC2647a mo29351a(int i) {
            this.f9754c = Integer.valueOf(i);
            return this;
        }

        @Override // p131c.p161d.p170b.p173b.p176i.p184y.p186k.AbstractC2646d.AbstractC2647a
        /* renamed from: a */
        public AbstractC2646d.AbstractC2647a mo29350a(long j) {
            this.f9755d = Long.valueOf(j);
            return this;
        }

        @Override // p131c.p161d.p170b.p173b.p176i.p184y.p186k.AbstractC2646d.AbstractC2647a
        /* renamed from: a */
        public AbstractC2646d mo29352a() {
            String str = "";
            if (this.f9752a == null) {
                str = " maxStorageSizeInBytes";
            }
            String str2 = str;
            if (this.f9753b == null) {
                str2 = str + " loadBatchSize";
            }
            String str3 = str2;
            if (this.f9754c == null) {
                str3 = str2 + " criticalSectionEnterTimeoutMs";
            }
            String str4 = str3;
            if (this.f9755d == null) {
                str4 = str3 + " eventCleanUpAge";
            }
            String str5 = str4;
            if (this.f9756e == null) {
                str5 = str4 + " maxBlobByteSizePerRow";
            }
            if (str5.isEmpty()) {
                return new C2634a(this.f9752a.longValue(), this.f9753b.intValue(), this.f9754c.intValue(), this.f9755d.longValue(), this.f9756e.intValue());
            }
            throw new IllegalStateException("Missing required properties:" + str5);
        }

        @Override // p131c.p161d.p170b.p173b.p176i.p184y.p186k.AbstractC2646d.AbstractC2647a
        /* renamed from: b */
        public AbstractC2646d.AbstractC2647a mo29349b(int i) {
            this.f9753b = Integer.valueOf(i);
            return this;
        }

        @Override // p131c.p161d.p170b.p173b.p176i.p184y.p186k.AbstractC2646d.AbstractC2647a
        /* renamed from: b */
        public AbstractC2646d.AbstractC2647a mo29348b(long j) {
            this.f9752a = Long.valueOf(j);
            return this;
        }

        @Override // p131c.p161d.p170b.p173b.p176i.p184y.p186k.AbstractC2646d.AbstractC2647a
        /* renamed from: c */
        public AbstractC2646d.AbstractC2647a mo29347c(int i) {
            this.f9756e = Integer.valueOf(i);
            return this;
        }
    }

    public C2634a(long j, int i, int i2, long j2, int i3) {
        this.f9747b = j;
        this.f9748c = i;
        this.f9749d = i2;
        this.f9750e = j2;
        this.f9751f = i3;
    }

    @Override // p131c.p161d.p170b.p173b.p176i.p184y.p186k.AbstractC2646d
    /* renamed from: a */
    public int mo29358a() {
        return this.f9749d;
    }

    @Override // p131c.p161d.p170b.p173b.p176i.p184y.p186k.AbstractC2646d
    /* renamed from: b */
    public long mo29357b() {
        return this.f9750e;
    }

    @Override // p131c.p161d.p170b.p173b.p176i.p184y.p186k.AbstractC2646d
    /* renamed from: c */
    public int mo29356c() {
        return this.f9748c;
    }

    @Override // p131c.p161d.p170b.p173b.p176i.p184y.p186k.AbstractC2646d
    /* renamed from: d */
    public int mo29355d() {
        return this.f9751f;
    }

    @Override // p131c.p161d.p170b.p173b.p176i.p184y.p186k.AbstractC2646d
    /* renamed from: e */
    public long mo29354e() {
        return this.f9747b;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC2646d)) {
            return false;
        }
        AbstractC2646d dVar = (AbstractC2646d) obj;
        if (!(this.f9747b == dVar.mo29354e() && this.f9748c == dVar.mo29356c() && this.f9749d == dVar.mo29358a() && this.f9750e == dVar.mo29357b() && this.f9751f == dVar.mo29355d())) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        long j = this.f9747b;
        int i = (int) (j ^ (j >>> 32));
        int i2 = this.f9748c;
        int i3 = this.f9749d;
        long j2 = this.f9750e;
        return this.f9751f ^ ((((((((i ^ 1000003) * 1000003) ^ i2) * 1000003) ^ i3) * 1000003) ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003);
    }

    public String toString() {
        return "EventStoreConfig{maxStorageSizeInBytes=" + this.f9747b + ", loadBatchSize=" + this.f9748c + ", criticalSectionEnterTimeoutMs=" + this.f9749d + ", eventCleanUpAge=" + this.f9750e + ", maxBlobByteSizePerRow=" + this.f9751f + "}";
    }
}
