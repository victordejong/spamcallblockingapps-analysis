package com.google.android.gms.internal.icing;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzda.class */
public final class zzda extends zzdd {

    /* renamed from: j */
    private final int f7962j;

    /* renamed from: k */
    private final int f7963k;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzda(byte[] bArr, int i, int i2) {
        super(bArr);
        zzct.m13975p(i, i + i2, bArr.length);
        this.f7962j = i;
        this.f7963k = i2;
    }

    @Override // com.google.android.gms.internal.icing.zzdd, com.google.android.gms.internal.icing.zzct
    /* renamed from: r */
    public final byte mo13962r(int i) {
        int size = size();
        if (((size - (i + 1)) | i) >= 0) {
            return this.f7966i[this.f7962j + i];
        }
        if (i < 0) {
            StringBuilder sb = new StringBuilder(22);
            sb.append("Index < 0: ");
            sb.append(i);
            throw new ArrayIndexOutOfBoundsException(sb.toString());
        }
        StringBuilder sb2 = new StringBuilder(40);
        sb2.append("Index > length: ");
        sb2.append(i);
        sb2.append(", ");
        sb2.append(size);
        throw new ArrayIndexOutOfBoundsException(sb2.toString());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.icing.zzdd, com.google.android.gms.internal.icing.zzct
    /* renamed from: s */
    public final byte mo13961s(int i) {
        return this.f7966i[this.f7962j + i];
    }

    @Override // com.google.android.gms.internal.icing.zzdd, com.google.android.gms.internal.icing.zzct
    public final int size() {
        return this.f7963k;
    }

    @Override // com.google.android.gms.internal.icing.zzdd
    /* renamed from: w */
    protected final int mo13959w() {
        return this.f7962j;
    }
}
