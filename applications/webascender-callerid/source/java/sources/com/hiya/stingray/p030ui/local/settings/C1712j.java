package com.hiya.stingray.p030ui.local.settings;

import com.hiya.stingray.manager.e1;
import com.hiya.stingray.t.a1;
import com.hiya.stingray.util.p039g0.AbstractC1818c;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.local.settings.j */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/settings/j.class */
public final class C1712j {

    /* renamed from: a */
    private final e1 f4781a;

    public C1712j(e1 e1Var) {
        k.g(e1Var, "analyticsManager");
        this.f4781a = e1Var;
    }

    /* renamed from: a */
    private final void m1263a(String str, boolean z) {
        e1 e1Var = this.f4781a;
        AbstractC1818c.C1819a m906b = AbstractC1818c.C1819a.m906b();
        m906b.m900h(str);
        m906b.m894n(z ? "on" : "off");
        e1Var.c("apply_setting", m906b.m907a());
    }

    /* renamed from: b */
    private final void m1262b(String str, String str2) {
        e1 e1Var = this.f4781a;
        AbstractC1818c.C1819a m906b = AbstractC1818c.C1819a.m906b();
        m906b.m896l("inline");
        m906b.m900h(str);
        m906b.m897k(str2);
        e1Var.c("navigate", m906b.m907a());
    }

    /* renamed from: c */
    public final void m1261c(a1 a1Var, String str) {
        k.g(a1Var, "settingItem");
        String a = a1Var.a();
        if (a != null) {
            if (!a1Var.g()) {
                if (str == null) {
                    return;
                }
                m1262b(a, str);
                return;
            }
            Boolean f = a1Var.f();
            if (f == null) {
                return;
            }
            m1263a(a, f.booleanValue());
        }
    }
}
