package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.measurement.internal.er */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/er.class */
public abstract class AbstractC2764er extends C2761eo {

    /* renamed from: a */
    private boolean f16808a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2764er(zzga zzgaVar) {
        super(zzgaVar);
        this.f16804x.m1804e();
    }

    /* renamed from: a */
    protected abstract boolean mo1646a();

    /* renamed from: b */
    protected void mo1618b() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: k */
    public final boolean m2057k() {
        return this.f16808a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: l */
    public final void m2056l() {
        if (!m2057k()) {
            throw new IllegalStateException("Not initialized");
        }
    }

    public final void zzab() {
        if (this.f16808a) {
            throw new IllegalStateException("Can't initialize twice");
        } else if (!mo1646a()) {
            this.f16804x.m1802g();
            this.f16808a = true;
        }
    }

    public final void zzac() {
        if (!this.f16808a) {
            mo1618b();
            this.f16804x.m1802g();
            this.f16808a = true;
            return;
        }
        throw new IllegalStateException("Can't initialize twice");
    }
}
