package com.hiya.stingray.p000ui.onboarding;

import com.hiya.stingray.manager.a3;
import com.hiya.stingray.manager.e1;
import com.hiya.stingray.util.C0098f;
import java.util.Locale;
import java.util.Objects;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.onboarding.c */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/onboarding/c.class */
public final class C0020c {

    /* renamed from: a */
    private final e1 f21a;

    public C0020c(e1 e1Var) {
        k.g(e1Var, "analyticsManager");
        this.f21a = e1Var;
    }

    /* renamed from: a */
    public final void m1254a(a3.b bVar) {
        k.g(bVar, "type");
        e1 e1Var = this.f21a;
        String name = bVar.name();
        Locale locale = Locale.ROOT;
        k.c(locale, "Locale.ROOT");
        Objects.requireNonNull(name, "null cannot be cast to non-null type java.lang.String");
        String lowerCase = name.toLowerCase(locale);
        k.e(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
        C0098f.m1010b(e1Var, "permissions_onboarding", lowerCase);
    }
}
