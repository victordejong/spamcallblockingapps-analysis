package p131c.p161d.p282e.p289l.p290d.p295j;

import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
/* renamed from: c.d.e.l.d.j.d */
/* loaded from: classes2-dex2jar.jar:c/d/e/l/d/j/d.class */
public final class C5332d extends CrashlyticsReport.AbstractC7781c {

    /* renamed from: a */
    public final C5384v<CrashlyticsReport.AbstractC7781c.AbstractC7783b> f18144a;

    /* renamed from: b */
    public final String f18145b;

    /* renamed from: c.d.e.l.d.j.d$b */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/j/d$b.class */
    public static final class C5334b extends CrashlyticsReport.AbstractC7781c.AbstractC7782a {

        /* renamed from: a */
        public C5384v<CrashlyticsReport.AbstractC7781c.AbstractC7783b> f18146a;

        /* renamed from: b */
        public String f18147b;

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7781c.AbstractC7782a
        /* renamed from: a */
        public CrashlyticsReport.AbstractC7781c.AbstractC7782a mo7604a(C5384v<CrashlyticsReport.AbstractC7781c.AbstractC7783b> vVar) {
            if (vVar != null) {
                this.f18146a = vVar;
                return this;
            }
            throw new NullPointerException("Null files");
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7781c.AbstractC7782a
        /* renamed from: a */
        public CrashlyticsReport.AbstractC7781c.AbstractC7782a mo7603a(String str) {
            this.f18147b = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7781c.AbstractC7782a
        /* renamed from: a */
        public CrashlyticsReport.AbstractC7781c mo7605a() {
            String str = "";
            if (this.f18146a == null) {
                str = " files";
            }
            if (str.isEmpty()) {
                return new C5332d(this.f18146a, this.f18147b);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }
    }

    public C5332d(C5384v<CrashlyticsReport.AbstractC7781c.AbstractC7783b> vVar, String str) {
        this.f18144a = vVar;
        this.f18145b = str;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7781c
    /* renamed from: a */
    public C5384v<CrashlyticsReport.AbstractC7781c.AbstractC7783b> mo7608a() {
        return this.f18144a;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7781c
    /* renamed from: b */
    public String mo7607b() {
        return this.f18145b;
    }

    public boolean equals(Object obj) {
        String str;
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport.AbstractC7781c)) {
            return false;
        }
        CrashlyticsReport.AbstractC7781c cVar = (CrashlyticsReport.AbstractC7781c) obj;
        if (!this.f18144a.equals(cVar.mo7608a()) || ((str = this.f18145b) != null ? !str.equals(cVar.mo7607b()) : cVar.mo7607b() != null)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int hashCode = this.f18144a.hashCode();
        String str = this.f18145b;
        return ((hashCode ^ 1000003) * 1000003) ^ (str == null ? 0 : str.hashCode());
    }

    public String toString() {
        return "FilesPayload{files=" + this.f18144a + ", orgId=" + this.f18145b + "}";
    }
}
