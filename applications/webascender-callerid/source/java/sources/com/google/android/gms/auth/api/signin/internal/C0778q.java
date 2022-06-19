package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
/* renamed from: com.google.android.gms.auth.api.signin.internal.q */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/q.class */
public final class C0778q {

    /* renamed from: b */
    private static C0778q f3270b;

    /* renamed from: a */
    private C0773c f3271a;

    private C0778q(Context context) {
        C0773c m3770b = C0773c.m3770b(context);
        this.f3271a = m3770b;
        m3770b.m3769c();
        this.f3271a.m3768d();
    }

    /* renamed from: c */
    public static C0778q m3751c(Context context) {
        C0778q m3750d;
        synchronized (C0778q.class) {
            try {
                m3750d = m3750d(context.getApplicationContext());
            } catch (Throwable th) {
                throw th;
            }
        }
        return m3750d;
    }

    /* renamed from: d */
    private static C0778q m3750d(Context context) {
        synchronized (C0778q.class) {
            try {
                C0778q c0778q = f3270b;
                if (c0778q != null) {
                    return c0778q;
                }
                C0778q c0778q2 = new C0778q(context);
                f3270b = c0778q2;
                return c0778q2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public final void m3753a() {
        synchronized (this) {
            this.f3271a.m3771a();
        }
    }

    /* renamed from: b */
    public final void m3752b(GoogleSignInOptions googleSignInOptions, GoogleSignInAccount googleSignInAccount) {
        synchronized (this) {
            this.f3271a.m3766f(googleSignInAccount, googleSignInOptions);
        }
    }
}
