package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzgr.class */
public abstract class zzgr extends zzgo {

    /* renamed from: b */
    private boolean f9360b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgr(zzfv zzfvVar) {
        super(zzfvVar);
        this.f9354a.m11361l(this);
    }

    /* renamed from: m */
    protected void mo10953m() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: n */
    public final void m11310n() {
        if (!m11307r()) {
            throw new IllegalStateException("Not initialized");
        }
    }

    /* renamed from: o */
    public final void m11309o() {
        if (this.f9360b) {
            throw new IllegalStateException("Can't initialize twice");
        } else if (!mo10948q()) {
            this.f9354a.m11353t();
            this.f9360b = true;
        }
    }

    /* renamed from: p */
    public final void m11308p() {
        if (!this.f9360b) {
            mo10953m();
            this.f9354a.m11353t();
            this.f9360b = true;
            return;
        }
        throw new IllegalStateException("Can't initialize twice");
    }

    /* renamed from: q */
    protected abstract boolean mo10948q();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: r */
    public final boolean m11307r() {
        return this.f9360b;
    }
}
