package com.hiya.stingray.p030ui.setting;

import com.hiya.stingray.manager.e1;
import com.hiya.stingray.util.C1815f;
import com.hiya.stingray.util.p039g0.AbstractC1818c;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.setting.b */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/setting/b.class */
public class C1770b {

    /* renamed from: a */
    private final e1 f4915a;

    public C1770b(e1 e1Var) {
        k.g(e1Var, "analyticsManager");
        this.f4915a = e1Var;
    }

    /* renamed from: a */
    public final void m1055a() {
        e1 e1Var = this.f4915a;
        AbstractC1818c.C1819a m906b = AbstractC1818c.C1819a.m906b();
        m906b.m900h("cancel");
        m906b.m896l("verified_phone");
        e1Var.c("user_prompt_action", m906b.m907a());
    }

    /* renamed from: b */
    public final void m1054b() {
        e1 e1Var = this.f4915a;
        AbstractC1818c.C1819a m906b = AbstractC1818c.C1819a.m906b();
        m906b.m900h("remove_phone");
        m906b.m895m("delete");
        e1Var.c("user_prompt_view", m906b.m907a());
    }

    /* renamed from: c */
    public final void m1053c() {
        e1 e1Var = this.f4915a;
        AbstractC1818c.C1819a m906b = AbstractC1818c.C1819a.m906b();
        m906b.m900h("remove_phone");
        m906b.m896l("verified_phone");
        e1Var.c("user_prompt_action", m906b.m907a());
    }

    /* renamed from: d */
    public final void m1052d() {
        C1815f.m930c(this.f4915a, "my_phone_number", null, 2, null);
    }
}
