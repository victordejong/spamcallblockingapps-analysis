package com.google.android.gms.internal.icing;

import java.util.NoSuchElementException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzcw.class */
final class zzcw extends zzcy {

    /* renamed from: f */
    private int f7959f = 0;

    /* renamed from: g */
    private final int f7960g;

    /* renamed from: h */
    private final /* synthetic */ zzct f7961h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcw(zzct zzctVar) {
        this.f7961h = zzctVar;
        this.f7960g = this.f7961h.size();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f7959f < this.f7960g;
    }

    @Override // com.google.android.gms.internal.icing.zzdc
    public final byte nextByte() {
        int i = this.f7959f;
        if (i < this.f7960g) {
            this.f7959f = i + 1;
            return this.f7961h.mo13961s(i);
        }
        throw new NoSuchElementException();
    }
}
