package p081h.p203i.p325c.p367v;

import androidx.annotation.NonNull;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import p081h.p203i.p325c.p367v.AbstractC9947m;
/* renamed from: h.i.c.v.a */
/* loaded from: classes2-dex2jar.jar:h/i/c/v/a.class */
public final class C9930a extends AbstractC9947m {

    /* renamed from: a */
    public final String f22468a;

    /* renamed from: b */
    public final long f22469b;

    /* renamed from: c */
    public final long f22470c;

    /* renamed from: h.i.c.v.a$b */
    /* loaded from: classes2-dex2jar.jar:h/i/c/v/a$b.class */
    public static final class C9932b extends AbstractC9947m.AbstractC9948a {

        /* renamed from: a */
        public String f22471a;

        /* renamed from: b */
        public Long f22472b;

        /* renamed from: c */
        public Long f22473c;

        @Override // p081h.p203i.p325c.p367v.AbstractC9947m.AbstractC9948a
        /* renamed from: a */
        public AbstractC9947m.AbstractC9948a mo13891a(long j) {
            this.f22473c = Long.valueOf(j);
            return this;
        }

        @Override // p081h.p203i.p325c.p367v.AbstractC9947m.AbstractC9948a
        /* renamed from: a */
        public AbstractC9947m.AbstractC9948a mo13890a(String str) {
            if (str != null) {
                this.f22471a = str;
                return this;
            }
            throw new NullPointerException("Null token");
        }

        @Override // p081h.p203i.p325c.p367v.AbstractC9947m.AbstractC9948a
        /* renamed from: a */
        public AbstractC9947m mo13892a() {
            String str = "";
            if (this.f22471a == null) {
                str = " token";
            }
            String str2 = str;
            if (this.f22472b == null) {
                str2 = str + " tokenExpirationTimestamp";
            }
            String str3 = str2;
            if (this.f22473c == null) {
                str3 = str2 + " tokenCreationTimestamp";
            }
            if (str3.isEmpty()) {
                return new C9930a(this.f22471a, this.f22472b.longValue(), this.f22473c.longValue());
            }
            throw new IllegalStateException("Missing required properties:" + str3);
        }

        @Override // p081h.p203i.p325c.p367v.AbstractC9947m.AbstractC9948a
        /* renamed from: b */
        public AbstractC9947m.AbstractC9948a mo13889b(long j) {
            this.f22472b = Long.valueOf(j);
            return this;
        }
    }

    public C9930a(String str, long j, long j2) {
        this.f22468a = str;
        this.f22469b = j;
        this.f22470c = j2;
    }

    @Override // p081h.p203i.p325c.p367v.AbstractC9947m
    @NonNull
    /* renamed from: a */
    public String mo13896a() {
        return this.f22468a;
    }

    @Override // p081h.p203i.p325c.p367v.AbstractC9947m
    @NonNull
    /* renamed from: b */
    public long mo13895b() {
        return this.f22470c;
    }

    @Override // p081h.p203i.p325c.p367v.AbstractC9947m
    @NonNull
    /* renamed from: c */
    public long mo13894c() {
        return this.f22469b;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC9947m)) {
            return false;
        }
        AbstractC9947m mVar = (AbstractC9947m) obj;
        if (!(this.f22468a.equals(mVar.mo13896a()) && this.f22469b == mVar.mo13894c() && this.f22470c == mVar.mo13895b())) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int hashCode = this.f22468a.hashCode();
        long j = this.f22469b;
        int i = (int) (j ^ (j >>> 32));
        long j2 = this.f22470c;
        return ((((hashCode ^ 1000003) * 1000003) ^ i) * 1000003) ^ ((int) (j2 ^ (j2 >>> 32)));
    }

    public String toString() {
        return "InstallationTokenResult{token=" + this.f22468a + ", tokenExpirationTimestamp=" + this.f22469b + ", tokenCreationTimestamp=" + this.f22470c + CssParser.BLOCK_END;
    }
}
