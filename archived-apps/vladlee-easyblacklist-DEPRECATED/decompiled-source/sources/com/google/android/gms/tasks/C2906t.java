package com.google.android.gms.tasks;
/* renamed from: com.google.android.gms.tasks.t */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/t.class */
final class C2906t implements OnTokenCanceledListener {

    /* renamed from: a */
    private final /* synthetic */ TaskCompletionSource f17419a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2906t(TaskCompletionSource taskCompletionSource) {
        this.f17419a = taskCompletionSource;
    }

    @Override // com.google.android.gms.tasks.OnTokenCanceledListener
    public final void onCanceled() {
        C2908v vVar;
        vVar = this.f17419a.f17368a;
        vVar.m1560a();
    }
}
