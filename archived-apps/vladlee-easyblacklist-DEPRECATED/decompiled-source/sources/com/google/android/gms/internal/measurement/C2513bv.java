package com.google.android.gms.internal.measurement;

import java.util.NoSuchElementException;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.measurement.bv */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/bv.class */
public final class C2513bv extends AbstractC2515bx {

    /* renamed from: a */
    private int f15901a = 0;

    /* renamed from: b */
    private final int f15902b;

    /* renamed from: c */
    private final /* synthetic */ zzdu f15903c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2513bv(zzdu zzduVar) {
        this.f15903c = zzduVar;
        this.f15902b = this.f15903c.zza();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f15901a < this.f15902b;
    }

    @Override // com.google.android.gms.internal.measurement.zzed
    public final byte zza() {
        int i = this.f15901a;
        if (i < this.f15902b) {
            this.f15901a = i + 1;
            return this.f15903c.mo2309a(i);
        }
        throw new NoSuchElementException();
    }
}
