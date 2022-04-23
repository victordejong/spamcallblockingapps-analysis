package com.hiya.stingray.p000ui.login.verification;

import com.hiya.stingray.manager.e1;
import com.hiya.stingray.util.C0153f;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.login.verification.i */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/login/verification/i.class */
public class C0070i {

    /* renamed from: a */
    private final e1 f126a;

    public C0070i(e1 e1Var) {
        k.g(e1Var, "analyticsManager");
        this.f126a = e1Var;
    }

    /* renamed from: a */
    public final void m1189a() {
        C0153f.m932a(this.f126a, "continue", "phone_entry");
    }

    /* renamed from: b */
    public final void m1188b() {
        C0153f.m932a(this.f126a, "continue", "select_welcome");
    }

    /* renamed from: c */
    public final void m1187c() {
        C0153f.m932a(this.f126a, "manage_billing", "select_welcome");
    }

    /* renamed from: d */
    public final void m1186d() {
        C0153f.m932a(this.f126a, "skip", "code_entry");
    }

    /* renamed from: e */
    public final void m1185e() {
        C0153f.m932a(this.f126a, "skip", "phone_entry");
    }

    /* renamed from: f */
    public final void m1184f() {
        C0153f.m932a(this.f126a, "verify", "code_entry");
    }

    /* renamed from: g */
    public final void m1183g() {
        C0153f.m930c(this.f126a, "code_entry", null, 2, null);
    }

    /* renamed from: h */
    public final void m1182h() {
        C0153f.m930c(this.f126a, "phone_entry", null, 2, null);
    }

    /* renamed from: i */
    public final void m1181i() {
        C0153f.m930c(this.f126a, "select_welcome", null, 2, null);
    }
}
