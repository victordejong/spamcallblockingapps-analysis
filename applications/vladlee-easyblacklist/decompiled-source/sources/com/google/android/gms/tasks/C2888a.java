package com.google.android.gms.tasks;
/* renamed from: com.google.android.gms.tasks.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/a.class */
final class C2888a extends CancellationToken {

    /* renamed from: a */
    private final C2908v<Void> f17380a = new C2908v<>();

    /* renamed from: a */
    public final void m1578a() {
        this.f17380a.m1555b((C2908v<Void>) null);
    }

    @Override // com.google.android.gms.tasks.CancellationToken
    public final boolean isCancellationRequested() {
        return this.f17380a.isComplete();
    }

    @Override // com.google.android.gms.tasks.CancellationToken
    public final CancellationToken onCanceledRequested(OnTokenCanceledListener onTokenCanceledListener) {
        this.f17380a.addOnSuccessListener(new C2889b(onTokenCanceledListener));
        return this;
    }
}
