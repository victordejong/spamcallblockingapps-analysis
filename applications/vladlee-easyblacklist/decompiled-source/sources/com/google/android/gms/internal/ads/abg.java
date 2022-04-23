package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/abg.class */
public final class abg<E> extends abd<E> {

    /* renamed from: a */
    private final zzdeu<E> f7156a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public abg(zzdeu<E> zzdeuVar, int i) {
        super(zzdeuVar.size(), i);
        this.f7156a = zzdeuVar;
    }

    @Override // com.google.android.gms.internal.ads.abd
    /* renamed from: a */
    protected final E mo5497a(int i) {
        return this.f7156a.get(i);
    }
}
