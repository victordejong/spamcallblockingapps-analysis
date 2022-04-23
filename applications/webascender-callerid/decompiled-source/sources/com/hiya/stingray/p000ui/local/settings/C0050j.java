package com.hiya.stingray.p000ui.local.settings;

import com.hiya.stingray.manager.e1;
import com.hiya.stingray.t.a1;
import com.hiya.stingray.util.p009g0.AbstractC0156c;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.local.settings.j */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/settings/j.class */
public final class C0050j {

    /* renamed from: a */
    private final e1 f102a;

    public C0050j(e1 e1Var) {
        k.g(e1Var, "analyticsManager");
        this.f102a = e1Var;
    }

    /* renamed from: a */
    private final void m1263a(String str, boolean z) {
        e1 e1Var = this.f102a;
        AbstractC0156c.C0157a b = AbstractC0156c.C0157a.m906b();
        b.m900h(str);
        b.m894n(z ? "on" : "off");
        e1Var.c("apply_setting", b.m907a());
    }

    /* renamed from: b */
    private final void m1262b(String str, String str2) {
        e1 e1Var = this.f102a;
        AbstractC0156c.C0157a b = AbstractC0156c.C0157a.m906b();
        b.m896l("inline");
        b.m900h(str);
        b.m897k(str2);
        e1Var.c("navigate", b.m907a());
    }

    /* renamed from: c */
    public final void m1261c(a1 a1Var, String str) {
        k.g(a1Var, "settingItem");
        String a = a1Var.a();
        if (a == null) {
            return;
        }
        if (a1Var.g()) {
            Boolean f = a1Var.f();
            if (f != null) {
                m1263a(a, f.booleanValue());
            }
        } else if (str != null) {
            m1262b(a, str);
        }
    }
}
