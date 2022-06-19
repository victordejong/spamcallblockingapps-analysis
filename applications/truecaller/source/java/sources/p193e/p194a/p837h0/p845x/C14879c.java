package p193e.p194a.p837h0.p845x;

import e.m.e.d0.b;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.a.h0.x.c */
/* loaded from: classes9-dex2jar.jar:e/a/h0/x/c.class */
public class C14879c {
    @b("id")

    /* renamed from: a */
    public String f42537a;
    @b("value")

    /* renamed from: b */
    public String f42538b;
    @b("label")

    /* renamed from: c */
    public String f42539c;
    @b("rule")

    /* renamed from: d */
    public String f42540d;
    @b("type")

    /* renamed from: e */
    public String f42541e;
    @b("source")

    /* renamed from: f */
    public String f42542f;
    @b("ownership")

    /* renamed from: g */
    public Integer f42543g;
    @b("categoryId")

    /* renamed from: h */
    public Long f42544h;
    @b("version")

    /* renamed from: i */
    public Integer f42545i;
    @b("associatedCallInfo")

    /* renamed from: j */
    public C14878b f42546j;

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("Filter{id='");
        C22128a.m8678P0(m8728C, this.f42537a, '\'', ", rule='");
        C22128a.m8678P0(m8728C, this.f42540d, '\'', ", type='");
        C22128a.m8678P0(m8728C, this.f42541e, '\'', ", source='");
        C22128a.m8678P0(m8728C, this.f42542f, '\'', ", categoryId='");
        m8728C.append(this.f42544h);
        m8728C.append('\'');
        m8728C.append(", version='");
        m8728C.append(this.f42545i);
        m8728C.append('\'');
        m8728C.append(", associatedCallInfo='");
        m8728C.append(this.f42546j);
        m8728C.append('\'');
        m8728C.append('}');
        return m8728C.toString();
    }
}
