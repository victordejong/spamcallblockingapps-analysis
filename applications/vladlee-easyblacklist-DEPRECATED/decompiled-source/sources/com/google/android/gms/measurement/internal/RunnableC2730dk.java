package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import java.util.List;
import java.util.Map;
/* renamed from: com.google.android.gms.measurement.internal.dk */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/dk.class */
final class RunnableC2730dk implements Runnable {

    /* renamed from: a */
    private final AbstractC2731dl f16659a;

    /* renamed from: b */
    private final int f16660b;

    /* renamed from: c */
    private final Throwable f16661c;

    /* renamed from: d */
    private final byte[] f16662d;

    /* renamed from: e */
    private final String f16663e;

    /* renamed from: f */
    private final Map<String, List<String>> f16664f;

    private RunnableC2730dk(String str, AbstractC2731dl dlVar, int i, Throwable th, byte[] bArr, Map<String, List<String>> map) {
        Preconditions.checkNotNull(dlVar);
        this.f16659a = dlVar;
        this.f16660b = i;
        this.f16661c = th;
        this.f16662d = bArr;
        this.f16663e = str;
        this.f16664f = map;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ RunnableC2730dk(String str, AbstractC2731dl dlVar, int i, Throwable th, byte[] bArr, Map map, byte b) {
        this(str, dlVar, i, th, bArr, map);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f16659a.mo2023a(this.f16663e, this.f16660b, this.f16661c, this.f16662d, this.f16664f);
    }
}
