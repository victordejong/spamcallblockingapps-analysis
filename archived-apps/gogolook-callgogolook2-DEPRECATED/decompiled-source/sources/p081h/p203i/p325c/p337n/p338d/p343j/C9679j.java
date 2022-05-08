package p081h.p203i.p325c.p337n.p338d.p343j;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v;
/* renamed from: h.i.c.n.d.j.j */
/* loaded from: classes2-dex2jar.jar:h/i/c/n/d/j/j.class */
public final class C9679j extends AbstractC9715v.AbstractC9723d.AbstractC9730d {

    /* renamed from: a */
    public final long f22058a;

    /* renamed from: b */
    public final String f22059b;

    /* renamed from: c */
    public final AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a f22060c;

    /* renamed from: d */
    public final AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9746c f22061d;

    /* renamed from: e */
    public final AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9748d f22062e;

    /* renamed from: h.i.c.n.d.j.j$b */
    /* loaded from: classes2-dex2jar.jar:h/i/c/n/d/j/j$b.class */
    public static final class C9681b extends AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9745b {

        /* renamed from: a */
        public Long f22063a;

        /* renamed from: b */
        public String f22064b;

        /* renamed from: c */
        public AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a f22065c;

        /* renamed from: d */
        public AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9746c f22066d;

        /* renamed from: e */
        public AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9748d f22067e;

        public C9681b() {
        }

        public C9681b(AbstractC9715v.AbstractC9723d.AbstractC9730d dVar) {
            this.f22063a = Long.valueOf(dVar.mo14506d());
            this.f22064b = dVar.mo14505e();
            this.f22065c = dVar.mo14509a();
            this.f22066d = dVar.mo14508b();
            this.f22067e = dVar.mo14507c();
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9745b
        /* renamed from: a */
        public AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9745b mo14428a(long j) {
            this.f22063a = Long.valueOf(j);
            return this;
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9745b
        /* renamed from: a */
        public AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9745b mo14427a(AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a aVar) {
            if (aVar != null) {
                this.f22065c = aVar;
                return this;
            }
            throw new NullPointerException("Null app");
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9745b
        /* renamed from: a */
        public AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9745b mo14426a(AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9746c cVar) {
            if (cVar != null) {
                this.f22066d = cVar;
                return this;
            }
            throw new NullPointerException("Null device");
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9745b
        /* renamed from: a */
        public AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9745b mo14425a(AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9748d dVar) {
            this.f22067e = dVar;
            return this;
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9745b
        /* renamed from: a */
        public AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9745b mo14424a(String str) {
            if (str != null) {
                this.f22064b = str;
                return this;
            }
            throw new NullPointerException("Null type");
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9745b
        /* renamed from: a */
        public AbstractC9715v.AbstractC9723d.AbstractC9730d mo14429a() {
            String str = "";
            if (this.f22063a == null) {
                str = " timestamp";
            }
            String str2 = str;
            if (this.f22064b == null) {
                str2 = str + " type";
            }
            String str3 = str2;
            if (this.f22065c == null) {
                str3 = str2 + " app";
            }
            String str4 = str3;
            if (this.f22066d == null) {
                str4 = str3 + " device";
            }
            if (str4.isEmpty()) {
                return new C9679j(this.f22063a.longValue(), this.f22064b, this.f22065c, this.f22066d, this.f22067e);
            }
            throw new IllegalStateException("Missing required properties:" + str4);
        }
    }

    public C9679j(long j, String str, AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a aVar, AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9746c cVar, @Nullable AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9748d dVar) {
        this.f22058a = j;
        this.f22059b = str;
        this.f22060c = aVar;
        this.f22061d = cVar;
        this.f22062e = dVar;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9730d
    @NonNull
    /* renamed from: a */
    public AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a mo14509a() {
        return this.f22060c;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9730d
    @NonNull
    /* renamed from: b */
    public AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9746c mo14508b() {
        return this.f22061d;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9730d
    @Nullable
    /* renamed from: c */
    public AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9748d mo14507c() {
        return this.f22062e;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9730d
    /* renamed from: d */
    public long mo14506d() {
        return this.f22058a;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9730d
    @NonNull
    /* renamed from: e */
    public String mo14505e() {
        return this.f22059b;
    }

    public boolean equals(Object obj) {
        AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9748d dVar;
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC9715v.AbstractC9723d.AbstractC9730d)) {
            return false;
        }
        AbstractC9715v.AbstractC9723d.AbstractC9730d dVar2 = (AbstractC9715v.AbstractC9723d.AbstractC9730d) obj;
        if (this.f22058a != dVar2.mo14506d() || !this.f22059b.equals(dVar2.mo14505e()) || !this.f22060c.equals(dVar2.mo14509a()) || !this.f22061d.equals(dVar2.mo14508b()) || ((dVar = this.f22062e) != null ? !dVar.equals(dVar2.mo14507c()) : dVar2.mo14507c() != null)) {
            z = false;
        }
        return z;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9730d
    /* renamed from: f */
    public AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9745b mo14504f() {
        return new C9681b(this);
    }

    public int hashCode() {
        long j = this.f22058a;
        int i = (int) (j ^ (j >>> 32));
        int hashCode = this.f22059b.hashCode();
        int hashCode2 = this.f22060c.hashCode();
        int hashCode3 = this.f22061d.hashCode();
        AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9748d dVar = this.f22062e;
        return (dVar == null ? 0 : dVar.hashCode()) ^ ((((((((i ^ 1000003) * 1000003) ^ hashCode) * 1000003) ^ hashCode2) * 1000003) ^ hashCode3) * 1000003);
    }

    public String toString() {
        return "Event{timestamp=" + this.f22058a + ", type=" + this.f22059b + ", app=" + this.f22060c + ", device=" + this.f22061d + ", log=" + this.f22062e + CssParser.BLOCK_END;
    }
}
