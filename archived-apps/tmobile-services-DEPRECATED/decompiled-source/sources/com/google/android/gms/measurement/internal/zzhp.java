package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzhp.class */
public final class zzhp implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ AtomicReference f9439f;

    /* renamed from: g */
    private final /* synthetic */ String f9440g;

    /* renamed from: h */
    private final /* synthetic */ String f9441h;

    /* renamed from: i */
    private final /* synthetic */ String f9442i;

    /* renamed from: j */
    private final /* synthetic */ zzgy f9443j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzhp(zzgy zzgyVar, AtomicReference atomicReference, String str, String str2, String str3) {
        this.f9443j = zzgyVar;
        this.f9439f = atomicReference;
        this.f9440g = str;
        this.f9441h = str2;
        this.f9442i = str3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f9443j.f9354a.m11372P().m11192R(this.f9439f, this.f9440g, this.f9441h, this.f9442i);
    }
}
