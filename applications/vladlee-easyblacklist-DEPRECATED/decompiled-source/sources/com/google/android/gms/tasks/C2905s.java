package com.google.android.gms.tasks;

import java.util.ArrayDeque;
import java.util.Queue;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.tasks.s */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/s.class */
public final class C2905s<TResult> {

    /* renamed from: a */
    private final Object f17416a = new Object();

    /* renamed from: b */
    private Queue<AbstractC2904q<TResult>> f17417b;

    /* renamed from: c */
    private boolean f17418c;

    /* renamed from: a */
    public final void m1562a(Task<TResult> task) {
        AbstractC2904q<TResult> poll;
        synchronized (this.f17416a) {
            if (this.f17417b != null && !this.f17418c) {
                this.f17418c = true;
                while (true) {
                    synchronized (this.f17416a) {
                        poll = this.f17417b.poll();
                        if (poll == null) {
                            this.f17418c = false;
                            return;
                        }
                    }
                    poll.mo1563a(task);
                }
            }
        }
    }

    /* renamed from: a */
    public final void m1561a(AbstractC2904q<TResult> qVar) {
        synchronized (this.f17416a) {
            if (this.f17417b == null) {
                this.f17417b = new ArrayDeque();
            }
            this.f17417b.add(qVar);
        }
    }
}
