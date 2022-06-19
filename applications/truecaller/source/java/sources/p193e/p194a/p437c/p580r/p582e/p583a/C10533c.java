package p193e.p194a.p437c.p580r.p582e.p583a;

import e.q.a.d.c;
import java.util.Date;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.c.r.e.a.c */
/* loaded from: classes10-dex2jar.jar:e/a/c/r/e/a/c.class */
public final class C10533c extends c {

    /* renamed from: a */
    public long f31432a;

    /* renamed from: c */
    public String f31434c;

    /* renamed from: d */
    public String f31435d;

    /* renamed from: e */
    public String f31436e;

    /* renamed from: f */
    public float f31437f;

    /* renamed from: g */
    public boolean f31438g;

    /* renamed from: h */
    public long f31439h;

    /* renamed from: i */
    public Date f31440i;

    /* renamed from: j */
    public boolean f31441j;

    /* renamed from: b */
    public Date f31433b = new Date();

    /* renamed from: k */
    public String f31442k = "";

    public C10533c() {
        super((String) null, (String) null, (String) null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C10533c(String str, String str2, String str3) {
        super(str, str2, str3);
        C22128a.m8703I0(str, "address", str2, "accountType", str3, "accountNumber");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C10533c(String str, String str2, String str3, String str4) {
        super(str, str2, str3, str4);
        C22128a.m8699J0(str, "address", str2, "accountType", str3, "accountNumber", str4, "normalizedName");
    }

    /* renamed from: a */
    public Date m25817a() {
        return m25817a();
    }

    /* renamed from: b */
    public void m25816b(c cVar) {
        l.e(cVar, "accountModel");
    }

    /* renamed from: c */
    public String m25815c() {
        return this.f31436e;
    }

    /* renamed from: d */
    public String m25814d() {
        return this.f31435d;
    }

    /* renamed from: e */
    public String m25813e() {
        return this.f31434c;
    }

    /* renamed from: f */
    public float m25812f() {
        return this.f31437f;
    }

    /* renamed from: g */
    public long m25811g() {
        return this.f31432a;
    }

    /* renamed from: h */
    public String m25810h() {
        return this.f31442k;
    }

    /* renamed from: i */
    public long m25809i() {
        return this.f31439h;
    }

    /* renamed from: j */
    public Date m25808j() {
        return this.f31440i;
    }

    /* renamed from: k */
    public long m25807k() {
        long j = this.f31439h + 1;
        this.f31439h = j;
        return j;
    }

    /* renamed from: l */
    public boolean m25806l() {
        return this.f31438g;
    }

    /* renamed from: m */
    public boolean m25805m() {
        return this.f31441j;
    }

    /* renamed from: n */
    public void m25804n(String str) {
        this.f31435d = str;
    }

    /* renamed from: o */
    public void m25803o(boolean z) {
        this.f31438g = z;
    }

    /* renamed from: p */
    public void m25802p(c cVar) {
        l.e(cVar, "accountModel");
    }

    /* renamed from: q */
    public void m25801q(long j) {
        this.f31432a = j;
    }

    /* renamed from: r */
    public void m25800r(String str) {
        l.e(str, "s");
        this.f31442k = str;
    }

    /* renamed from: s */
    public void m25799s(long j) {
        this.f31439h = j;
    }

    /* renamed from: t */
    public final void m25798t(Date date) {
        l.e(date, "<set-?>");
        this.f31433b = date;
    }
}
