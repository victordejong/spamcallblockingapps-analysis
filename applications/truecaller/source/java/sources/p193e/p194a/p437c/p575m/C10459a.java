package p193e.p194a.p437c.p575m;

import java.util.Locale;
import javax.inject.Inject;
import org.json.JSONObject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p524b.AbstractC9686e;
import p193e.p194a.p437c.p524b.AbstractC9691j;
import p193e.p194a.p437c.p552i.p554b.AbstractC10276a;
import s1.f0.r;
import s1.g;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.c.m.a */
/* loaded from: classes10-dex2jar.jar:e/a/c/m/a.class */
public final class C10459a implements AbstractC10461b {

    /* renamed from: a */
    public final g f31119a = C25225a.m3978P1(new C10460a());

    /* renamed from: b */
    public final AbstractC9686e f31120b;

    /* renamed from: c */
    public final AbstractC10276a f31121c;

    /* renamed from: d */
    public final AbstractC9691j f31122d;

    /* renamed from: e.a.c.m.a$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/m/a$a.class */
    public static final class C10460a extends m implements a<String> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10460a() {
            super(0);
            C10459a.this = r4;
        }

        public Object invoke() {
            String str = null;
            if (C10459a.this.f31122d.mo27243q()) {
                String mo26499a = C10459a.this.f31121c.mo26499a();
                str = null;
                if (mo26499a != null) {
                    String mo27306g = C10459a.this.f31120b.mo27306g();
                    try {
                        JSONObject jSONObject = new JSONObject(mo26499a);
                        if (r.p(mo27306g)) {
                            str = null;
                        } else {
                            Locale locale = Locale.US;
                            l.d(locale, "Locale.US");
                            String lowerCase = mo27306g.toLowerCase(locale);
                            l.d(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
                            str = jSONObject.getString(lowerCase);
                        }
                    } catch (Exception e) {
                        str = null;
                    }
                }
            }
            return str;
        }
    }

    @Inject
    public C10459a(AbstractC9686e abstractC9686e, AbstractC10276a abstractC10276a, AbstractC9691j abstractC9691j) {
        l.e(abstractC9686e, "insightsEnvironmentHelper");
        l.e(abstractC10276a, "firebaseSeedStore");
        l.e(abstractC9691j, "insightsStatusProvider");
        this.f31120b = abstractC9686e;
        this.f31121c = abstractC10276a;
        this.f31122d = abstractC9691j;
    }

    @Override // p193e.p194a.p437c.p575m.AbstractC10461b
    /* renamed from: a */
    public String mo26129a() {
        return (String) this.f31119a.getValue();
    }
}
