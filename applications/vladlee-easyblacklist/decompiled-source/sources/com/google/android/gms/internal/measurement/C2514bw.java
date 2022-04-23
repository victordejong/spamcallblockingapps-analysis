package com.google.android.gms.internal.measurement;

import java.util.Arrays;
/* renamed from: com.google.android.gms.internal.measurement.bw */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/bw.class */
final class C2514bw implements AbstractC2516by {
    private C2514bw() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ C2514bw(byte b) {
        this();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2516by
    /* renamed from: a */
    public final byte[] mo2888a(byte[] bArr, int i, int i2) {
        return Arrays.copyOfRange(bArr, i, i2 + i);
    }
}
