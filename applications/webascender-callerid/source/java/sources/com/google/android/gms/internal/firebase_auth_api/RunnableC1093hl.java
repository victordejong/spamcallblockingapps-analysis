package com.google.android.gms.internal.firebase_auth_api;

import com.google.android.gms.internal.firebase-auth-api.il;
import com.google.android.gms.internal.firebase-auth-api.jl;
import com.google.firebase.auth.s;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.hl */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/hl.class */
final class RunnableC1093hl implements Runnable {

    /* renamed from: f */
    final /* synthetic */ jl f3721f;

    /* renamed from: g */
    final /* synthetic */ il f3722g;

    RunnableC1093hl(il ilVar, jl jlVar) {
        this.f3722g = ilVar;
        this.f3721f = jlVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (((ll) ((il) this.f3722g).a).g) {
            if (!((ll) ((il) this.f3722g).a).g.isEmpty()) {
                this.f3721f.m2790a((s.b) ((ll) ((il) this.f3722g).a).g.get(0), new Object[0]);
            }
        }
    }
}
