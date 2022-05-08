package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzjk.class */
final class zzjk implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ ComponentName f9604f;

    /* renamed from: g */
    private final /* synthetic */ zzji f9605g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzjk(zzji zzjiVar, ComponentName componentName) {
        this.f9605g = zzjiVar;
        this.f9604f = componentName;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f9605g.f9596c.m11207C(this.f9604f);
    }
}
