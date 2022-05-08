package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ahi.class */
final class ahi extends aho {

    /* renamed from: b */
    private final int f7360b;

    /* renamed from: c */
    private final int f7361c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ahi(byte[] bArr, int i, int i2) {
        super(bArr);
        m3395c(i, i + i2, bArr.length);
        this.f7360b = i;
        this.f7361c = i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.aho, com.google.android.gms.internal.ads.zzdqk
    /* renamed from: a */
    public final byte mo3407a(int i) {
        return this.f7364a[this.f7360b + i];
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.aho, com.google.android.gms.internal.ads.zzdqk
    /* renamed from: a */
    public final void mo3400a(byte[] bArr, int i, int i2, int i3) {
        System.arraycopy(this.f7364a, mo5399d() + i, bArr, i2, i3);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.aho
    /* renamed from: d */
    public final int mo5399d() {
        return this.f7360b;
    }

    @Override // com.google.android.gms.internal.ads.aho, com.google.android.gms.internal.ads.zzdqk
    public final int size() {
        return this.f7361c;
    }

    @Override // com.google.android.gms.internal.ads.aho, com.google.android.gms.internal.ads.zzdqk
    public final byte zzfe(int i) {
        m3406a(i, size());
        return this.f7364a[this.f7360b + i];
    }
}
