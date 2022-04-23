package com.google.firebase.iid;

import android.os.Bundle;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.firebase.iid.ar */
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/ar.class */
public final class C3204ar implements Continuation<Bundle, String> {

    /* renamed from: a */
    private final /* synthetic */ C3203aq f19099a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3204ar(C3203aq aqVar) {
        this.f19099a = aqVar;
    }

    @Override // com.google.android.gms.tasks.Continuation
    public final /* synthetic */ String then(Task<Bundle> task) {
        return C3203aq.m518a(task.getResult(IOException.class));
    }
}
