package com.google.android.gms.common;

import java.util.Arrays;
/* renamed from: com.google.android.gms.common.f */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/f.class */
final class BinderC1647f extends AbstractBinderC1646e {

    /* renamed from: a */
    private final byte[] f6633a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public BinderC1647f(byte[] bArr) {
        super(Arrays.copyOfRange(bArr, 0, 25));
        this.f6633a = bArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.common.AbstractBinderC1646e
    /* renamed from: a */
    public final byte[] mo5750a() {
        return this.f6633a;
    }
}
