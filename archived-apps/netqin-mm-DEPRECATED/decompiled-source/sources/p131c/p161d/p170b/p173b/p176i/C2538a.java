package p131c.p161d.p170b.p173b.p176i;

import java.util.Map;
import p131c.p161d.p170b.p173b.p176i.AbstractC2562h;
/* renamed from: c.d.b.b.i.a */
/* loaded from: classes-dex2jar.jar:c/d/b/b/i/a.class */
public final class C2538a extends AbstractC2562h {

    /* renamed from: a */
    public final String f9570a;

    /* renamed from: b */
    public final Integer f9571b;

    /* renamed from: c */
    public final C2561g f9572c;

    /* renamed from: d */
    public final long f9573d;

    /* renamed from: e */
    public final long f9574e;

    /* renamed from: f */
    public final Map<String, String> f9575f;

    /* renamed from: c.d.b.b.i.a$b */
    /* loaded from: classes-dex2jar.jar:c/d/b/b/i/a$b.class */
    public static final class C2540b extends AbstractC2562h.AbstractC2563a {

        /* renamed from: a */
        public String f9576a;

        /* renamed from: b */
        public Integer f9577b;

        /* renamed from: c */
        public C2561g f9578c;

        /* renamed from: d */
        public Long f9579d;

        /* renamed from: e */
        public Long f9580e;

        /* renamed from: f */
        public Map<String, String> f9581f;

        @Override // p131c.p161d.p170b.p173b.p176i.AbstractC2562h.AbstractC2563a
        /* renamed from: a */
        public AbstractC2562h.AbstractC2563a mo29533a(long j) {
            this.f9579d = Long.valueOf(j);
            return this;
        }

        @Override // p131c.p161d.p170b.p173b.p176i.AbstractC2562h.AbstractC2563a
        /* renamed from: a */
        public AbstractC2562h.AbstractC2563a mo29532a(C2561g gVar) {
            if (gVar != null) {
                this.f9578c = gVar;
                return this;
            }
            throw new NullPointerException("Null encodedPayload");
        }

        @Override // p131c.p161d.p170b.p173b.p176i.AbstractC2562h.AbstractC2563a
        /* renamed from: a */
        public AbstractC2562h.AbstractC2563a mo29531a(Integer num) {
            this.f9577b = num;
            return this;
        }

        @Override // p131c.p161d.p170b.p173b.p176i.AbstractC2562h.AbstractC2563a
        /* renamed from: a */
        public AbstractC2562h.AbstractC2563a mo29530a(String str) {
            if (str != null) {
                this.f9576a = str;
                return this;
            }
            throw new NullPointerException("Null transportName");
        }

        @Override // p131c.p161d.p170b.p173b.p176i.AbstractC2562h.AbstractC2563a
        /* renamed from: a */
        public AbstractC2562h.AbstractC2563a mo29526a(Map<String, String> map) {
            if (map != null) {
                this.f9581f = map;
                return this;
            }
            throw new NullPointerException("Null autoMetadata");
        }

        @Override // p131c.p161d.p170b.p173b.p176i.AbstractC2562h.AbstractC2563a
        /* renamed from: a */
        public AbstractC2562h mo29534a() {
            String str = "";
            if (this.f9576a == null) {
                str = " transportName";
            }
            String str2 = str;
            if (this.f9578c == null) {
                str2 = str + " encodedPayload";
            }
            String str3 = str2;
            if (this.f9579d == null) {
                str3 = str2 + " eventMillis";
            }
            String str4 = str3;
            if (this.f9580e == null) {
                str4 = str3 + " uptimeMillis";
            }
            String str5 = str4;
            if (this.f9581f == null) {
                str5 = str4 + " autoMetadata";
            }
            if (str5.isEmpty()) {
                return new C2538a(this.f9576a, this.f9577b, this.f9578c, this.f9579d.longValue(), this.f9580e.longValue(), this.f9581f);
            }
            throw new IllegalStateException("Missing required properties:" + str5);
        }

        @Override // p131c.p161d.p170b.p173b.p176i.AbstractC2562h.AbstractC2563a
        /* renamed from: b */
        public AbstractC2562h.AbstractC2563a mo29524b(long j) {
            this.f9580e = Long.valueOf(j);
            return this;
        }

        @Override // p131c.p161d.p170b.p173b.p176i.AbstractC2562h.AbstractC2563a
        /* renamed from: b */
        public Map<String, String> mo29525b() {
            Map<String, String> map = this.f9581f;
            if (map != null) {
                return map;
            }
            throw new IllegalStateException("Property \"autoMetadata\" has not been set");
        }
    }

    public C2538a(String str, Integer num, C2561g gVar, long j, long j2, Map<String, String> map) {
        this.f9570a = str;
        this.f9571b = num;
        this.f9572c = gVar;
        this.f9573d = j;
        this.f9574e = j2;
        this.f9575f = map;
    }

    @Override // p131c.p161d.p170b.p173b.p176i.AbstractC2562h
    /* renamed from: a */
    public Map<String, String> mo29546a() {
        return this.f9575f;
    }

    @Override // p131c.p161d.p170b.p173b.p176i.AbstractC2562h
    /* renamed from: b */
    public Integer mo29544b() {
        return this.f9571b;
    }

    @Override // p131c.p161d.p170b.p173b.p176i.AbstractC2562h
    /* renamed from: c */
    public C2561g mo29542c() {
        return this.f9572c;
    }

    @Override // p131c.p161d.p170b.p173b.p176i.AbstractC2562h
    /* renamed from: d */
    public long mo29540d() {
        return this.f9573d;
    }

    public boolean equals(Object obj) {
        Integer num;
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC2562h)) {
            return false;
        }
        AbstractC2562h hVar = (AbstractC2562h) obj;
        if (!this.f9570a.equals(hVar.mo29538f()) || ((num = this.f9571b) != null ? !num.equals(hVar.mo29544b()) : hVar.mo29544b() != null) || !this.f9572c.equals(hVar.mo29542c()) || this.f9573d != hVar.mo29540d() || this.f9574e != hVar.mo29537g() || !this.f9575f.equals(hVar.mo29546a())) {
            z = false;
        }
        return z;
    }

    @Override // p131c.p161d.p170b.p173b.p176i.AbstractC2562h
    /* renamed from: f */
    public String mo29538f() {
        return this.f9570a;
    }

    @Override // p131c.p161d.p170b.p173b.p176i.AbstractC2562h
    /* renamed from: g */
    public long mo29537g() {
        return this.f9574e;
    }

    public int hashCode() {
        int hashCode = this.f9570a.hashCode();
        Integer num = this.f9571b;
        int hashCode2 = num == null ? 0 : num.hashCode();
        int hashCode3 = this.f9572c.hashCode();
        long j = this.f9573d;
        int i = (int) (j ^ (j >>> 32));
        long j2 = this.f9574e;
        return ((((((((((hashCode ^ 1000003) * 1000003) ^ hashCode2) * 1000003) ^ hashCode3) * 1000003) ^ i) * 1000003) ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003) ^ this.f9575f.hashCode();
    }

    public String toString() {
        return "EventInternal{transportName=" + this.f9570a + ", code=" + this.f9571b + ", encodedPayload=" + this.f9572c + ", eventMillis=" + this.f9573d + ", uptimeMillis=" + this.f9574e + ", autoMetadata=" + this.f9575f + "}";
    }
}
