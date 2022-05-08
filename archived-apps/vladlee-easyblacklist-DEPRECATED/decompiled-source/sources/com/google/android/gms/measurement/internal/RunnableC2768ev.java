package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.measurement.internal.ev */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/ev.class */
public final class RunnableC2768ev implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ String f16816a;

    /* renamed from: b */
    private final /* synthetic */ String f16817b;

    /* renamed from: c */
    private final /* synthetic */ Object f16818c;

    /* renamed from: d */
    private final /* synthetic */ long f16819d;

    /* renamed from: e */
    private final /* synthetic */ zzhb f16820e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC2768ev(zzhb zzhbVar, String str, String str2, Object obj, long j) {
        this.f16820e = zzhbVar;
        this.f16816a = str;
        this.f16817b = str2;
        this.f16818c = obj;
        this.f16819d = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f16820e.m1783a(this.f16816a, this.f16817b, this.f16818c, this.f16819d);
    }
}
