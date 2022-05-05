package com.google.firebase.iid;

import android.util.Log;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.firebase.iid.ae */
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/ae.class */
public final class RunnableC3191ae implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ C3190ad f19066a;

    /* renamed from: b */
    private final /* synthetic */ BinderC3192af f19067b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC3191ae(BinderC3192af afVar, C3190ad adVar) {
        this.f19067b = afVar;
        this.f19066a = adVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzc unused;
        if (Log.isLoggable("EnhancedIntentService", 3)) {
            Log.d("EnhancedIntentService", "bg processing of the intent starting now");
        }
        unused = this.f19067b.f19068a;
        this.f19066a.m529a();
    }
}
