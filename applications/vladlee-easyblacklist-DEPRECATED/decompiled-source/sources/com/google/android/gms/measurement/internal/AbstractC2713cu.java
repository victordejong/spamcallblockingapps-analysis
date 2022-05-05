package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.measurement.internal.cu */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/cu.class */
public abstract class AbstractC2713cu extends C2729dj {

    /* renamed from: a */
    private boolean f16639a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2713cu(zzga zzgaVar) {
        super(zzgaVar);
        this.f16804x.m1803f();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final boolean m2147a() {
        return this.f16639a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b */
    public final void m2146b() {
        if (!m2147a()) {
            throw new IllegalStateException("Not initialized");
        }
    }

    /* renamed from: c */
    protected abstract boolean mo1734c();

    /* renamed from: d */
    protected void mo1883d() {
    }

    public final void zzx() {
        if (this.f16639a) {
            throw new IllegalStateException("Can't initialize twice");
        } else if (!mo1734c()) {
            this.f16804x.m1802g();
            this.f16639a = true;
        }
    }

    public final void zzy() {
        if (!this.f16639a) {
            mo1883d();
            this.f16804x.m1802g();
            this.f16639a = true;
            return;
        }
        throw new IllegalStateException("Can't initialize twice");
    }
}
