package p081h.p203i.p204a.p206b.p209j;

import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import p081h.p203i.p204a.p206b.AbstractC6494c;
import p081h.p203i.p204a.p206b.AbstractC6496e;
import p081h.p203i.p204a.p206b.C6493b;
import p081h.p203i.p204a.p206b.p209j.AbstractC6578l;
/* renamed from: h.i.a.b.j.b */
/* loaded from: classes2-dex2jar.jar:h/i/a/b/j/b.class */
public final class C6558b extends AbstractC6578l {

    /* renamed from: a */
    public final AbstractC6580m f16341a;

    /* renamed from: b */
    public final String f16342b;

    /* renamed from: c */
    public final AbstractC6494c<?> f16343c;

    /* renamed from: d */
    public final AbstractC6496e<?, byte[]> f16344d;

    /* renamed from: e */
    public final C6493b f16345e;

    /* renamed from: h.i.a.b.j.b$b */
    /* loaded from: classes2-dex2jar.jar:h/i/a/b/j/b$b.class */
    public static final class C6560b extends AbstractC6578l.AbstractC6579a {

        /* renamed from: a */
        public AbstractC6580m f16346a;

        /* renamed from: b */
        public String f16347b;

        /* renamed from: c */
        public AbstractC6494c<?> f16348c;

        /* renamed from: d */
        public AbstractC6496e<?, byte[]> f16349d;

        /* renamed from: e */
        public C6493b f16350e;

        @Override // p081h.p203i.p204a.p206b.p209j.AbstractC6578l.AbstractC6579a
        /* renamed from: a */
        public AbstractC6578l.AbstractC6579a mo22301a(C6493b bVar) {
            if (bVar != null) {
                this.f16350e = bVar;
                return this;
            }
            throw new NullPointerException("Null encoding");
        }

        @Override // p081h.p203i.p204a.p206b.p209j.AbstractC6578l.AbstractC6579a
        /* renamed from: a */
        public AbstractC6578l.AbstractC6579a mo22300a(AbstractC6494c<?> cVar) {
            if (cVar != null) {
                this.f16348c = cVar;
                return this;
            }
            throw new NullPointerException("Null event");
        }

        @Override // p081h.p203i.p204a.p206b.p209j.AbstractC6578l.AbstractC6579a
        /* renamed from: a */
        public AbstractC6578l.AbstractC6579a mo22299a(AbstractC6496e<?, byte[]> eVar) {
            if (eVar != null) {
                this.f16349d = eVar;
                return this;
            }
            throw new NullPointerException("Null transformer");
        }

        @Override // p081h.p203i.p204a.p206b.p209j.AbstractC6578l.AbstractC6579a
        /* renamed from: a */
        public AbstractC6578l.AbstractC6579a mo22298a(AbstractC6580m mVar) {
            if (mVar != null) {
                this.f16346a = mVar;
                return this;
            }
            throw new NullPointerException("Null transportContext");
        }

        @Override // p081h.p203i.p204a.p206b.p209j.AbstractC6578l.AbstractC6579a
        /* renamed from: a */
        public AbstractC6578l.AbstractC6579a mo22297a(String str) {
            if (str != null) {
                this.f16347b = str;
                return this;
            }
            throw new NullPointerException("Null transportName");
        }

        @Override // p081h.p203i.p204a.p206b.p209j.AbstractC6578l.AbstractC6579a
        /* renamed from: a */
        public AbstractC6578l mo22302a() {
            String str = "";
            if (this.f16346a == null) {
                str = " transportContext";
            }
            String str2 = str;
            if (this.f16347b == null) {
                str2 = str + " transportName";
            }
            String str3 = str2;
            if (this.f16348c == null) {
                str3 = str2 + " event";
            }
            String str4 = str3;
            if (this.f16349d == null) {
                str4 = str3 + " transformer";
            }
            String str5 = str4;
            if (this.f16350e == null) {
                str5 = str4 + " encoding";
            }
            if (str5.isEmpty()) {
                return new C6558b(this.f16346a, this.f16347b, this.f16348c, this.f16349d, this.f16350e);
            }
            throw new IllegalStateException("Missing required properties:" + str5);
        }
    }

    public C6558b(AbstractC6580m mVar, String str, AbstractC6494c<?> cVar, AbstractC6496e<?, byte[]> eVar, C6493b bVar) {
        this.f16341a = mVar;
        this.f16342b = str;
        this.f16343c = cVar;
        this.f16344d = eVar;
        this.f16345e = bVar;
    }

    @Override // p081h.p203i.p204a.p206b.p209j.AbstractC6578l
    /* renamed from: a */
    public C6493b mo22309a() {
        return this.f16345e;
    }

    @Override // p081h.p203i.p204a.p206b.p209j.AbstractC6578l
    /* renamed from: b */
    public AbstractC6494c<?> mo22308b() {
        return this.f16343c;
    }

    @Override // p081h.p203i.p204a.p206b.p209j.AbstractC6578l
    /* renamed from: d */
    public AbstractC6496e<?, byte[]> mo22306d() {
        return this.f16344d;
    }

    @Override // p081h.p203i.p204a.p206b.p209j.AbstractC6578l
    /* renamed from: e */
    public AbstractC6580m mo22305e() {
        return this.f16341a;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC6578l)) {
            return false;
        }
        AbstractC6578l lVar = (AbstractC6578l) obj;
        if (!this.f16341a.equals(lVar.mo22305e()) || !this.f16342b.equals(lVar.mo22304f()) || !this.f16343c.equals(lVar.mo22308b()) || !this.f16344d.equals(lVar.mo22306d()) || !this.f16345e.equals(lVar.mo22309a())) {
            z = false;
        }
        return z;
    }

    @Override // p081h.p203i.p204a.p206b.p209j.AbstractC6578l
    /* renamed from: f */
    public String mo22304f() {
        return this.f16342b;
    }

    public int hashCode() {
        return ((((((((this.f16341a.hashCode() ^ 1000003) * 1000003) ^ this.f16342b.hashCode()) * 1000003) ^ this.f16343c.hashCode()) * 1000003) ^ this.f16344d.hashCode()) * 1000003) ^ this.f16345e.hashCode();
    }

    public String toString() {
        return "SendRequest{transportContext=" + this.f16341a + ", transportName=" + this.f16342b + ", event=" + this.f16343c + ", transformer=" + this.f16344d + ", encoding=" + this.f16345e + CssParser.BLOCK_END;
    }
}
