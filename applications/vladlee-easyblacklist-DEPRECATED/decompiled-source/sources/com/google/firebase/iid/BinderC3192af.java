package com.google.firebase.iid;

import android.os.Binder;
import android.os.Process;
import android.util.Log;
/* renamed from: com.google.firebase.iid.af */
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/af.class */
public final class BinderC3192af extends Binder {

    /* renamed from: a */
    private final zzc f19068a;

    /* renamed from: a */
    public final void m528a(C3190ad adVar) {
        if (Binder.getCallingUid() == Process.myUid()) {
            if (Log.isLoggable("EnhancedIntentService", 3)) {
                Log.d("EnhancedIntentService", "service received new intent via bind strategy");
            }
            if (Log.isLoggable("EnhancedIntentService", 3)) {
                Log.d("EnhancedIntentService", "intent being queued for bg execution");
            }
            this.f19068a.f19165a.execute(new RunnableC3191ae(this, adVar));
            return;
        }
        throw new SecurityException("Binding only allowed within app");
    }
}
