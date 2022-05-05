package com.google.android.gms.measurement.internal;

import android.os.Bundle;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.measurement.internal.ew */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/ew.class */
public final class RunnableC2769ew implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ String f16821a;

    /* renamed from: b */
    private final /* synthetic */ String f16822b;

    /* renamed from: c */
    private final /* synthetic */ long f16823c;

    /* renamed from: d */
    private final /* synthetic */ Bundle f16824d;

    /* renamed from: e */
    private final /* synthetic */ boolean f16825e;

    /* renamed from: f */
    private final /* synthetic */ boolean f16826f;

    /* renamed from: g */
    private final /* synthetic */ boolean f16827g;

    /* renamed from: h */
    private final /* synthetic */ String f16828h = null;

    /* renamed from: i */
    private final /* synthetic */ zzhb f16829i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC2769ew(zzhb zzhbVar, String str, String str2, long j, Bundle bundle, boolean z, boolean z2, boolean z3) {
        this.f16829i = zzhbVar;
        this.f16821a = str;
        this.f16822b = str2;
        this.f16823c = j;
        this.f16824d = bundle;
        this.f16825e = z;
        this.f16826f = z2;
        this.f16827g = z3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f16829i.m1786a(this.f16821a, this.f16822b, this.f16823c, this.f16824d, this.f16825e, this.f16826f, this.f16827g, this.f16828h);
    }
}
