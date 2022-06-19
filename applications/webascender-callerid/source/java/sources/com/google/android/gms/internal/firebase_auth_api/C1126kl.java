package com.google.android.gms.internal.firebase_auth_api;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.C0931r;
import com.google.android.gms.tasks.C1647h;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.c;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.kl */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/kl.class */
public final class C1126kl<ResultT, CallbackT> {

    /* renamed from: a */
    private final ll<ResultT, CallbackT> f3744a;

    /* renamed from: b */
    private final C1647h<ResultT> f3745b;

    public C1126kl(ll<ResultT, CallbackT> llVar, C1647h<ResultT> c1647h) {
        this.f3744a = llVar;
        this.f3745b = c1647h;
    }

    /* renamed from: a */
    public final void m2772a(ResultT resultt, Status status) {
        C0931r.m3307l(this.f3745b, "completion source cannot be null");
        if (status == null) {
            this.f3745b.m1447c(resultt);
            return;
        }
        ll<ResultT, CallbackT> llVar = this.f3744a;
        if (llVar.r != null) {
            C1647h<ResultT> c1647h = this.f3745b;
            FirebaseAuth firebaseAuth = FirebaseAuth.getInstance(llVar.c);
            ll<ResultT, CallbackT> llVar2 = this.f3744a;
            c1647h.m1448b(C1021bk.m3008c(firebaseAuth, llVar2.r, ("reauthenticateWithCredential".equals(llVar2.zza()) || "reauthenticateWithCredentialWithData".equals(this.f3744a.zza())) ? this.f3744a.d : null));
            return;
        }
        c cVar = llVar.o;
        if (cVar != null) {
            this.f3745b.m1448b(C1021bk.m3009b(status, cVar, llVar.p, llVar.q));
        } else {
            this.f3745b.m1448b(C1021bk.m3010a(status));
        }
    }
}
