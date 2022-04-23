package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.measurement.internal.hj */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/hj.class */
public abstract class AbstractC2837hj extends C2838hk {

    /* renamed from: b */
    private boolean f17025b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2837hj(zzke zzkeVar) {
        super(zzkeVar);
        this.f17026a.m1692e();
    }

    /* renamed from: a */
    protected abstract boolean mo1675a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: v */
    public final boolean m2025v() {
        return this.f17025b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: w */
    public final void m2024w() {
        if (!m2025v()) {
            throw new IllegalStateException("Not initialized");
        }
    }

    public final void zzal() {
        if (!this.f17025b) {
            mo1675a();
            this.f17026a.m1690f();
            this.f17025b = true;
            return;
        }
        throw new IllegalStateException("Can't initialize twice");
    }
}
