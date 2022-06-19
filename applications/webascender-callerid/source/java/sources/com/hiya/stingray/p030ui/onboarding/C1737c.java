package com.hiya.stingray.p030ui.onboarding;

import com.appsflyer.internal.referrer.Payload;
import com.hiya.stingray.manager.d3;
import com.hiya.stingray.manager.e1;
import com.hiya.stingray.util.C1815f;
import java.util.Locale;
import java.util.Objects;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.onboarding.c */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/onboarding/c.class */
public final class C1737c {

    /* renamed from: a */
    private final e1 f4813a;

    public C1737c(e1 e1Var) {
        k.g(e1Var, "analyticsManager");
        this.f4813a = e1Var;
    }

    /* renamed from: a */
    public final void m1175a(d3.b bVar) {
        k.g(bVar, Payload.TYPE);
        e1 e1Var = this.f4813a;
        String name = bVar.name();
        Locale locale = Locale.ROOT;
        k.c(locale, "Locale.ROOT");
        Objects.requireNonNull(name, "null cannot be cast to non-null type java.lang.String");
        String lowerCase = name.toLowerCase(locale);
        k.e(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
        C1815f.m931b(e1Var, "permissions_onboarding", lowerCase);
    }
}
