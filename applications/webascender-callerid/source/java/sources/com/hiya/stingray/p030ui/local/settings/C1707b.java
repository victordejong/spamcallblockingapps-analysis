package com.hiya.stingray.p030ui.local.settings;

import android.content.Context;
import com.hiya.stingray.manager.e1;
import com.hiya.stingray.manager.o2;
import com.hiya.stingray.util.C1817g;
import com.hiya.stingray.util.p039g0.AbstractC1818c;
import kotlin.p;
import kotlin.s.b0;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.local.settings.b */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/settings/b.class */
public final class C1707b {

    /* renamed from: a */
    private final e1 f4778a;

    /* renamed from: b */
    private final o2 f4779b;

    public C1707b(e1 e1Var, o2 o2Var) {
        k.g(e1Var, "analyticsManager");
        k.g(o2Var, "deviceUserAccountManager");
        this.f4778a = e1Var;
        this.f4779b = o2Var;
    }

    /* renamed from: h */
    private final void m1278h(String str, String str2) {
        this.f4778a.f(b0.c(p.a(str, str2)));
    }

    /* renamed from: i */
    private final void m1277i(String str, String str2) {
        e1 e1Var = this.f4778a;
        AbstractC1818c.C1819a c1819a = new AbstractC1818c.C1819a();
        c1819a.m900h(str);
        c1819a.m894n(str2);
        e1Var.c("apply_setting", c1819a.m907a());
    }

    /* renamed from: a */
    public final void m1285a(Context context, boolean z) {
        k.g(context, "context");
        m1277i("fraud_calls", z ? "block" : "warn");
        String m918b = C1817g.m918b(this.f4779b, context);
        k.c(m918b, "AnalyticsUtil.getBlockCa…rAccountManager, context)");
        m1278h("block_calls", m918b);
    }

    /* renamed from: b */
    public final void m1284b(boolean z) {
        m1277i("other_incoming_calls", z ? "show_caller_id" : "do_nothing");
        String m917c = C1817g.m917c(this.f4779b);
        k.c(m917c, "AnalyticsUtil.getIdCalls…deviceUserAccountManager)");
        m1278h("id_calls", m917c);
    }

    /* renamed from: c */
    public final void m1283c(boolean z) {
        m1277i("outgoing_calls", z ? "show_caller_id" : "do_nothing");
        String m917c = C1817g.m917c(this.f4779b);
        k.c(m917c, "AnalyticsUtil.getIdCalls…deviceUserAccountManager)");
        m1278h("id_calls", m917c);
    }

    /* renamed from: d */
    public final void m1282d(Context context, boolean z) {
        k.g(context, "context");
        m1277i("private_calls", z ? "block" : "warn");
        String m918b = C1817g.m918b(this.f4779b, context);
        k.c(m918b, "AnalyticsUtil.getBlockCa…rAccountManager, context)");
        m1278h("block_calls", m918b);
    }

    /* renamed from: e */
    public final void m1281e(boolean z) {
        m1277i("saved_contacts", z ? "show_caller_id" : "do_nothing");
        String m917c = C1817g.m917c(this.f4779b);
        k.c(m917c, "AnalyticsUtil.getIdCalls…deviceUserAccountManager)");
        m1278h("id_calls", m917c);
    }

    /* renamed from: f */
    public final void m1280f(boolean z) {
        m1277i("screened_calls", z ? "show_caller_id" : "do_nothing");
    }

    /* renamed from: g */
    public final void m1279g(Context context, boolean z) {
        k.g(context, "context");
        m1277i("spam_calls", z ? "block" : "warn");
        String m918b = C1817g.m918b(this.f4779b, context);
        k.c(m918b, "AnalyticsUtil.getBlockCa…rAccountManager, context)");
        m1278h("block_calls", m918b);
    }
}
