package com.google.android.gms.common;

import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/zzg.class */
abstract class zzg extends zze {

    /* renamed from: c */
    private static final WeakReference<byte[]> f7677c = new WeakReference<>(null);

    /* renamed from: b */
    private WeakReference<byte[]> f7678b = f7677c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzg(byte[] bArr) {
        super(bArr);
    }

    /* renamed from: Q0 */
    protected abstract byte[] mo14270Q0();

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.common.zze
    /* renamed from: c */
    public final byte[] mo14271c() {
        byte[] bArr;
        synchronized (this) {
            byte[] bArr2 = this.f7678b.get();
            bArr = bArr2;
            if (bArr2 == null) {
                bArr = mo14270Q0();
                this.f7678b = new WeakReference<>(bArr);
            }
        }
        return bArr;
    }
}
