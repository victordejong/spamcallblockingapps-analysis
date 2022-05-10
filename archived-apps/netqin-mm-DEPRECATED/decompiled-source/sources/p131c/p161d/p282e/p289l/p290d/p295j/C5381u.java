package p131c.p161d.p282e.p289l.p290d.p295j;

import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
/* renamed from: c.d.e.l.d.j.u */
/* loaded from: classes2-dex2jar.jar:c/d/e/l/d/j/u.class */
public final class C5381u extends CrashlyticsReport.AbstractC7785d.AbstractC7814f {

    /* renamed from: a */
    public final String f18295a;

    /* renamed from: c.d.e.l.d.j.u$b */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/j/u$b.class */
    public static final class C5383b extends CrashlyticsReport.AbstractC7785d.AbstractC7814f.AbstractC7815a {

        /* renamed from: a */
        public String f18296a;

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7814f.AbstractC7815a
        /* renamed from: a */
        public CrashlyticsReport.AbstractC7785d.AbstractC7814f.AbstractC7815a mo7414a(String str) {
            if (str != null) {
                this.f18296a = str;
                return this;
            }
            throw new NullPointerException("Null identifier");
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7814f.AbstractC7815a
        /* renamed from: a */
        public CrashlyticsReport.AbstractC7785d.AbstractC7814f mo7415a() {
            String str = "";
            if (this.f18296a == null) {
                str = " identifier";
            }
            if (str.isEmpty()) {
                return new C5381u(this.f18296a);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }
    }

    public C5381u(String str) {
        this.f18295a = str;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7814f
    /* renamed from: a */
    public String mo7417a() {
        return this.f18295a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof CrashlyticsReport.AbstractC7785d.AbstractC7814f) {
            return this.f18295a.equals(((CrashlyticsReport.AbstractC7785d.AbstractC7814f) obj).mo7417a());
        }
        return false;
    }

    public int hashCode() {
        return this.f18295a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "User{identifier=" + this.f18295a + "}";
    }
}
