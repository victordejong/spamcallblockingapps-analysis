package p193e.p194a.p682e.p683a;

import com.google.android.gms.common.util.concurrent.NamedThreadFactory;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.messaging.FirebaseMessaging;
import e.m.d.y.w;
import e.m.d.y.x;
import java.util.concurrent.Executors;
/* renamed from: e.a.e.a.e1 */
/* loaded from: classes15-dex2jar.jar:e/a/e/a/e1.class */
public final /* synthetic */ class C12716e1 implements Continuation {

    /* renamed from: a */
    public static final /* synthetic */ C12716e1 f37066a = new C12716e1();

    @Override // com.google.android.gms.tasks.Continuation
    public final Object then(Task task) {
        Task task2;
        int i = View$OnClickListenerC12763k3.f37157s0;
        if (task.m38519s()) {
            FirebaseMessaging m38318c = FirebaseMessaging.m38318c();
            if (m38318c.f7035b != null) {
                TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
                m38318c.f7041h.execute(new w(m38318c, taskCompletionSource));
                task2 = taskCompletionSource.f6493a;
            } else if (m38318c.m38314g() == null) {
                task2 = Tasks.m38509f(null);
            } else {
                TaskCompletionSource taskCompletionSource2 = new TaskCompletionSource();
                Executors.newSingleThreadExecutor(new NamedThreadFactory("Firebase-Messaging-Network-Io")).execute(new x(m38318c, taskCompletionSource2));
                task2 = taskCompletionSource2.f6493a;
            }
        } else {
            task.m38524n();
            task2 = null;
        }
        return task2;
    }
}
