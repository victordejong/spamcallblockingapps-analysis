package com.google.firebase.iid;

import android.util.Log;
import android.util.Pair;
import androidx.p026b.C0529a;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import java.util.Map;
import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.firebase.iid.r */
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/r.class */
public final class C3227r {

    /* renamed from: a */
    private final Executor f19135a;

    /* renamed from: b */
    private final Map<Pair<String, String>, Task<AbstractC3185a>> f19136b = new C0529a();

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3227r(Executor executor) {
        this.f19135a = executor;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ Task m459a(Pair pair, Task task) {
        synchronized (this) {
            this.f19136b.remove(pair);
        }
        return task;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public final Task<AbstractC3185a> m458a(String str, String str2, AbstractC3228s sVar) {
        synchronized (this) {
            final Pair pair = new Pair(str, str2);
            Task<AbstractC3185a> task = this.f19136b.get(pair);
            if (task != null) {
                if (Log.isLoggable("FirebaseInstanceId", 3)) {
                    String valueOf = String.valueOf(pair);
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 29);
                    sb.append("Joining ongoing request for: ");
                    sb.append(valueOf);
                    Log.d("FirebaseInstanceId", sb.toString());
                }
                return task;
            }
            if (Log.isLoggable("FirebaseInstanceId", 3)) {
                String valueOf2 = String.valueOf(pair);
                StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf2).length() + 24);
                sb2.append("Making new request for: ");
                sb2.append(valueOf2);
                Log.d("FirebaseInstanceId", sb2.toString());
            }
            Task continueWithTask = sVar.mo457a().continueWithTask(this.f19135a, new Continuation(this, pair) { // from class: com.google.firebase.iid.t

                /* renamed from: a */
                private final C3227r f19137a;

                /* renamed from: b */
                private final Pair f19138b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f19137a = this;
                    this.f19138b = pair;
                }

                @Override // com.google.android.gms.tasks.Continuation
                public final Object then(Task task2) {
                    return this.f19137a.m459a(this.f19138b, task2);
                }
            });
            this.f19136b.put(pair, continueWithTask);
            return continueWithTask;
        }
    }
}
