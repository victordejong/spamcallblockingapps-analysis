package com.hiya.stingray.util;

import com.hiya.stingray.manager.e1;
import com.hiya.stingray.util.p009g0.AbstractC0156c;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.util.f */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/util/f.class */
public final class C0153f {
    /* renamed from: a */
    public static final void m932a(e1 e1Var, String str, String str2) {
        k.g(e1Var, "$this$reportUserActionEvent");
        k.g(str, "nameValue");
        k.g(str2, "screen");
        AbstractC0156c.C0157a b = AbstractC0156c.C0157a.m906b();
        b.m900h(str);
        b.m897k(str2);
        e1Var.c("user_action", b.m907a());
    }

    /* renamed from: b */
    public static final void m931b(e1 e1Var, String str, String str2) {
        k.g(e1Var, "$this$reportViewScreen");
        k.g(str, "name");
        AbstractC0156c.C0157a b = AbstractC0156c.C0157a.m906b();
        b.m900h(str);
        if (str2 != null) {
            b.m895m(str2);
        }
        e1Var.c("view_screen", b.m907a());
    }

    /* renamed from: c */
    public static /* synthetic */ void m930c(e1 e1Var, String str, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = null;
        }
        m931b(e1Var, str, str2);
    }
}
