package com.google.android.gms.internal.firebase_auth_api;

import com.google.android.gms.internal.firebase-auth-api.ia;
import com.google.android.gms.internal.firebase-auth-api.nb;
import java.util.Arrays;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.y2 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/y2.class */
public final class C1260y2<P> {

    /* renamed from: a */
    private final P f3844a;

    /* renamed from: b */
    private final byte[] f3845b;

    /* renamed from: c */
    private final ia f3846c;

    /* renamed from: d */
    private final nb f3847d;

    public C1260y2(P p, byte[] bArr, ia iaVar, nb nbVar, int i) {
        this.f3844a = p;
        this.f3845b = Arrays.copyOf(bArr, bArr.length);
        this.f3846c = iaVar;
        this.f3847d = nbVar;
    }

    /* renamed from: a */
    public final P m2321a() {
        return this.f3844a;
    }

    /* renamed from: b */
    public final ia m2320b() {
        return this.f3846c;
    }

    /* renamed from: c */
    public final nb m2319c() {
        return this.f3847d;
    }

    /* renamed from: d */
    public final byte[] m2318d() {
        byte[] bArr = this.f3845b;
        if (bArr == null) {
            return null;
        }
        return Arrays.copyOf(bArr, bArr.length);
    }
}
