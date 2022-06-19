package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.C0931r;
import java.util.List;
import java.util.Map;
/* renamed from: com.google.android.gms.measurement.internal.r3 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/r3.class */
final class RunnableC1579r3 implements Runnable {

    /* renamed from: f */
    private final AbstractC1572q3 f4465f;

    /* renamed from: g */
    private final int f4466g;

    /* renamed from: h */
    private final Throwable f4467h;

    /* renamed from: i */
    private final byte[] f4468i;

    /* renamed from: j */
    private final String f4469j;

    /* renamed from: k */
    private final Map<String, List<String>> f4470k;

    public /* synthetic */ RunnableC1579r3(String str, AbstractC1572q3 abstractC1572q3, int i, Throwable th, byte[] bArr, Map map, C1565p3 c1565p3) {
        C0931r.m3308k(abstractC1572q3);
        this.f4465f = abstractC1572q3;
        this.f4466g = i;
        this.f4467h = th;
        this.f4468i = bArr;
        this.f4469j = str;
        this.f4470k = map;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f4465f.m1523a(this.f4469j, this.f4466g, this.f4467h, this.f4468i, this.f4470k);
    }
}
