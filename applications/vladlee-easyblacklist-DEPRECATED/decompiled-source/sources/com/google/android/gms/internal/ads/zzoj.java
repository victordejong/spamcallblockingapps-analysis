package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzoj.class */
public final class zzoj {

    /* renamed from: a */
    private int f15243a;

    /* renamed from: b */
    private int f15244b;
    public byte[] data;

    public zzoj() {
    }

    public zzoj(int i) {
        this.data = new byte[i];
        this.f15244b = i;
    }

    public zzoj(byte[] bArr) {
        this.data = bArr;
        this.f15244b = bArr.length;
    }

    public final int capacity() {
        byte[] bArr = this.data;
        if (bArr == null) {
            return 0;
        }
        return bArr.length;
    }

    public final int getPosition() {
        return this.f15243a;
    }

    public final int limit() {
        return this.f15244b;
    }

    public final int readInt() {
        byte[] bArr = this.data;
        int i = this.f15243a;
        this.f15243a = i + 1;
        byte b = bArr[i];
        int i2 = this.f15243a;
        this.f15243a = i2 + 1;
        byte b2 = bArr[i2];
        int i3 = this.f15243a;
        this.f15243a = i3 + 1;
        byte b3 = bArr[i3];
        int i4 = this.f15243a;
        this.f15243a = i4 + 1;
        return (bArr[i4] & 255) | ((b & 255) << 24) | ((b2 & 255) << 16) | ((b3 & 255) << 8);
    }

    public final long readLong() {
        int i;
        byte[] bArr = this.data;
        int i2 = this.f15243a;
        this.f15243a = i2 + 1;
        long j = bArr[i2];
        int i3 = this.f15243a;
        this.f15243a = i3 + 1;
        long j2 = bArr[i3];
        int i4 = this.f15243a;
        this.f15243a = i4 + 1;
        long j3 = bArr[i4];
        int i5 = this.f15243a;
        this.f15243a = i5 + 1;
        long j4 = bArr[i5];
        int i6 = this.f15243a;
        this.f15243a = i6 + 1;
        long j5 = bArr[i6];
        int i7 = this.f15243a;
        this.f15243a = i7 + 1;
        long j6 = bArr[i7];
        int i8 = this.f15243a;
        this.f15243a = i8 + 1;
        long j7 = bArr[i8];
        this.f15243a = this.f15243a + 1;
        return ((j & 255) << 56) | ((j2 & 255) << 48) | ((j3 & 255) << 40) | ((j4 & 255) << 32) | ((j5 & 255) << 24) | ((j6 & 255) << 16) | ((j7 & 255) << 8) | (255 & bArr[i]);
    }

    public final short readShort() {
        byte[] bArr = this.data;
        int i = this.f15243a;
        this.f15243a = i + 1;
        byte b = bArr[i];
        int i2 = this.f15243a;
        this.f15243a = i2 + 1;
        return (short) ((bArr[i2] & 255) | ((b & 255) << 8));
    }

    public final int readUnsignedByte() {
        byte[] bArr = this.data;
        int i = this.f15243a;
        this.f15243a = i + 1;
        return bArr[i] & 255;
    }

    public final int readUnsignedShort() {
        byte[] bArr = this.data;
        int i = this.f15243a;
        this.f15243a = i + 1;
        byte b = bArr[i];
        int i2 = this.f15243a;
        this.f15243a = i2 + 1;
        return (bArr[i2] & 255) | ((b & 255) << 8);
    }

    public final void reset() {
        this.f15243a = 0;
        this.f15244b = 0;
    }

    public final void reset(int i) {
        zzb(capacity() < i ? new byte[i] : this.data, i);
    }

    public final void zzb(byte[] bArr, int i) {
        this.data = bArr;
        this.f15244b = i;
        this.f15243a = 0;
    }

    public final void zzbd(int i) {
        zzoc.checkArgument(i >= 0 && i <= this.data.length);
        this.f15244b = i;
    }

    public final void zzbe(int i) {
        zzoc.checkArgument(i >= 0 && i <= this.f15244b);
        this.f15243a = i;
    }

    public final void zzbf(int i) {
        zzbe(this.f15243a + i);
    }

    public final String zzbg(int i) {
        if (i == 0) {
            return "";
        }
        int i2 = (this.f15243a + i) - 1;
        String str = new String(this.data, this.f15243a, (i2 >= this.f15244b || this.data[i2] != 0) ? i : i - 1);
        this.f15243a += i;
        return str;
    }

    public final void zze(byte[] bArr, int i, int i2) {
        System.arraycopy(this.data, this.f15243a, bArr, i, i2);
        this.f15243a += i2;
    }

    public final int zzin() {
        return this.f15244b - this.f15243a;
    }

    public final int zzio() {
        byte[] bArr = this.data;
        int i = this.f15243a;
        this.f15243a = i + 1;
        byte b = bArr[i];
        int i2 = this.f15243a;
        this.f15243a = i2 + 1;
        return ((bArr[i2] & 255) << 8) | (b & 255);
    }

    public final long zzip() {
        int i;
        byte[] bArr = this.data;
        int i2 = this.f15243a;
        this.f15243a = i2 + 1;
        long j = bArr[i2];
        int i3 = this.f15243a;
        this.f15243a = i3 + 1;
        long j2 = bArr[i3];
        int i4 = this.f15243a;
        this.f15243a = i4 + 1;
        long j3 = bArr[i4];
        this.f15243a = this.f15243a + 1;
        return ((j & 255) << 24) | ((j2 & 255) << 16) | ((j3 & 255) << 8) | (255 & bArr[i]);
    }

    public final long zziq() {
        int i;
        byte[] bArr = this.data;
        int i2 = this.f15243a;
        this.f15243a = i2 + 1;
        long j = bArr[i2];
        int i3 = this.f15243a;
        this.f15243a = i3 + 1;
        long j2 = bArr[i3];
        int i4 = this.f15243a;
        this.f15243a = i4 + 1;
        long j3 = bArr[i4];
        this.f15243a = this.f15243a + 1;
        return (j & 255) | ((j2 & 255) << 8) | ((j3 & 255) << 16) | ((255 & bArr[i]) << 24);
    }

    public final int zzir() {
        byte[] bArr = this.data;
        int i = this.f15243a;
        this.f15243a = i + 1;
        byte b = bArr[i];
        int i2 = this.f15243a;
        this.f15243a = i2 + 1;
        byte b2 = bArr[i2];
        this.f15243a += 2;
        return (b2 & 255) | ((b & 255) << 8);
    }

    public final int zzis() {
        int readInt = readInt();
        if (readInt >= 0) {
            return readInt;
        }
        StringBuilder sb = new StringBuilder(29);
        sb.append("Top bit not zero: ");
        sb.append(readInt);
        throw new IllegalStateException(sb.toString());
    }

    public final long zzit() {
        long readLong = readLong();
        if (readLong >= 0) {
            return readLong;
        }
        StringBuilder sb = new StringBuilder(38);
        sb.append("Top bit not zero: ");
        sb.append(readLong);
        throw new IllegalStateException(sb.toString());
    }
}
