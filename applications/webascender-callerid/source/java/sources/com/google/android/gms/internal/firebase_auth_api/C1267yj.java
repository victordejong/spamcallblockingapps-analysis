package com.google.android.gms.internal.firebase_auth_api;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.C0931r;
import com.google.android.gms.common.p024l.C0945a;
import com.google.android.gms.internal.firebase-auth-api.en;
import com.google.android.gms.internal.firebase-auth-api.jg;
import com.google.android.gms.internal.firebase-auth-api.jm;
import com.google.android.gms.internal.firebase-auth-api.lg;
import com.google.android.gms.internal.firebase-auth-api.lk;
import com.google.android.gms.internal.firebase-auth-api.qn;
import com.google.android.gms.internal.firebase-auth-api.xm;
import com.google.android.gms.internal.firebase-auth-api.yj;
import com.google.firebase.auth.q;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.yj */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/yj.class */
public class C1267yj {

    /* renamed from: a */
    private final lk f3852a;

    /* renamed from: b */
    private final C0945a f3853b;

    public C1267yj(lk lkVar, C0945a c0945a) {
        C0931r.m3308k(lkVar);
        this.f3852a = (AbstractC1137lk) lkVar;
        C0931r.m3308k(c0945a);
        this.f3853b = c0945a;
    }

    public C1267yj(yj yjVar) {
        this(yjVar.f3852a, yjVar.f3853b);
    }

    /* renamed from: a */
    public final void m2316a(en enVar) {
        try {
            this.f3852a.m2753g2(enVar);
        } catch (RemoteException e) {
            this.f3853b.m3221b("RemoteException when sending token result.", e, new Object[0]);
        }
    }

    /* renamed from: b */
    public final void m2315b(en enVar, xm xmVar) {
        try {
            this.f3852a.m2755a1(enVar, xmVar);
        } catch (RemoteException e) {
            this.f3853b.m3221b("RemoteException when sending get token and account info user response", e, new Object[0]);
        }
    }

    /* renamed from: c */
    public final void m2314c(jm jmVar) {
        try {
            this.f3852a.m2758U(jmVar);
        } catch (RemoteException e) {
            this.f3853b.m3221b("RemoteException when sending create auth uri response.", e, new Object[0]);
        }
    }

    /* renamed from: d */
    public final void m2313d(qn qnVar) {
        try {
            this.f3852a.m2750l1(qnVar);
        } catch (RemoteException e) {
            this.f3853b.m3221b("RemoteException when sending password reset response.", e, new Object[0]);
        }
    }

    /* renamed from: e */
    public final void m2312e() {
        try {
            this.f3852a.m2754e();
        } catch (RemoteException e) {
            this.f3853b.m3221b("RemoteException when sending delete account response.", e, new Object[0]);
        }
    }

    /* renamed from: f */
    public final void m2311f() {
        try {
            this.f3852a.m2752h();
        } catch (RemoteException e) {
            this.f3853b.m3221b("RemoteException when sending email verification response.", e, new Object[0]);
        }
    }

    /* renamed from: g */
    public final void m2310g(String str) {
        try {
            this.f3852a.m2747s0(str);
        } catch (RemoteException e) {
            this.f3853b.m3221b("RemoteException when sending set account info response.", e, new Object[0]);
        }
    }

    /* renamed from: h */
    public void m2309h(String str) {
        try {
            this.f3852a.m2749o(str);
        } catch (RemoteException e) {
            this.f3853b.m3221b("RemoteException when sending send verification code response.", e, new Object[0]);
        }
    }

    /* renamed from: i */
    public final void m2308i(q qVar) {
        try {
            this.f3852a.m2757X(qVar);
        } catch (RemoteException e) {
            this.f3853b.m3221b("RemoteException when sending verification completed response.", e, new Object[0]);
        }
    }

    /* renamed from: j */
    public final void m2307j(String str) {
        try {
            this.f3852a.m2759K0(str);
        } catch (RemoteException e) {
            this.f3853b.m3221b("RemoteException when sending auto retrieval timeout response.", e, new Object[0]);
        }
    }

    /* renamed from: k */
    public void m2306k(Status status) {
        try {
            this.f3852a.m2756X0(status);
        } catch (RemoteException e) {
            this.f3853b.m3221b("RemoteException when sending failure result.", e, new Object[0]);
        }
    }

    /* renamed from: l */
    public final void m2305l(Status status, q qVar) {
        try {
            this.f3852a.m2760F2(status, qVar);
        } catch (RemoteException e) {
            this.f3853b.m3221b("RemoteException when sending failure result.", e, new Object[0]);
        }
    }

    /* renamed from: m */
    public final void m2304m() {
        try {
            this.f3852a.m2751l();
        } catch (RemoteException e) {
            this.f3853b.m3221b("RemoteException when setting FirebaseUI Version", e, new Object[0]);
        }
    }

    /* renamed from: n */
    public final void m2303n(jg jgVar) {
        try {
            this.f3852a.m2746v1(jgVar);
        } catch (RemoteException e) {
            this.f3853b.m3221b("RemoteException when sending failure result with credential", e, new Object[0]);
        }
    }

    /* renamed from: o */
    public final void m2302o(lg lgVar) {
        try {
            this.f3852a.m2748r0(lgVar);
        } catch (RemoteException e) {
            this.f3853b.m3221b("RemoteException when sending failure result for mfa", e, new Object[0]);
        }
    }
}
