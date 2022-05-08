package com.google.android.gms.internal.ads;

import android.util.SparseArray;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aop.class */
public final class aop implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ aoq f8031a;

    /* renamed from: b */
    private final /* synthetic */ aol f8032b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aop(aol aolVar, aoq aoqVar) {
        this.f8032b = aolVar;
        this.f8031a = aoqVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        SparseArray sparseArray;
        SparseArray sparseArray2;
        this.f8031a.m4796a();
        sparseArray = this.f8032b.f8016p;
        int size = sparseArray.size();
        for (int i = 0; i < size; i++) {
            sparseArray2 = this.f8032b.f8016p;
            ((zzmj) sparseArray2.valueAt(i)).disable();
        }
    }
}
