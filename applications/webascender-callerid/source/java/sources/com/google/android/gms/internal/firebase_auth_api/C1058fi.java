package com.google.android.gms.internal.firebase_auth_api;

import android.content.Context;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.C0931r;
import com.google.android.gms.internal.firebase-auth-api.bn;
import com.google.android.gms.internal.firebase-auth-api.bo;
import com.google.android.gms.internal.firebase-auth-api.en;
import com.google.android.gms.internal.firebase-auth-api.fi;
import com.google.android.gms.internal.firebase-auth-api.fo;
import com.google.android.gms.internal.firebase-auth-api.ho;
import com.google.android.gms.internal.firebase-auth-api.io;
import com.google.android.gms.internal.firebase-auth-api.ml;
import com.google.android.gms.internal.firebase-auth-api.mm;
import com.google.android.gms.internal.firebase-auth-api.ol;
import com.google.android.gms.internal.firebase-auth-api.om;
import com.google.android.gms.internal.firebase-auth-api.oo;
import com.google.android.gms.internal.firebase-auth-api.qm;
import com.google.android.gms.internal.firebase-auth-api.sn;
import com.google.android.gms.internal.firebase-auth-api.vn;
import com.google.android.gms.internal.firebase-auth-api.xm;
import com.google.android.gms.internal.firebase-auth-api.yj;
import com.google.android.gms.internal.firebase-auth-api.zn;
import com.google.firebase.auth.a;
import com.google.firebase.auth.d;
import com.google.firebase.auth.i0;
import com.google.firebase.auth.internal.j;
import com.google.firebase.auth.x;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.fi */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/fi.class */
public final class C1058fi {

    /* renamed from: a */
    private final ol f3702a;

    public C1058fi(ol olVar) {
        C0931r.m3308k(olVar);
        this.f3702a = (AbstractC1167ol) olVar;
    }

    /* renamed from: h */
    static /* synthetic */ void m2895h(fi fiVar, ho hoVar, yj yjVar, ml mlVar) {
        if (!hoVar.k()) {
            fiVar.m2888o(new en(hoVar.f(), hoVar.b(), Long.valueOf(hoVar.h()), "Bearer"), hoVar.e(), hoVar.d(), Boolean.valueOf(hoVar.i()), hoVar.p(), yjVar, mlVar);
            return;
        }
        yjVar.m2303n(new jg(hoVar.a() ? new Status(17012) : j.a(hoVar.j()), hoVar.p(), hoVar.c(), hoVar.l()));
    }

    /* renamed from: i */
    static /* synthetic */ void m2894i(fi fiVar, yj yjVar, en enVar, vn vnVar, ml mlVar) {
        C0931r.m3308k(yjVar);
        C0931r.m3308k(enVar);
        C0931r.m3308k(vnVar);
        C0931r.m3308k(mlVar);
        ((C1058fi) fiVar).f3702a.m2663g(new um(enVar.B1()), new rg(fiVar, mlVar, yjVar, enVar, vnVar));
    }

    /* renamed from: k */
    static /* synthetic */ void m2892k(fi fiVar, yj yjVar, en enVar, xm xmVar, vn vnVar, ml mlVar) {
        C0931r.m3308k(yjVar);
        C0931r.m3308k(enVar);
        C0931r.m3308k(xmVar);
        C0931r.m3308k(vnVar);
        C0931r.m3308k(mlVar);
        ((C1058fi) fiVar).f3702a.m2662h(vnVar, new sg(fiVar, vnVar, xmVar, yjVar, enVar, mlVar));
    }

    /* renamed from: m */
    private final void m2890m(String str, nl<en> nlVar) {
        C0931r.m3308k(nlVar);
        C0931r.m3312g(str);
        en G1 = en.G1(str);
        if (G1.y1()) {
            nlVar.a(G1);
            return;
        }
        this.f3702a.m2669a(new tm(G1.A1()), new ei(this, nlVar));
    }

    /* renamed from: n */
    public final void m2889n(mm mmVar, yj yjVar) {
        C0931r.m3308k(mmVar);
        C0931r.m3308k(yjVar);
        this.f3702a.m2655o(mmVar, new qg(this, yjVar));
    }

    /* renamed from: o */
    public final void m2888o(en enVar, String str, String str2, Boolean bool, i0 i0Var, yj yjVar, ml mlVar) {
        C0931r.m3308k(enVar);
        C0931r.m3308k(mlVar);
        C0931r.m3308k(yjVar);
        this.f3702a.m2663g(new um(enVar.B1()), new tg(this, mlVar, str2, str, bool, i0Var, yjVar, enVar));
    }

    /* renamed from: p */
    private final void m2887p(bn bnVar, yj yjVar) {
        C0931r.m3308k(bnVar);
        C0931r.m3308k(yjVar);
        this.f3702a.m2660j(bnVar, new xh(this, yjVar));
    }

    /* renamed from: A */
    public final void m2918A(d dVar, yj yjVar) {
        C0931r.m3308k(dVar);
        C0931r.m3308k(yjVar);
        if (dVar.F1()) {
            m2890m(dVar.E1(), new pg(this, dVar, yjVar));
        } else {
            m2889n(new mm(dVar, (String) null), yjVar);
        }
    }

    /* renamed from: B */
    public final void m2917B(String str, String str2, yj yjVar) {
        C0931r.m3312g(str);
        C0931r.m3308k(yjVar);
        this.f3702a.m2661i(new im(str, str2), new ug(this, yjVar));
    }

    /* renamed from: C */
    public final void m2916C(String str, a aVar, String str2, yj yjVar) {
        C0931r.m3312g(str);
        C0931r.m3308k(yjVar);
        bn bnVar = new bn(aVar.G1());
        bnVar.b(str);
        bnVar.d(aVar);
        bnVar.e(str2);
        this.f3702a.m2660j(bnVar, new vg(this, yjVar));
    }

    /* renamed from: D */
    public final void m2915D(String str, a aVar, yj yjVar) {
        C0931r.m3312g(str);
        C0931r.m3308k(yjVar);
        bn bnVar = new bn(4);
        bnVar.c(str);
        if (aVar != null) {
            bnVar.d(aVar);
        }
        m2887p(bnVar, yjVar);
    }

    /* renamed from: E */
    public final void m2914E(String str, String str2, yj yjVar) {
        C0931r.m3312g(str);
        C0931r.m3308k(yjVar);
        this.f3702a.m2664f(new pn(str, (String) null, str2), new wg(this, yjVar));
    }

    /* renamed from: F */
    public final void m2913F(String str, String str2, String str3, yj yjVar) {
        C0931r.m3312g(str);
        C0931r.m3312g(str2);
        C0931r.m3308k(yjVar);
        this.f3702a.m2664f(new pn(str, str2, str3), new yg(this, yjVar));
    }

    /* renamed from: G */
    public final void m2912G(sn snVar, yj yjVar) {
        C0931r.m3312g(snVar.y1());
        C0931r.m3308k(yjVar);
        this.f3702a.m2659k(snVar, new zg(this, yjVar));
    }

    /* renamed from: H */
    public final void m2911H(Context context, oo ooVar, yj yjVar) {
        C0931r.m3308k(ooVar);
        C0931r.m3308k(yjVar);
        this.f3702a.m2658l(null, ooVar, new ah(this, yjVar));
    }

    /* renamed from: I */
    public final void m2910I(String str, String str2, String str3, yj yjVar) {
        C0931r.m3312g(str);
        C0931r.m3312g(str2);
        C0931r.m3312g(str3);
        C0931r.m3308k(yjVar);
        m2890m(str3, new bh(this, str, str2, yjVar));
    }

    /* renamed from: J */
    public final void m2909J(Context context, String str, oo ooVar, yj yjVar) {
        C0931r.m3312g(str);
        C0931r.m3308k(ooVar);
        C0931r.m3308k(yjVar);
        m2890m(str, new dh(this, ooVar, (Context) null, yjVar));
    }

    /* renamed from: K */
    public final void m2908K(String str, fo foVar, yj yjVar) {
        C0931r.m3312g(str);
        C0931r.m3308k(foVar);
        C0931r.m3308k(yjVar);
        m2890m(str, new fh(this, foVar, yjVar));
    }

    /* renamed from: L */
    public final void m2907L(String str, yj yjVar) {
        C0931r.m3312g(str);
        C0931r.m3308k(yjVar);
        m2890m(str, new hh(this, yjVar));
    }

    /* renamed from: M */
    public final void m2906M(String str, String str2, yj yjVar) {
        C0931r.m3312g(str);
        C0931r.m3312g(str2);
        C0931r.m3308k(yjVar);
        m2890m(str2, new jh(this, str, yjVar));
    }

    /* renamed from: N */
    public final void m2905N(String str, String str2, yj yjVar) {
        C0931r.m3312g(str);
        C0931r.m3312g(str2);
        C0931r.m3308k(yjVar);
        m2890m(str, new lh(this, str2, yjVar));
    }

    /* renamed from: O */
    public final void m2904O(zn znVar, yj yjVar) {
        C0931r.m3308k(znVar);
        C0931r.m3308k(yjVar);
        this.f3702a.m2654p(znVar, new mh(this, yjVar));
    }

    /* renamed from: P */
    public final void m2903P(Context context, om omVar, String str, yj yjVar) {
        C0931r.m3308k(omVar);
        C0931r.m3308k(yjVar);
        m2890m(str, new ph(this, omVar, (Context) null, yjVar));
    }

    /* renamed from: a */
    public final void m2902a(Context context, qm qmVar, yj yjVar) {
        C0931r.m3308k(qmVar);
        C0931r.m3308k(yjVar);
        this.f3702a.m2650t(null, qmVar, new qh(this, yjVar));
    }

    /* renamed from: b */
    public final void m2901b(bo boVar, yj yjVar) {
        C0931r.m3308k(boVar);
        C0931r.m3308k(yjVar);
        this.f3702a.m2651s(boVar, new rh(this, yjVar));
    }

    /* renamed from: c */
    public final void m2900c(bn bnVar, yj yjVar) {
        m2887p(bnVar, yjVar);
    }

    /* renamed from: d */
    public final void m2899d(String str, yj yjVar) {
        C0931r.m3312g(str);
        C0931r.m3308k(yjVar);
        m2890m(str, new th(this, yjVar));
    }

    /* renamed from: e */
    public final void m2898e(String str, yj yjVar) {
        C0931r.m3312g(str);
        C0931r.m3308k(yjVar);
        m2890m(str, new vh(this, yjVar));
    }

    /* renamed from: f */
    public final void m2897f(String str, yj yjVar) {
        C0931r.m3308k(yjVar);
        this.f3702a.m2656n(str, new wh(this, yjVar));
    }

    /* renamed from: q */
    public final void m2886q(String str, yj yjVar) {
        C0931r.m3312g(str);
        C0931r.m3308k(yjVar);
        this.f3702a.m2669a(new tm(str), new xg(this, yjVar));
    }

    /* renamed from: r */
    public final void m2885r(io ioVar, yj yjVar) {
        C0931r.m3308k(ioVar);
        C0931r.m3308k(yjVar);
        this.f3702a.m2668b(ioVar, new nh(this, yjVar));
    }

    /* renamed from: s */
    public final void m2884s(Context context, fo foVar, yj yjVar) {
        C0931r.m3308k(foVar);
        C0931r.m3308k(yjVar);
        foVar.B1(true);
        this.f3702a.m2667c(null, foVar, new yh(this, yjVar));
    }

    /* renamed from: t */
    public final void m2883t(String str, yj yjVar) {
        C0931r.m3308k(yjVar);
        this.f3702a.m2666d(new xn(str), new zh(this, yjVar));
    }

    /* renamed from: u */
    public final void m2882u(String str, x xVar, yj yjVar) {
        C0931r.m3312g(str);
        C0931r.m3308k(xVar);
        C0931r.m3308k(yjVar);
        m2890m(str, new ai(this, xVar, yjVar));
    }

    /* renamed from: v */
    public final void m2881v(String str, String str2, yj yjVar) {
        C0931r.m3312g(str);
        C0931r.m3312g(str2);
        C0931r.m3308k(yjVar);
        m2890m(str, new bi(this, str2, yjVar));
    }

    /* renamed from: w */
    public final void m2880w(String str, String str2, yj yjVar) {
        C0931r.m3312g(str);
        C0931r.m3312g(str2);
        C0931r.m3308k(yjVar);
        m2890m(str, new ci(this, str2, yjVar));
    }

    /* renamed from: x */
    public final void m2879x(String str, String str2, yj yjVar) {
        C0931r.m3312g(str);
        C0931r.m3308k(yjVar);
        vn vnVar = new vn();
        vnVar.l(str);
        vnVar.m(str2);
        this.f3702a.m2662h(vnVar, new di(this, yjVar));
    }

    /* renamed from: y */
    public final void m2878y(String str, String str2, String str3, yj yjVar) {
        C0931r.m3312g(str);
        C0931r.m3312g(str2);
        C0931r.m3308k(yjVar);
        this.f3702a.m2666d(new xn(str, str2, (String) null, str3), new ng(this, yjVar));
    }

    /* renamed from: z */
    public final void m2877z(Context context, String str, String str2, String str3, yj yjVar) {
        C0931r.m3312g(str);
        C0931r.m3312g(str2);
        C0931r.m3308k(yjVar);
        this.f3702a.m2665e(null, new mo(str, str2, str3), new og(this, yjVar));
    }
}
