package com.google.firebase.messaging;

import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.firebase.iid.InstanceIdResult;
/* loaded from: classes-dex2jar.jar:com/google/firebase/messaging/FirebaseMessaging$$Lambda$1.class */
final /* synthetic */ class FirebaseMessaging$$Lambda$1 implements Continuation {
    static final Continuation $instance = new FirebaseMessaging$$Lambda$1();

    private FirebaseMessaging$$Lambda$1() {
    }

    @Override // com.google.android.gms.tasks.Continuation
    public final Object then(Task task) {
        String token;
        token = ((InstanceIdResult) task.mo10786j()).getToken();
        return token;
    }
}
