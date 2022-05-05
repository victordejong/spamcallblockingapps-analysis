package com.google.android.gms.common;

import java.lang.ref.WeakReference;
/* renamed from: com.google.android.gms.common.g */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/g.class */
abstract class AbstractBinderC1648g extends AbstractBinderC1646e {

    /* renamed from: b */
    private static final WeakReference<byte[]> f6634b = new WeakReference<>(null);

    /* renamed from: a */
    private WeakReference<byte[]> f6635a = f6634b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractBinderC1648g(byte[] bArr) {
        super(bArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.common.AbstractBinderC1646e
    /* renamed from: a */
    public final byte[] mo5750a() {
        byte[] bArr;
        synchronized (this) {
            byte[] bArr2 = this.f6635a.get();
            bArr = bArr2;
            if (bArr2 == null) {
                bArr = mo5650b();
                this.f6635a = new WeakReference<>(bArr);
            }
        }
        return bArr;
    }

    /* renamed from: b */
    protected abstract byte[] mo5650b();
}
