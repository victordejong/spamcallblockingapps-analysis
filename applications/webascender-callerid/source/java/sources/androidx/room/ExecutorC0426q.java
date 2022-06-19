package androidx.room;

import java.util.ArrayDeque;
import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.room.q */
/* loaded from: classes-dex2jar.jar:androidx/room/q.class */
public class ExecutorC0426q implements Executor {

    /* renamed from: f */
    private final Executor f2246f;

    /* renamed from: g */
    private final ArrayDeque<Runnable> f2247g = new ArrayDeque<>();

    /* renamed from: h */
    private Runnable f2248h;

    /* renamed from: androidx.room.q$a */
    /* loaded from: classes-dex2jar.jar:androidx/room/q$a.class */
    class RunnableC0427a implements Runnable {

        /* renamed from: f */
        final /* synthetic */ Runnable f2249f;

        RunnableC0427a(Runnable runnable) {
            ExecutorC0426q.this = r4;
            this.f2249f = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f2249f.run();
            } finally {
                ExecutorC0426q.this.m4767a();
            }
        }
    }

    public ExecutorC0426q(Executor executor) {
        this.f2246f = executor;
    }

    /* renamed from: a */
    void m4767a() {
        synchronized (this) {
            Runnable poll = this.f2247g.poll();
            this.f2248h = poll;
            if (poll != null) {
                this.f2246f.execute(poll);
            }
        }
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        synchronized (this) {
            this.f2247g.offer(new RunnableC0427a(runnable));
            if (this.f2248h == null) {
                m4767a();
            }
        }
    }
}
