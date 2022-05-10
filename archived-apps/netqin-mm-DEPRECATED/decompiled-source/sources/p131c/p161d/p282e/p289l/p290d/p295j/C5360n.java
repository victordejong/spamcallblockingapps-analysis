package p131c.p161d.p282e.p289l.p290d.p295j;

import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
/* renamed from: c.d.e.l.d.j.n */
/* loaded from: classes2-dex2jar.jar:c/d/e/l/d/j/n.class */
public final class C5360n extends CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7799c {

    /* renamed from: a */
    public final String f18241a;

    /* renamed from: b */
    public final String f18242b;

    /* renamed from: c */
    public final C5384v<CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7803e.AbstractC7805b> f18243c;

    /* renamed from: d */
    public final CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7799c f18244d;

    /* renamed from: e */
    public final int f18245e;

    /* renamed from: c.d.e.l.d.j.n$b */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/j/n$b.class */
    public static final class C5362b extends CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7799c.AbstractC7800a {

        /* renamed from: a */
        public String f18246a;

        /* renamed from: b */
        public String f18247b;

        /* renamed from: c */
        public C5384v<CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7803e.AbstractC7805b> f18248c;

        /* renamed from: d */
        public CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7799c f18249d;

        /* renamed from: e */
        public Integer f18250e;

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7799c.AbstractC7800a
        /* renamed from: a */
        public CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7799c.AbstractC7800a mo7484a(int i) {
            this.f18250e = Integer.valueOf(i);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7799c.AbstractC7800a
        /* renamed from: a */
        public CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7799c.AbstractC7800a mo7483a(C5384v<CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7803e.AbstractC7805b> vVar) {
            if (vVar != null) {
                this.f18248c = vVar;
                return this;
            }
            throw new NullPointerException("Null frames");
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7799c.AbstractC7800a
        /* renamed from: a */
        public CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7799c.AbstractC7800a mo7482a(CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7799c cVar) {
            this.f18249d = cVar;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7799c.AbstractC7800a
        /* renamed from: a */
        public CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7799c.AbstractC7800a mo7481a(String str) {
            this.f18247b = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7799c.AbstractC7800a
        /* renamed from: a */
        public CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7799c mo7485a() {
            String str = "";
            if (this.f18246a == null) {
                str = " type";
            }
            String str2 = str;
            if (this.f18248c == null) {
                str2 = str + " frames";
            }
            String str3 = str2;
            if (this.f18250e == null) {
                str3 = str2 + " overflowCount";
            }
            if (str3.isEmpty()) {
                return new C5360n(this.f18246a, this.f18247b, this.f18248c, this.f18249d, this.f18250e.intValue());
            }
            throw new IllegalStateException("Missing required properties:" + str3);
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7799c.AbstractC7800a
        /* renamed from: b */
        public CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7799c.AbstractC7800a mo7480b(String str) {
            if (str != null) {
                this.f18246a = str;
                return this;
            }
            throw new NullPointerException("Null type");
        }
    }

    public C5360n(String str, String str2, C5384v<CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7803e.AbstractC7805b> vVar, CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7799c cVar, int i) {
        this.f18241a = str;
        this.f18242b = str2;
        this.f18243c = vVar;
        this.f18244d = cVar;
        this.f18245e = i;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7799c
    /* renamed from: a */
    public CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7799c mo7491a() {
        return this.f18244d;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7799c
    /* renamed from: b */
    public C5384v<CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7803e.AbstractC7805b> mo7490b() {
        return this.f18243c;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7799c
    /* renamed from: c */
    public int mo7489c() {
        return this.f18245e;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7799c
    /* renamed from: d */
    public String mo7488d() {
        return this.f18242b;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7799c
    /* renamed from: e */
    public String mo7487e() {
        return this.f18241a;
    }

    public boolean equals(Object obj) {
        String str;
        CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7799c cVar;
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7799c)) {
            return false;
        }
        CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7799c cVar2 = (CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7799c) obj;
        if (!this.f18241a.equals(cVar2.mo7487e()) || ((str = this.f18242b) != null ? !str.equals(cVar2.mo7488d()) : cVar2.mo7488d() != null) || !this.f18243c.equals(cVar2.mo7490b()) || ((cVar = this.f18244d) != null ? !cVar.equals(cVar2.mo7491a()) : cVar2.mo7491a() != null) || this.f18245e != cVar2.mo7489c()) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int hashCode = this.f18241a.hashCode();
        String str = this.f18242b;
        int i = 0;
        int hashCode2 = str == null ? 0 : str.hashCode();
        int hashCode3 = this.f18243c.hashCode();
        CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7799c cVar = this.f18244d;
        if (cVar != null) {
            i = cVar.hashCode();
        }
        return ((((((((hashCode ^ 1000003) * 1000003) ^ hashCode2) * 1000003) ^ hashCode3) * 1000003) ^ i) * 1000003) ^ this.f18245e;
    }

    public String toString() {
        return "Exception{type=" + this.f18241a + ", reason=" + this.f18242b + ", frames=" + this.f18243c + ", causedBy=" + this.f18244d + ", overflowCount=" + this.f18245e + "}";
    }
}
