package com.hiya.stingray.p000ui.local.search;

import com.hiya.stingray.manager.e1;
import com.hiya.stingray.t.m0;
import com.hiya.stingray.t.n0;
import com.hiya.stingray.t.o0;
import com.hiya.stingray.util.p009g0.AbstractC0156c;
import kotlin.w.c.g;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.local.search.f */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/search/f.class */
public final class C0037f {

    /* renamed from: b */
    public static final C0038a f72b = new C0038a(null);

    /* renamed from: a */
    private final e1 f73a;

    /* renamed from: com.hiya.stingray.ui.local.search.f$a */
    /* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/search/f$a.class */
    public static final class C0038a {
        private C0038a() {
        }

        public /* synthetic */ C0038a(g gVar) {
            this();
        }

        /* renamed from: a */
        public final AbstractC0156c m1296a(n0 n0Var) {
            k.g(n0Var, "identityData");
            String str = n0Var.e() == o0.CONTACT ? "saved_contact" : "recent_caller";
            AbstractC0156c.C0157a b = AbstractC0156c.C0157a.m906b();
            b.m896l("search_result");
            b.m895m(str);
            b.m897k("search_contacts_and_recents");
            AbstractC0156c a = b.m907a();
            k.c(a, "Parameters.Builder.getBu…CONTACTS_RECENTS).build()");
            return a;
        }
    }

    public C0037f(e1 e1Var) {
        k.g(e1Var, "analyticsManager");
        this.f73a = e1Var;
    }

    /* renamed from: a */
    private final String m1309a(n0 n0Var) {
        return n0Var.e() == o0.CONTACT ? "saved_contact" : n0Var.f() == m0.BUSINESS ? "identified_business" : n0Var.f() == m0.PERSON ? "identified_person" : "unknown";
    }

    /* renamed from: h */
    private final void m1302h(String str) {
        e1 e1Var = this.f73a;
        AbstractC0156c.C0157a b = AbstractC0156c.C0157a.m906b();
        b.m896l("search_result");
        b.m895m(str);
        e1Var.c("make_call", b.m907a());
    }

    /* renamed from: k */
    private final void m1299k(String str) {
        e1 e1Var = this.f73a;
        AbstractC0156c.C0157a b = AbstractC0156c.C0157a.m906b();
        b.m903e(str);
        b.m897k("search");
        e1Var.c("select_content", b.m907a());
    }

    /* renamed from: b */
    public final void m1308b() {
        e1 e1Var = this.f73a;
        AbstractC0156c.C0157a b = AbstractC0156c.C0157a.m906b();
        b.m900h("change_location");
        b.m897k("search");
        e1Var.c("user_action", b.m907a());
    }

    /* renamed from: c */
    public final void m1307c() {
        e1 e1Var = this.f73a;
        AbstractC0156c.C0157a b = AbstractC0156c.C0157a.m906b();
        b.m900h("enable_local");
        b.m897k("search");
        e1Var.c("user_action", b.m907a());
    }

    /* renamed from: d */
    public final void m1306d(boolean z) {
        e1 e1Var = this.f73a;
        AbstractC0156c.C0157a b = AbstractC0156c.C0157a.m906b();
        b.m900h(z ? "required_permission_allow" : "required_permission_deny");
        b.m896l("required_permission");
        b.m897k("search");
        e1Var.c("user_prompt_action", b.m907a());
    }

    /* renamed from: e */
    public final void m1305e(n0 n0Var) {
        k.g(n0Var, "identityData");
        m1302h(m1309a(n0Var));
    }

    /* renamed from: f */
    public final void m1304f() {
        m1302h("local_business");
    }

    /* renamed from: g */
    public final void m1303g() {
        e1 e1Var = this.f73a;
        AbstractC0156c.C0157a b = AbstractC0156c.C0157a.m906b();
        b.m895m("reverse_phone");
        b.m897k("search");
        e1Var.c("search", b.m907a());
    }

    /* renamed from: i */
    public final void m1301i(n0 n0Var) {
        k.g(n0Var, "item");
        m1299k(m1309a(n0Var));
    }

    /* renamed from: j */
    public final void m1300j() {
        m1299k("local_business");
    }

    /* renamed from: l */
    public final void m1298l() {
        e1 e1Var = this.f73a;
        AbstractC0156c.C0157a b = AbstractC0156c.C0157a.m906b();
        b.m900h("required_permission");
        b.m897k("permission_prompt");
        e1Var.c("user_prompt_view", b.m907a());
    }

    /* renamed from: m */
    public final void m1297m() {
        e1 e1Var = this.f73a;
        AbstractC0156c.C0157a b = AbstractC0156c.C0157a.m906b();
        b.m900h("search");
        e1Var.c("view_screen", b.m907a());
    }
}
