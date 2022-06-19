package com.google.android.gms.internal.firebase_auth_api;

import com.google.android.gms.internal.firebase-auth-api.bp;
import com.google.android.gms.internal.firebase-auth-api.mp;
import com.google.android.gms.internal.firebase-auth-api.vp;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.hp */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/hp.class */
final class C1095hp {

    /* renamed from: a */
    private final vp f3725a;

    /* renamed from: b */
    private final byte[] f3726b;

    public /* synthetic */ C1095hp(int i, bp bpVar) {
        byte[] bArr = new byte[i];
        this.f3726b = bArr;
        this.f3725a = vp.H(bArr);
    }

    /* renamed from: a */
    public final mp m2821a() {
        this.f3725a.j();
        return new jp(this.f3726b);
    }

    /* renamed from: b */
    public final vp m2820b() {
        return this.f3725a;
    }
}
