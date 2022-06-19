package com.google.android.gms.internal.firebase_auth_api;

import android.content.Context;
import com.google.android.gms.common.C0893h;
import com.google.android.gms.common.api.C0807a;
import com.google.android.gms.common.api.C0813c;
import com.google.android.gms.common.e;
import com.google.android.gms.internal.firebase-auth-api.tk;
import com.google.firebase.h;
import java.util.concurrent.Callable;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.wj */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/wj.class */
final class CallableC1239wj implements Callable<C1076gi<tk>> {

    /* renamed from: f */
    private final tk f3826f;

    /* renamed from: g */
    private final Context f3827g;

    public CallableC1239wj(tk tkVar, Context context) {
        this.f3826f = tkVar;
        this.f3827g = context;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ C1076gi<tk> call() throws Exception {
        int j = e.r().j(this.f3827g, (int) C0893h.f3474a);
        boolean unused = C1255xj.f3836a = j == 0 || j == 2;
        Context context = this.f3827g;
        tk b = this.f3826f.b();
        ((ii) b).f = true;
        C0807a<tk> c0807a = C1223uk.f3819c;
        C0813c.C0814a.C0815a c0815a = new C0813c.C0814a.C0815a();
        c0815a.m3670b(new h());
        return new C1076gi<>(new ji(context, c0807a, b, c0815a.m3671a()));
    }
}
