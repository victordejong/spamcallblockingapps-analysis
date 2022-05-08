package com.google.firebase.iid;

import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/FcmBroadcastProcessor$$Lambda$3.class */
public final /* synthetic */ class FcmBroadcastProcessor$$Lambda$3 implements Continuation {
    static final Continuation $instance = new FcmBroadcastProcessor$$Lambda$3();

    private FcmBroadcastProcessor$$Lambda$3() {
    }

    @Override // com.google.android.gms.tasks.Continuation
    public final Object then(Task task) {
        return FcmBroadcastProcessor.lambda$bindToMessagingService$3$FcmBroadcastProcessor(task);
    }
}
