package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aio.class */
final class aio implements aiu {

    /* renamed from: a */
    private aiu[] f7428a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aio(aiu... aiuVarArr) {
        this.f7428a = aiuVarArr;
    }

    @Override // com.google.android.gms.internal.ads.aiu
    /* renamed from: a */
    public final boolean mo5298a(Class<?> cls) {
        for (aiu aiuVar : this.f7428a) {
            if (aiuVar.mo5298a(cls)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.aiu
    /* renamed from: b */
    public final aiv mo5297b(Class<?> cls) {
        aiu[] aiuVarArr;
        for (aiu aiuVar : this.f7428a) {
            if (aiuVar.mo5298a(cls)) {
                return aiuVar.mo5297b(cls);
            }
        }
        String valueOf = String.valueOf(cls.getName());
        throw new UnsupportedOperationException(valueOf.length() != 0 ? "No factory is available for message type: ".concat(valueOf) : new String("No factory is available for message type: "));
    }
}
