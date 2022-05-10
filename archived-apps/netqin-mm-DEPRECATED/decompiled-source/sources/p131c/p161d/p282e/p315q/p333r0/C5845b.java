package p131c.p161d.p282e.p315q.p333r0;

import p131c.p161d.p282e.p315q.p333r0.AbstractC5872m;
/* renamed from: c.d.e.q.r0.b */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/r0/b.class */
public final class C5845b extends AbstractC5872m {

    /* renamed from: a */
    public final String f19115a;

    /* renamed from: b */
    public final long f19116b;

    /* renamed from: c */
    public final long f19117c;

    /* renamed from: c.d.e.q.r0.b$b */
    /* loaded from: classes2-dex2jar.jar:c/d/e/q/r0/b$b.class */
    public static final class C5847b extends AbstractC5872m.AbstractC5873a {

        /* renamed from: a */
        public String f19118a;

        /* renamed from: b */
        public Long f19119b;

        /* renamed from: c */
        public Long f19120c;

        @Override // p131c.p161d.p282e.p315q.p333r0.AbstractC5872m.AbstractC5873a
        /* renamed from: a */
        public AbstractC5872m.AbstractC5873a mo22833a(long j) {
            this.f19119b = Long.valueOf(j);
            return this;
        }

        @Override // p131c.p161d.p282e.p315q.p333r0.AbstractC5872m.AbstractC5873a
        /* renamed from: a */
        public AbstractC5872m.AbstractC5873a mo22832a(String str) {
            if (str != null) {
                this.f19118a = str;
                return this;
            }
            throw new NullPointerException("Null limiterKey");
        }

        @Override // p131c.p161d.p282e.p315q.p333r0.AbstractC5872m.AbstractC5873a
        /* renamed from: a */
        public AbstractC5872m mo22834a() {
            String str = "";
            if (this.f19118a == null) {
                str = " limiterKey";
            }
            String str2 = str;
            if (this.f19119b == null) {
                str2 = str + " limit";
            }
            String str3 = str2;
            if (this.f19120c == null) {
                str3 = str2 + " timeToLiveMillis";
            }
            if (str3.isEmpty()) {
                return new C5845b(this.f19118a, this.f19119b.longValue(), this.f19120c.longValue());
            }
            throw new IllegalStateException("Missing required properties:" + str3);
        }

        @Override // p131c.p161d.p282e.p315q.p333r0.AbstractC5872m.AbstractC5873a
        /* renamed from: b */
        public AbstractC5872m.AbstractC5873a mo22831b(long j) {
            this.f19120c = Long.valueOf(j);
            return this;
        }
    }

    public C5845b(String str, long j, long j2) {
        this.f19115a = str;
        this.f19116b = j;
        this.f19117c = j2;
    }

    @Override // p131c.p161d.p282e.p315q.p333r0.AbstractC5872m
    /* renamed from: a */
    public long mo22838a() {
        return this.f19116b;
    }

    @Override // p131c.p161d.p282e.p315q.p333r0.AbstractC5872m
    /* renamed from: b */
    public String mo22837b() {
        return this.f19115a;
    }

    @Override // p131c.p161d.p282e.p315q.p333r0.AbstractC5872m
    /* renamed from: c */
    public long mo22836c() {
        return this.f19117c;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC5872m)) {
            return false;
        }
        AbstractC5872m mVar = (AbstractC5872m) obj;
        if (!(this.f19115a.equals(mVar.mo22837b()) && this.f19116b == mVar.mo22838a() && this.f19117c == mVar.mo22836c())) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int hashCode = this.f19115a.hashCode();
        long j = this.f19116b;
        int i = (int) (j ^ (j >>> 32));
        long j2 = this.f19117c;
        return ((((hashCode ^ 1000003) * 1000003) ^ i) * 1000003) ^ ((int) (j2 ^ (j2 >>> 32)));
    }

    public String toString() {
        return "RateLimit{limiterKey=" + this.f19115a + ", limit=" + this.f19116b + ", timeToLiveMillis=" + this.f19117c + "}";
    }
}
