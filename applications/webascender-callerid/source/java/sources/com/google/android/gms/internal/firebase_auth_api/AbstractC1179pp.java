package com.google.android.gms.internal.firebase_auth_api;

import com.google.android.gms.internal.firebase-auth-api.mp;
import com.google.android.gms.internal.firebase-auth-api.np;
import com.google.android.gms.internal.firebase-auth-api.pp;
import com.google.android.gms.internal.firebase-auth-api.qp;
import com.google.android.gms.internal.firebase-auth-api.zzaal;
import java.io.IOException;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.pp */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/pp.class */
public abstract class AbstractC1179pp {

    /* renamed from: a */
    int f3774a;

    /* renamed from: b */
    qp f3775b;

    /* synthetic */ AbstractC1179pp(np npVar) {
    }

    /* renamed from: l */
    public static pp m2606l(byte[] bArr, int i, int i2, boolean z) {
        op opVar = new op(bArr, 0, i2, z, (np) null);
        try {
            opVar.h(i2);
            return opVar;
        } catch (zzaal e) {
            throw new IllegalArgumentException(e);
        }
    }

    /* renamed from: m */
    public static int m2605m(int i) {
        return (-(i & 1)) ^ (i >>> 1);
    }

    /* renamed from: n */
    public static long m2604n(long j) {
        return (-(j & 1)) ^ (j >>> 1);
    }

    /* renamed from: a */
    public abstract int m2617a() throws IOException;

    /* renamed from: b */
    public abstract void m2616b(int i) throws zzaal;

    /* renamed from: c */
    public abstract boolean m2615c(int i) throws IOException;

    /* renamed from: d */
    public abstract boolean m2614d() throws IOException;

    /* renamed from: e */
    public abstract String m2613e() throws IOException;

    /* renamed from: f */
    public abstract String m2612f() throws IOException;

    /* renamed from: g */
    public abstract mp m2611g() throws IOException;

    /* renamed from: h */
    public abstract int m2610h(int i) throws zzaal;

    /* renamed from: i */
    public abstract void m2609i(int i);

    /* renamed from: j */
    public abstract boolean m2608j() throws IOException;

    /* renamed from: k */
    public abstract int m2607k();
}
