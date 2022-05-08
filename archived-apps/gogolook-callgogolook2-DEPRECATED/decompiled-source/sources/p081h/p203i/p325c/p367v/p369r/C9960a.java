package p081h.p203i.p325c.p367v.p369r;

import androidx.annotation.Nullable;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import p081h.p203i.p325c.p367v.p369r.AbstractC9967d;
/* renamed from: h.i.c.v.r.a */
/* loaded from: classes2-dex2jar.jar:h/i/c/v/r/a.class */
public final class C9960a extends AbstractC9967d {

    /* renamed from: a */
    public final String f22537a;

    /* renamed from: b */
    public final String f22538b;

    /* renamed from: c */
    public final String f22539c;

    /* renamed from: d */
    public final AbstractC9971f f22540d;

    /* renamed from: e */
    public final AbstractC9967d.EnumC9969b f22541e;

    /* renamed from: h.i.c.v.r.a$b */
    /* loaded from: classes2-dex2jar.jar:h/i/c/v/r/a$b.class */
    public static final class C9962b extends AbstractC9967d.AbstractC9968a {

        /* renamed from: a */
        public String f22542a;

        /* renamed from: b */
        public String f22543b;

        /* renamed from: c */
        public String f22544c;

        /* renamed from: d */
        public AbstractC9971f f22545d;

        /* renamed from: e */
        public AbstractC9967d.EnumC9969b f22546e;

        @Override // p081h.p203i.p325c.p367v.p369r.AbstractC9967d.AbstractC9968a
        /* renamed from: a */
        public AbstractC9967d.AbstractC9968a mo13808a(AbstractC9967d.EnumC9969b bVar) {
            this.f22546e = bVar;
            return this;
        }

        @Override // p081h.p203i.p325c.p367v.p369r.AbstractC9967d.AbstractC9968a
        /* renamed from: a */
        public AbstractC9967d.AbstractC9968a mo13807a(AbstractC9971f fVar) {
            this.f22545d = fVar;
            return this;
        }

        @Override // p081h.p203i.p325c.p367v.p369r.AbstractC9967d.AbstractC9968a
        /* renamed from: a */
        public AbstractC9967d.AbstractC9968a mo13806a(String str) {
            this.f22543b = str;
            return this;
        }

        @Override // p081h.p203i.p325c.p367v.p369r.AbstractC9967d.AbstractC9968a
        /* renamed from: a */
        public AbstractC9967d mo13809a() {
            return new C9960a(this.f22542a, this.f22543b, this.f22544c, this.f22545d, this.f22546e);
        }

        @Override // p081h.p203i.p325c.p367v.p369r.AbstractC9967d.AbstractC9968a
        /* renamed from: b */
        public AbstractC9967d.AbstractC9968a mo13805b(String str) {
            this.f22544c = str;
            return this;
        }

        @Override // p081h.p203i.p325c.p367v.p369r.AbstractC9967d.AbstractC9968a
        /* renamed from: c */
        public AbstractC9967d.AbstractC9968a mo13804c(String str) {
            this.f22542a = str;
            return this;
        }
    }

    public C9960a(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable AbstractC9971f fVar, @Nullable AbstractC9967d.EnumC9969b bVar) {
        this.f22537a = str;
        this.f22538b = str2;
        this.f22539c = str3;
        this.f22540d = fVar;
        this.f22541e = bVar;
    }

    @Override // p081h.p203i.p325c.p367v.p369r.AbstractC9967d
    @Nullable
    /* renamed from: a */
    public AbstractC9971f mo13815a() {
        return this.f22540d;
    }

    @Override // p081h.p203i.p325c.p367v.p369r.AbstractC9967d
    @Nullable
    /* renamed from: b */
    public String mo13814b() {
        return this.f22538b;
    }

    @Override // p081h.p203i.p325c.p367v.p369r.AbstractC9967d
    @Nullable
    /* renamed from: c */
    public String mo13813c() {
        return this.f22539c;
    }

    @Override // p081h.p203i.p325c.p367v.p369r.AbstractC9967d
    @Nullable
    /* renamed from: d */
    public AbstractC9967d.EnumC9969b mo13812d() {
        return this.f22541e;
    }

    @Override // p081h.p203i.p325c.p367v.p369r.AbstractC9967d
    @Nullable
    /* renamed from: e */
    public String mo13811e() {
        return this.f22537a;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC9967d)) {
            return false;
        }
        AbstractC9967d dVar = (AbstractC9967d) obj;
        String str = this.f22537a;
        if (str != null ? str.equals(dVar.mo13811e()) : dVar.mo13811e() == null) {
            String str2 = this.f22538b;
            if (str2 != null ? str2.equals(dVar.mo13814b()) : dVar.mo13814b() == null) {
                String str3 = this.f22539c;
                if (str3 != null ? str3.equals(dVar.mo13813c()) : dVar.mo13813c() == null) {
                    AbstractC9971f fVar = this.f22540d;
                    if (fVar != null ? fVar.equals(dVar.mo13815a()) : dVar.mo13815a() == null) {
                        AbstractC9967d.EnumC9969b bVar = this.f22541e;
                        if (bVar != null) {
                        }
                    }
                }
            }
        }
        z = false;
        return z;
    }

    public int hashCode() {
        String str = this.f22537a;
        int i = 0;
        int hashCode = str == null ? 0 : str.hashCode();
        String str2 = this.f22538b;
        int hashCode2 = str2 == null ? 0 : str2.hashCode();
        String str3 = this.f22539c;
        int hashCode3 = str3 == null ? 0 : str3.hashCode();
        AbstractC9971f fVar = this.f22540d;
        int hashCode4 = fVar == null ? 0 : fVar.hashCode();
        AbstractC9967d.EnumC9969b bVar = this.f22541e;
        if (bVar != null) {
            i = bVar.hashCode();
        }
        return ((((((((hashCode ^ 1000003) * 1000003) ^ hashCode2) * 1000003) ^ hashCode3) * 1000003) ^ hashCode4) * 1000003) ^ i;
    }

    public String toString() {
        return "InstallationResponse{uri=" + this.f22537a + ", fid=" + this.f22538b + ", refreshToken=" + this.f22539c + ", authToken=" + this.f22540d + ", responseCode=" + this.f22541e + CssParser.BLOCK_END;
    }
}
