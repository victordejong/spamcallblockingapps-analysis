package com.hiya.stingray.p000ui.setting;

import com.hiya.stingray.manager.e1;
import com.hiya.stingray.util.C0153f;
import com.hiya.stingray.util.p009g0.AbstractC0156c;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.setting.b */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/setting/b.class */
public class C0108b {

    /* renamed from: a */
    private final e1 f236a;

    public C0108b(e1 e1Var) {
        k.g(e1Var, "analyticsManager");
        this.f236a = e1Var;
    }

    /* renamed from: a */
    public final void m1055a() {
        e1 e1Var = this.f236a;
        AbstractC0156c.C0157a b = AbstractC0156c.C0157a.m906b();
        b.m900h("cancel");
        b.m896l("verified_phone");
        e1Var.c("user_prompt_action", b.m907a());
    }

    /* renamed from: b */
    public final void m1054b() {
        e1 e1Var = this.f236a;
        AbstractC0156c.C0157a b = AbstractC0156c.C0157a.m906b();
        b.m900h("remove_phone");
        b.m895m("delete");
        e1Var.c("user_prompt_view", b.m907a());
    }

    /* renamed from: c */
    public final void m1053c() {
        e1 e1Var = this.f236a;
        AbstractC0156c.C0157a b = AbstractC0156c.C0157a.m906b();
        b.m900h("remove_phone");
        b.m896l("verified_phone");
        e1Var.c("user_prompt_action", b.m907a());
    }

    /* renamed from: d */
    public final void m1052d() {
        C0153f.m930c(this.f236a, "my_phone_number", null, 2, null);
    }
}
