package p081h.p203i.p204a.p206b.p207i.p208f;

import androidx.annotation.Nullable;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import java.util.List;
import p081h.p203i.p204a.p206b.p207i.p208f.AbstractC6539m;
/* renamed from: h.i.a.b.i.f.g */
/* loaded from: classes2-dex2jar.jar:h/i/a/b/i/f/g.class */
public final class C6526g extends AbstractC6539m {

    /* renamed from: a */
    public final long f16251a;

    /* renamed from: b */
    public final long f16252b;

    /* renamed from: c */
    public final AbstractC6534k f16253c;

    /* renamed from: d */
    public final Integer f16254d;

    /* renamed from: e */
    public final String f16255e;

    /* renamed from: f */
    public final List<AbstractC6537l> f16256f;

    /* renamed from: g */
    public final EnumC6546p f16257g;

    /* renamed from: h.i.a.b.i.f.g$b */
    /* loaded from: classes2-dex2jar.jar:h/i/a/b/i/f/g$b.class */
    public static final class C6528b extends AbstractC6539m.AbstractC6540a {

        /* renamed from: a */
        public Long f16258a;

        /* renamed from: b */
        public Long f16259b;

        /* renamed from: c */
        public AbstractC6534k f16260c;

        /* renamed from: d */
        public Integer f16261d;

        /* renamed from: e */
        public String f16262e;

        /* renamed from: f */
        public List<AbstractC6537l> f16263f;

        /* renamed from: g */
        public EnumC6546p f16264g;

        @Override // p081h.p203i.p204a.p206b.p207i.p208f.AbstractC6539m.AbstractC6540a
        /* renamed from: a */
        public AbstractC6539m.AbstractC6540a mo22373a(long j) {
            this.f16258a = Long.valueOf(j);
            return this;
        }

        @Override // p081h.p203i.p204a.p206b.p207i.p208f.AbstractC6539m.AbstractC6540a
        /* renamed from: a */
        public AbstractC6539m.AbstractC6540a mo22372a(@Nullable AbstractC6534k kVar) {
            this.f16260c = kVar;
            return this;
        }

        @Override // p081h.p203i.p204a.p206b.p207i.p208f.AbstractC6539m.AbstractC6540a
        /* renamed from: a */
        public AbstractC6539m.AbstractC6540a mo22371a(@Nullable EnumC6546p pVar) {
            this.f16264g = pVar;
            return this;
        }

        @Override // p081h.p203i.p204a.p206b.p207i.p208f.AbstractC6539m.AbstractC6540a
        /* renamed from: a */
        public AbstractC6539m.AbstractC6540a mo22370a(@Nullable Integer num) {
            this.f16261d = num;
            return this;
        }

        @Override // p081h.p203i.p204a.p206b.p207i.p208f.AbstractC6539m.AbstractC6540a
        /* renamed from: a */
        public AbstractC6539m.AbstractC6540a mo22369a(@Nullable String str) {
            this.f16262e = str;
            return this;
        }

        @Override // p081h.p203i.p204a.p206b.p207i.p208f.AbstractC6539m.AbstractC6540a
        /* renamed from: a */
        public AbstractC6539m.AbstractC6540a mo22368a(@Nullable List<AbstractC6537l> list) {
            this.f16263f = list;
            return this;
        }

        @Override // p081h.p203i.p204a.p206b.p207i.p208f.AbstractC6539m.AbstractC6540a
        /* renamed from: a */
        public AbstractC6539m mo22375a() {
            String str = "";
            if (this.f16258a == null) {
                str = " requestTimeMs";
            }
            String str2 = str;
            if (this.f16259b == null) {
                str2 = str + " requestUptimeMs";
            }
            if (str2.isEmpty()) {
                return new C6526g(this.f16258a.longValue(), this.f16259b.longValue(), this.f16260c, this.f16261d, this.f16262e, this.f16263f, this.f16264g);
            }
            throw new IllegalStateException("Missing required properties:" + str2);
        }

        @Override // p081h.p203i.p204a.p206b.p207i.p208f.AbstractC6539m.AbstractC6540a
        /* renamed from: b */
        public AbstractC6539m.AbstractC6540a mo22367b(long j) {
            this.f16259b = Long.valueOf(j);
            return this;
        }
    }

    public C6526g(long j, long j2, @Nullable AbstractC6534k kVar, @Nullable Integer num, @Nullable String str, @Nullable List<AbstractC6537l> list, @Nullable EnumC6546p pVar) {
        this.f16251a = j;
        this.f16252b = j2;
        this.f16253c = kVar;
        this.f16254d = num;
        this.f16255e = str;
        this.f16256f = list;
        this.f16257g = pVar;
    }

    @Override // p081h.p203i.p204a.p206b.p207i.p208f.AbstractC6539m
    @Nullable
    /* renamed from: a */
    public AbstractC6534k mo22383a() {
        return this.f16253c;
    }

    @Override // p081h.p203i.p204a.p206b.p207i.p208f.AbstractC6539m
    @Nullable
    /* renamed from: b */
    public List<AbstractC6537l> mo22382b() {
        return this.f16256f;
    }

    @Override // p081h.p203i.p204a.p206b.p207i.p208f.AbstractC6539m
    @Nullable
    /* renamed from: c */
    public Integer mo22381c() {
        return this.f16254d;
    }

    @Override // p081h.p203i.p204a.p206b.p207i.p208f.AbstractC6539m
    @Nullable
    /* renamed from: d */
    public String mo22380d() {
        return this.f16255e;
    }

    @Override // p081h.p203i.p204a.p206b.p207i.p208f.AbstractC6539m
    @Nullable
    /* renamed from: e */
    public EnumC6546p mo22379e() {
        return this.f16257g;
    }

    public boolean equals(Object obj) {
        AbstractC6534k kVar;
        Integer num;
        String str;
        List<AbstractC6537l> list;
        EnumC6546p pVar;
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC6539m)) {
            return false;
        }
        AbstractC6539m mVar = (AbstractC6539m) obj;
        if (this.f16251a != mVar.mo22378f() || this.f16252b != mVar.mo22377g() || ((kVar = this.f16253c) != null ? !kVar.equals(mVar.mo22383a()) : mVar.mo22383a() != null) || ((num = this.f16254d) != null ? !num.equals(mVar.mo22381c()) : mVar.mo22381c() != null) || ((str = this.f16255e) != null ? !str.equals(mVar.mo22380d()) : mVar.mo22380d() != null) || ((list = this.f16256f) != null ? !list.equals(mVar.mo22382b()) : mVar.mo22382b() != null) || ((pVar = this.f16257g) != null ? !pVar.equals(mVar.mo22379e()) : mVar.mo22379e() != null)) {
            z = false;
        }
        return z;
    }

    @Override // p081h.p203i.p204a.p206b.p207i.p208f.AbstractC6539m
    /* renamed from: f */
    public long mo22378f() {
        return this.f16251a;
    }

    @Override // p081h.p203i.p204a.p206b.p207i.p208f.AbstractC6539m
    /* renamed from: g */
    public long mo22377g() {
        return this.f16252b;
    }

    public int hashCode() {
        long j = this.f16251a;
        int i = (int) (j ^ (j >>> 32));
        long j2 = this.f16252b;
        int i2 = (int) ((j2 >>> 32) ^ j2);
        AbstractC6534k kVar = this.f16253c;
        int i3 = 0;
        int hashCode = kVar == null ? 0 : kVar.hashCode();
        Integer num = this.f16254d;
        int hashCode2 = num == null ? 0 : num.hashCode();
        String str = this.f16255e;
        int hashCode3 = str == null ? 0 : str.hashCode();
        List<AbstractC6537l> list = this.f16256f;
        int hashCode4 = list == null ? 0 : list.hashCode();
        EnumC6546p pVar = this.f16257g;
        if (pVar != null) {
            i3 = pVar.hashCode();
        }
        return ((((((((((((i ^ 1000003) * 1000003) ^ i2) * 1000003) ^ hashCode) * 1000003) ^ hashCode2) * 1000003) ^ hashCode3) * 1000003) ^ hashCode4) * 1000003) ^ i3;
    }

    public String toString() {
        return "LogRequest{requestTimeMs=" + this.f16251a + ", requestUptimeMs=" + this.f16252b + ", clientInfo=" + this.f16253c + ", logSource=" + this.f16254d + ", logSourceName=" + this.f16255e + ", logEvents=" + this.f16256f + ", qosTier=" + this.f16257g + CssParser.BLOCK_END;
    }
}
