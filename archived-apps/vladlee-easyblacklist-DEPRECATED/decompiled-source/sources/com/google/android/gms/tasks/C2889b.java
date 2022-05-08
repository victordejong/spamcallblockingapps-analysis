package com.google.android.gms.tasks;
/* renamed from: com.google.android.gms.tasks.b */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/b.class */
final class C2889b implements OnSuccessListener<Void> {

    /* renamed from: a */
    private final /* synthetic */ OnTokenCanceledListener f17381a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2889b(OnTokenCanceledListener onTokenCanceledListener) {
        this.f17381a = onTokenCanceledListener;
    }

    @Override // com.google.android.gms.tasks.OnSuccessListener
    public final /* synthetic */ void onSuccess(Void r3) {
        this.f17381a.onCanceled();
    }
}
