package com.hiya.stingray.p030ui.local.search;

import com.hiya.stingray.manager.e1;
import com.hiya.stingray.t.m0;
import com.hiya.stingray.t.n0;
import com.hiya.stingray.t.o0;
import com.hiya.stingray.util.p039g0.AbstractC1818c;
import kotlin.w.c.g;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.local.search.f */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/search/f.class */
public final class C1699f {

    /* renamed from: b */
    public static final C1700a f4751b = new C1700a(null);

    /* renamed from: a */
    private final e1 f4752a;

    /* renamed from: com.hiya.stingray.ui.local.search.f$a */
    /* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/search/f$a.class */
    public static final class C1700a {
        private C1700a() {
        }

        public /* synthetic */ C1700a(g gVar) {
            this();
        }

        /* renamed from: a */
        public final AbstractC1818c m1296a(n0 n0Var) {
            k.g(n0Var, "identityData");
            String str = n0Var.e() == o0.CONTACT ? "saved_contact" : "recent_caller";
            AbstractC1818c.C1819a m906b = AbstractC1818c.C1819a.m906b();
            m906b.m896l("search_result");
            m906b.m895m(str);
            m906b.m897k("search_contacts_and_recents");
            AbstractC1818c m907a = m906b.m907a();
            k.c(m907a, "Parameters.Builder.getBu…CONTACTS_RECENTS).build()");
            return m907a;
        }
    }

    public C1699f(e1 e1Var) {
        k.g(e1Var, "analyticsManager");
        this.f4752a = e1Var;
    }

    /* renamed from: a */
    private final String m1309a(n0 n0Var) {
        return n0Var.e() == o0.CONTACT ? "saved_contact" : n0Var.f() == m0.BUSINESS ? "identified_business" : n0Var.f() == m0.PERSON ? "identified_person" : "unknown";
    }

    /* renamed from: h */
    private final void m1302h(String str) {
        e1 e1Var = this.f4752a;
        AbstractC1818c.C1819a m906b = AbstractC1818c.C1819a.m906b();
        m906b.m896l("search_result");
        m906b.m895m(str);
        e1Var.c("make_call", m906b.m907a());
    }

    /* renamed from: k */
    private final void m1299k(String str) {
        e1 e1Var = this.f4752a;
        AbstractC1818c.C1819a m906b = AbstractC1818c.C1819a.m906b();
        m906b.m903e(str);
        m906b.m897k("search");
        e1Var.c("select_content", m906b.m907a());
    }

    /* renamed from: b */
    public final void m1308b() {
        e1 e1Var = this.f4752a;
        AbstractC1818c.C1819a m906b = AbstractC1818c.C1819a.m906b();
        m906b.m900h("change_location");
        m906b.m897k("search");
        e1Var.c("user_action", m906b.m907a());
    }

    /* renamed from: c */
    public final void m1307c() {
        e1 e1Var = this.f4752a;
        AbstractC1818c.C1819a m906b = AbstractC1818c.C1819a.m906b();
        m906b.m900h("enable_local");
        m906b.m897k("search");
        e1Var.c("user_action", m906b.m907a());
    }

    /* renamed from: d */
    public final void m1306d(boolean z) {
        e1 e1Var = this.f4752a;
        AbstractC1818c.C1819a m906b = AbstractC1818c.C1819a.m906b();
        m906b.m900h(z ? "required_permission_allow" : "required_permission_deny");
        m906b.m896l("required_permission");
        m906b.m897k("search");
        e1Var.c("user_prompt_action", m906b.m907a());
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
        e1 e1Var = this.f4752a;
        AbstractC1818c.C1819a m906b = AbstractC1818c.C1819a.m906b();
        m906b.m895m("reverse_phone");
        m906b.m897k("search");
        e1Var.c("search", m906b.m907a());
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
        e1 e1Var = this.f4752a;
        AbstractC1818c.C1819a m906b = AbstractC1818c.C1819a.m906b();
        m906b.m900h("required_permission");
        m906b.m897k("permission_prompt");
        e1Var.c("user_prompt_view", m906b.m907a());
    }

    /* renamed from: m */
    public final void m1297m() {
        e1 e1Var = this.f4752a;
        AbstractC1818c.C1819a m906b = AbstractC1818c.C1819a.m906b();
        m906b.m900h("search");
        e1Var.c("view_screen", m906b.m907a());
    }
}
