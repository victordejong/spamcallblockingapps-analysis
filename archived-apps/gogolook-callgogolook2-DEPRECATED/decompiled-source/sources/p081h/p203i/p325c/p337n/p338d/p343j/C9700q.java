package p081h.p203i.p325c.p337n.p338d.p343j;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v;
/* renamed from: h.i.c.n.d.j.q */
/* loaded from: classes2-dex2jar.jar:h/i/c/n/d/j/q.class */
public final class C9700q extends AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9741e.AbstractC9743b {

    /* renamed from: a */
    public final long f22114a;

    /* renamed from: b */
    public final String f22115b;

    /* renamed from: c */
    public final String f22116c;

    /* renamed from: d */
    public final long f22117d;

    /* renamed from: e */
    public final int f22118e;

    /* renamed from: h.i.c.n.d.j.q$b */
    /* loaded from: classes2-dex2jar.jar:h/i/c/n/d/j/q$b.class */
    public static final class C9702b extends AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9741e.AbstractC9743b.AbstractC9744a {

        /* renamed from: a */
        public Long f22119a;

        /* renamed from: b */
        public String f22120b;

        /* renamed from: c */
        public String f22121c;

        /* renamed from: d */
        public Long f22122d;

        /* renamed from: e */
        public Integer f22123e;

        @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9741e.AbstractC9743b.AbstractC9744a
        /* renamed from: a */
        public AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9741e.AbstractC9743b.AbstractC9744a mo14434a(int i) {
            this.f22123e = Integer.valueOf(i);
            return this;
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9741e.AbstractC9743b.AbstractC9744a
        /* renamed from: a */
        public AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9741e.AbstractC9743b.AbstractC9744a mo14433a(long j) {
            this.f22122d = Long.valueOf(j);
            return this;
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9741e.AbstractC9743b.AbstractC9744a
        /* renamed from: a */
        public AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9741e.AbstractC9743b.AbstractC9744a mo14432a(String str) {
            this.f22121c = str;
            return this;
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9741e.AbstractC9743b.AbstractC9744a
        /* renamed from: a */
        public AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9741e.AbstractC9743b mo14435a() {
            String str = "";
            if (this.f22119a == null) {
                str = " pc";
            }
            String str2 = str;
            if (this.f22120b == null) {
                str2 = str + " symbol";
            }
            String str3 = str2;
            if (this.f22122d == null) {
                str3 = str2 + " offset";
            }
            String str4 = str3;
            if (this.f22123e == null) {
                str4 = str3 + " importance";
            }
            if (str4.isEmpty()) {
                return new C9700q(this.f22119a.longValue(), this.f22120b, this.f22121c, this.f22122d.longValue(), this.f22123e.intValue());
            }
            throw new IllegalStateException("Missing required properties:" + str4);
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9741e.AbstractC9743b.AbstractC9744a
        /* renamed from: b */
        public AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9741e.AbstractC9743b.AbstractC9744a mo14431b(long j) {
            this.f22119a = Long.valueOf(j);
            return this;
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9741e.AbstractC9743b.AbstractC9744a
        /* renamed from: b */
        public AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9741e.AbstractC9743b.AbstractC9744a mo14430b(String str) {
            if (str != null) {
                this.f22120b = str;
                return this;
            }
            throw new NullPointerException("Null symbol");
        }
    }

    public C9700q(long j, String str, @Nullable String str2, long j2, int i) {
        this.f22114a = j;
        this.f22115b = str;
        this.f22116c = str2;
        this.f22117d = j2;
        this.f22118e = i;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9741e.AbstractC9743b
    @Nullable
    /* renamed from: a */
    public String mo14441a() {
        return this.f22116c;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9741e.AbstractC9743b
    /* renamed from: b */
    public int mo14440b() {
        return this.f22118e;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9741e.AbstractC9743b
    /* renamed from: c */
    public long mo14439c() {
        return this.f22117d;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9741e.AbstractC9743b
    /* renamed from: d */
    public long mo14438d() {
        return this.f22114a;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9741e.AbstractC9743b
    @NonNull
    /* renamed from: e */
    public String mo14437e() {
        return this.f22115b;
    }

    public boolean equals(Object obj) {
        String str;
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9741e.AbstractC9743b)) {
            return false;
        }
        AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9741e.AbstractC9743b bVar = (AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9741e.AbstractC9743b) obj;
        if (!(this.f22114a == bVar.mo14438d() && this.f22115b.equals(bVar.mo14437e()) && ((str = this.f22116c) != null ? str.equals(bVar.mo14441a()) : bVar.mo14441a() == null) && this.f22117d == bVar.mo14439c() && this.f22118e == bVar.mo14440b())) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        long j = this.f22114a;
        int i = (int) (j ^ (j >>> 32));
        int hashCode = this.f22115b.hashCode();
        String str = this.f22116c;
        int hashCode2 = str == null ? 0 : str.hashCode();
        long j2 = this.f22117d;
        return this.f22118e ^ ((((((((i ^ 1000003) * 1000003) ^ hashCode) * 1000003) ^ hashCode2) * 1000003) ^ ((int) ((j2 >>> 32) ^ j2))) * 1000003);
    }

    public String toString() {
        return "Frame{pc=" + this.f22114a + ", symbol=" + this.f22115b + ", file=" + this.f22116c + ", offset=" + this.f22117d + ", importance=" + this.f22118e + CssParser.BLOCK_END;
    }
}
